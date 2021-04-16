library(shiny)
library(shinydashboard)
desc_panel <- tabItem(tabName = "description",
                       fluidRow(
                         column(width = 6,
                                box(width = NULL,
                                    title = "t-SNE panel: first row", status = "success",
                                    p("Two scatterplots, representing
                          t-SNE solutions (perplexity 30) of a token-level cloud and of the first order
                          context words captured by that model."),
                                    p("For tokens the distance matrix used is a log-transformation of the
                          rowwise ranks of the cosine distances,
              while for FOCs no transformation was peformed."),
                                    p("The color coding corresponds to HDBSCAN (minimum points = 8) on the transformed
                          distances between the tokens. The transparency in the token-level cloud
                          corresponds to the membership probability of the token to the cluster."),
                                    p("For tokens, the tooltip shows the list of context words captured by the model; those in bold are 'relevant' for the cluster."),
                                    p("Context words are colored by the (HDBSCAN token) cluster they represent the most, in terms of frequency, precision and recall.
    Non representative context words are weaker and in gray."),
                                    div(
                                      p("For relevant context words, the tooltip shows the word followed by:", strong("F"), " = frequency (in the cluster); ",
                                        strong("P"), " = precision;",
                                        strong("R"), " = recall; then 5 nearest neighbors and their cosine distances follow."),
                                      p("For non 'relevant' FOCs, only the context word is shown."),
                                      p("If the same context word is 'relevant' for more than one cluster,
                                      the cluster for which the F-score is highest is selected and the rest
                                      are reported in ", em("Messages"), ".")
                                    )
                                ),
                                box(title = "t-SNE panel: second row", status = "success", width = NULL,
                                    p("For the tokens, a table with the concordance lines, highlighting the context words
                                      captured by the model (and adding, for PPMIweight models, their PPMI value).
                                      The rows are colored by clusters and it is possible to search by context word."),
                                    p("For the context words, a scatterplot mapping recall and precision values in relation
              to the clusters; the precision and recall thresholds are indicated with a horizontal and vertical line respectively."),
                                    p("The dots are colored by cluster matching the plots of the first row, their frequency in the cluster
              is mapped to the size and the tooltip shows the context word and its frequency."),
                                    p("By clicking on a dot, the tokens with which it co-occurs are highlighted in the first t-SNE plot,
                     overriding the mapping between opacity and membership probability, and the table of contexts is filtered. Double-click on an empty area
                     resets the highlight."))
                         ),
                         column(width = 6,
                                box(
                                  title = "Heatmap", status = "success", width = NULL,
                                  p("Heatmap of pairwise distances between the 'relevant' first order context words captured by that model."),
                                  p("The colors match the cluster that the context words best represent.")
                                ),
                                box(
                                  title = "Membership probabilities", status = "success", width = NULL,
                                  p("A density plot of the membership probabilities per cluster,
              color coded by sense, and a barplot of the proportions of noise tokens", em("for all medoids"), ".")
                                ),
                                box(
                                  title = "Messages", status = "success", width = NULL,
                                  p("In case some context words survive the filters for more than one cluster,
      all the clusters for which that is the case are reported in this section.")
                                ),
                                box(title = "Sidebar", background = "green", width = NULL,
                                    h4("Ignore noise cluster"),
                                    p("This toggle button allows us to hide the context words linked to the noise tokens in the t-SNE
              representation of FOCs, the scatterplot mapping recall and precision and the heatmap."),
                                    h4("Alpha"),
                                    p("Set the mapping between membership probabilities and opacity of the tokens in the first t-SNE plot.",
                                      strong("Scaled"), " means that the opacity is scaled to the range of values in that medoid, while ",
                                      strong("= MP"), " applies the exact membership probability as opacity, rendering noise tokens invisible."),
                                    h4("Define relevance"),
                                    p("Sliders to fix the recall and precision thresholds to consider a context word 'relevant' for a cluster."),
                                    p("In addition, a toggle button in between allows us to decide between and AND or OR relationship between the filters."),
                                    p("The frequency threshold of 2 is fixed (but a slider for it could be added).")
                                ),
                                infoBox("Extra!", "Click on the info icon on the upper right corner to find
                    extra information on the selected medoid!", icon = icon("exclamation-triangle"),
                                        color = "yellow", fill=TRUE, width = 12)
                         )
                       ))