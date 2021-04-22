library(tidyverse)
dat <- readRDS("data.rds")
lemmas <- names(dat)

# lemma <- "hachelijk"
# 
# imap_dfr(dat[[lemma]]$medoidCoords, cws4medoid) %>% 
#   select(medoid, cluster, max_coverage) %>% distinct %>% 
#   ggplot() +
#   geom_col(aes(x = medoid, y = max_coverage, fill = cluster), position = "dodge") +
#   colorblindr::scale_fill_OkabeIto(use_black = TRUE, na.value = "gray") +
#   ylim(c(0, 1)) +
#   coord_flip()
# 
cws4medoid <- function(medoidModel, medoidName = NULL) {
  cluster_sizes <- medoidModel$coords %>% count(cluster) %>% deframe
  
  allcws <- medoidModel$cws %>% 
    filter(cluster != "0") %>% 
    mutate(size = cluster_sizes[cluster]) %>% split(f = .$cluster)
  
  bestcws <- imap_dfr(allcws, function(clustercws, clusn) {
    perfect <- clustercws %>% filter(Fscore == 1) %>% pull(cw)
    almostPerfect <- clustercws %>% filter(Fscore < 1,
                                           precision > 0.9,
                                           (recall > 0.9 | size-TP < 3)) %>%
      pull(cw)
    leaders <- clustercws %>% filter(!cw %in% c(perfect, almostPerfect),
                                     TP > 2,
                                     precision > 0.9 | (precision > 0.5 & recall > 0.5)) %>%
      arrange(desc(recall)) %>% 
      pull(cw)
    combined <- if (length(leaders) > 0) leaders[[1]] else vector("character")
    if (length(leaders) > 1) {
      for (cw in leaders[-1]) {
        remaining <- medoidModel$coords %>% 
          mutate(hasCw = map_lgl(cws, ~length(intersect(.x, c(perfect, almostPerfect, combined))) > 0)) %>% 
          filter(!hasCw) 
        forNewCounts <- remaining %>% 
          mutate(hasCw = map_lgl(cws, has_element, cw),
                 isCluster = cluster == clusn) %>% 
          xtabs(~ hasCw + isCluster, data = .)
        
        if("TRUE" %in% row.names(forNewCounts) & length(colnames(forNewCounts)) == 2) {
          precision <- forNewCounts["TRUE", "TRUE"]/sum(forNewCounts["TRUE",])
          recall <- forNewCounts["TRUE", "TRUE"]/sum(forNewCounts[,"TRUE"])
          nonrecall <- forNewCounts["FALSE", "TRUE"]
          
          if (precision > 0.5 & (recall > 0.8 | nonrecall <= 3)) combined <<- c(combined, cw)  
        }
        
      }
    }
    thisClus <- medoidModel$coords %>% filter(cluster == clusn)
    tribble(
      ~category, ~cws,
      "perfect", perfect,
      "almost perfect", almostPerfect,
      "combined", combined,
    ) %>%
      mutate(n = map_dbl(cws, length),
             coverage = map_dbl(cws, calcCoverage, df = thisClus),
             cluster = clusn,
             max_coverage = calcCoverage(thisClus, c(perfect, almostPerfect, combined)))
  })
  if (!is.null(medoidName)) mutate(bestcws, medoid = medoidName) else bestcws
}

calcCoverage <- function(df, cwlist){
  if (length(cwlist) == 0) return(0)
 counts <- df %>% 
    mutate(hasCw = map_lgl(cws, ~length(intersect(.x, cwlist)) > 0)) %>% 
    count(hasCw) %>% deframe()
  res <- counts["TRUE"]/sum(counts)
  if (is.na(res)) {print(cwlist); print(counts["TRUE"])}
  return(res)
}

# Run ----
# allsummarized <- imap_dfr(dat, ~mutate(imap_dfr(.x$medoidCoords, cws4medoid), lemma = .y))
# allsummarized %>% 
#   select(lemma, medoid, cluster, max_coverage) %>% distinct %>% 
#   mutate(coverage = case_when(
#     max_coverage < 0.1 ~ "none",
#     max_coverage > 0.9 ~ "very good",
#     max_coverage > 0.7 ~ "decent",
#     TRUE ~ "mediocre"
#   ),
#   coverage = fct_relevel(coverage, c("none", "mediocre", "decent", "very good"))) %>% 
#   ggplot(aes(x = lemma, fill = coverage)) +
#   geom_bar() +
#   coord_flip()
