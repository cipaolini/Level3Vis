#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(ggridges)
source("semann2nepho.R")

dat <- readRDS("data.rds")
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    medoidname <- reactive(names(dat[[input$lemma]]$medoidCoords)[[as.integer(input$medoid)]])
    
    output$medoid <- renderUI({
        a(medoidname(),
          href=glue::glue("https://qlvl.github.io/NephoVis/level3.html?type={input$lemma}&model={medoidname()}"),
          style="color:white;")
    })
    
    medoid <- reactive(dat[[input$lemma]]$medoidCoords[[medoidname()]])
    
    # Load distance matrix
    focdists <- reactive(focdists_from_csv("wwmx", paste0(medoidname(), ".wwmx.dist.csv")))
    
    # Select relevant context words ----
    relevantcws <- reactive({
        pr_filter <- parse(text = glue::glue("recall >= {input$recall} {if (input$operator) '&' else '|'} precision >= {input$precision}"))
        d <- map(medoid()$cws, filter, TP > 2, eval(pr_filter)) %>%
            imap_dfr(~mutate(.data = .x, cluster = .y)) %>%
            arrange(desc(Fscore)) %>% 
            group_by(cw) %>% mutate(reps = seq(n()))
    })
    
    # If a word is "relevant" for more than one cluster choose highest Fscore
    relevantcws_filtered <- reactive({
        relevantcws() %>% 
            filter(reps == 1) %>% 
            select(-reps)
    })

    # Plot tokens ----
    output$tokens <- renderPlotly({
        format_cws <- function(cws, clusn, relevant_cws) {
            relevant <- relevant_cws %>% filter(cw %in% cws, cluster == as.character(clusn)) %>% pull(cw) %>% 
                paste0("<b>", ., "</b>")
            nonrelevant <- setdiff(cws, relevant_cws$cw)
            paste(c(relevant, nonrelevant), collapse = "<br>")
        }
        g <- medoid()$coords %>% 
            mutate(cws = map2_chr(cws, cluster, format_cws, relevantcws_filtered())) %>% 
            ggplot() +
            geom_point(aes(x = model.x, y = model.y, color = cluster, alpha = membprob,
                           text = cws)) +
            theme_void() +
            colorblindr::scale_color_OkabeIto(darken = 0.1) +
            coord_fixed()
        ggplotly(g, tooltip="text")
    })
    
    output$mp <- renderPlot({
        medoid()$coords %>%
            filter(cluster != "0") %>%
            ggplot(aes(x = membprob, y = cluster, fill = sense, color = sense)) +
            geom_density_ridges(
                aes(point_color = sense, point_fill = sense),
                alpha = 0.3, point_alpha = 1, jittered_points = TRUE, scale = 0.9) +
            theme_ridges() +
            labs(y = "Cluster", x = "Membership probability")
    })
    
    # Plot context words ----
    output$focs <- renderPlotly({
        
        clustermapping <- select(relevantcws_filtered(), cw, cluster) %>%
            deframe
        
        info <- function(word, is_relevant, cwinfo, focdists){
            if (is_relevant) {
                info <- filter(cwinfo, cw == word)
                nearestNeighbors <- head(sort(focdists[word, setdiff(colnames(focdists), word)]), 5)
                nn <- paste0(names(nearestNeighbors), ": ", round(nearestNeighbors, 2), collapse = "<br>")
                glue::glue("{word}<br>F: {info$TP}, R: {round(info$recall, 2)}, P: {round(info$precision, 2)}, <br>{nn}")
            } else {
                ""
            }
        }
        
        # From distances to coordinates
        tsne <- medoid()$cw_coords %>% 
            mutate(is_relevant = map_lgl(cw, ~.x %in% relevantcws_filtered()$cw),
                   cluster = map2_chr(cw, is_relevant, function(c, b) {
                       if (b) clustermapping[[c]] else NA_character_
                   }),
                   text = map2_chr(cw, is_relevant, info, cwinfo = relevantcws_filtered(), focdists = focdists()),
                   is_relevant = if_else(is_relevant & (!(input$noise & cluster == "0")), 1, 0))
        g <- ggplot(tsne) +
            geom_text(aes(x = x, y = y, label = cw,
                          alpha = is_relevant, color = cluster,
                          text = text)) +
            theme_void() +
            colorblindr::scale_color_OkabeIto(na.value = "#b2b5b9", order = sort(unique(as.numeric(relevantcws_filtered()$cluster)))+1) +
            coord_fixed()
        ggplotly(g, tooltip = "text") %>% 
            hide_guides()
    })
    
    output$cor <- renderPlotly({
        d <- imap_dfr(medoid()$cws, ~mutate(.data = .x, cluster = .y)) %>% 
            filter(cluster != "0" | !input$noise)
        g <- ggplot(data = d, aes(x = recall, y = precision, color = cluster,
                                  size = TP, text = glue::glue("<b>{cw}</b><br>F: {TP}"))) +
            geom_point() +
            geom_hline(yintercept = input$precision, size = 0.1) +
            geom_vline(xintercept = input$recall, size = 0.1) +
            colorblindr::scale_color_OkabeIto(order = sort(unique(as.numeric(d$cluster))) + 1) +
            theme_bw()
        ggplotly(g, tooltip = "text")
    })
    
    # Plot heatmap of distances ----
    
    heatmap_data <- reactive({
        # transformed <- transformMats(focdists())
        
        cwlist <- relevantcws_filtered() %>% filter(cluster != "0" | !input$noise) %>% arrange(cluster) %>% pull(cw)
        clusters <- select(relevantcws_filtered(), cw, cluster) %>% deframe
        
        
        expand.grid(x = cwlist, y = cwlist) %>% as_tibble() %>% 
            mutate(
                x = as.character(x), y = as.character(y),
                orig_distance = map2_dbl(x, y, ~focdists()[.x, .y]),
                # tr_distance = map2_dbl(x, y, ~transformed[.x, .y]),
                cluster_x = as.integer(clusters[x]),
                cluster_y = as.integer(clusters[y]),
                color_x = colorblindr::palette_OkabeIto[cluster_x+1],
                color_y = colorblindr::palette_OkabeIto[cluster_y+1],
                x_label = glue::glue("<span style='color:{color_x};'>{x}</span>"),
                y_label = glue::glue("<span style='color:{color_y};transform:rotate(90deg);'>{y}</span>")
                )
    })
    tooltip_template <- "<b>x:</b> <em>%s</em><br><b>y:</b> <em>%s</em>; <b>distance: </b> %s"
    
    # output$heatmap_tr <- renderPlotly({
    #     g <- heatmap_data() %>% 
    #         mutate(distance = tr_distance, text = sprintf(tooltip_template, x, y, round(distance, 2))) %>% 
    #         ggplot(aes(x = x_label, y = y_label, fill = distance, text = text)) +
    #         geom_tile() +
    #         labs(x = "", y = "", fill = "Euclidean") 
    #     
    #     ggplotly(g, tooltip = "text", height = 500) %>% 
    #         layout(xaxis = list(tickangle = 90))
    # })
    output$heatmap_or <- renderPlotly({
        g <- heatmap_data() %>% 
            mutate(distance = orig_distance, text = sprintf(tooltip_template, x, y, round(distance, 2))) %>% 
            ggplot(aes(x = x_label, y = y_label, fill = distance, text = text)) +
            geom_tile() +
            labs(x = "", y = "", fill = "Cosine") 
        
        ggplotly(g, tooltip = "text", height = 500) %>% 
            layout(xaxis = list(tickangle = 90))
    })
    
    # Report double relevance or missing plot ----
    output$splitrelevance <- renderUI({
        nodata <- max(medoid()$cw_coords$x) == 0
        if (nodata) {
            return(glue::glue("No t-SNE 30 rendering possible because there are only {nrow(medoid()$cw_coords)} context words left."))
            }
        if (nrow(relevantcws_filtered()) < nrow(relevantcws())) {
            repeated <- relevantcws() %>% filter(reps > 1) %>% 
                pull(cw) %>% unique()
            desc <- map(repeated, function(r) {
                rrow <- relevantcws() %>% filter(cw == r) %>% 
                    mutate(
                        desc = glue::glue("cluster {cluster} with F: {TP}, R: {round(recall, 2)} and P: {round(precision, 2)}")
                        ) %>% 
                    pull(desc) %>% map(tags$li)
                div(span(em(r), "for:"), tags$ul(rrow))
            }) %>% div()
            div(
                p("Some context words are 'relevant' for more than one cluster:"),
                desc)
        } else {
                p("All relevant context words are only relevant for one cluster.")
        }
    })
    
    
    # Extra info
    output$tokendata <- renderMenu({
        surviving_tokens <- nrow(medoid()$coords)
        total_tokens <- nrow(dat[[input$lemma]]$senses)
        noise_tokens <- nrow(filter(medoid()$coords, cluster == "0"))
        n_FOC <- nrow(medoid()$cw_coords)
        
        dropdownMenu(
            headerText = "Some more info",
            type = "notifications", badgeStatus = "success",
            icon = icon("info-circle"),
            notificationItem(text = glue::glue("{surviving_tokens} of {total_tokens} tokens plotted."),
                icon = icon("cloud"),status = "primary"),
            notificationItem(text = glue::glue("{noise_tokens} tokens are noise."),
                             icon = icon("ban"),status = "danger"),
            notificationItem(text = glue::glue("{n_FOC} context words plotted."),
                             icon = icon("cloud"),status = "success")
            )
    })
})
