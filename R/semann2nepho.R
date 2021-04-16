# Functions I want from semann2nepho

tsv <- function (...) 
{
  paste(..., "tsv", sep = ".")
}

focdists_from_csv <- function (input_directory, filename) 
{
  input_file = file.path(input_directory, filename)
  # Vroom is not helpful here because it takes much longer to transform into a matrix
  focdists <- suppressWarnings(readr::read_tsv(input_file, 
                                               col_types = cols())) %>% data.frame(row.names = "X1") %>% 
    as.matrix()
  dimnames(focdists)[2] <- dimnames(focdists)[1]
  return(focdists)
}

format_cws <- function(cws, clusn, relevant_cws) {
  relevant <- relevant_cws %>% filter(cw %in% cws, cluster == as.character(clusn)) %>% pull(cw) 
  nonrelevant <- setdiff(cws, relevant)
  paste(c(paste0("<b>", relevant, "</b>"), nonrelevant), collapse = "<br>")
}

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

matrix2heatmap <- function(df, removeNoise, distances) {
  # transformed <- transformMats(focdists())
  
  cwlist <- df %>% filter(cluster != "0" | !removeNoise) %>% arrange(cluster) %>% pull(cw)
  clusters <- select(df, cw, cluster) %>% deframe
  
  expand.grid(x = cwlist, y = cwlist) %>% as_tibble() %>% 
    mutate(
      x = as.character(x), y = as.character(y),
      orig_distance = map2_dbl(x, y, ~distances[.x, .y]),
      # tr_distance = map2_dbl(x, y, ~transformed[.x, .y]),
      cluster_x = as.integer(clusters[x]),
      cluster_y = as.integer(clusters[y]),
      color_x = colorblindr::palette_OkabeIto[cluster_x+1],
      color_y = colorblindr::palette_OkabeIto[cluster_y+1],
      x_label = glue::glue("<span style='color:{color_x};'>{x}</span>"),
      y_label = glue::glue("<span style='color:{color_y};transform:rotate(90deg);'>{y}</span>")
    )
}

# transformMats <- function (mat, asDist = TRUE) 
# {
#   ranked <- log(1 + log(t(apply(mat, 1, rank))))
#   if (asDist) {
#     return(as.matrix(stats::dist(ranked, diag = T, upper = T)))
#   }
#   else {
#     return(ranked)
#   }
# }
# 
# for (lemma in names(dat)) {
#   print(lemma)
#   ctxts <- semann2nepho::loadCloud("../../qlvl/tokenclouds/data/", lemma, "variables")
#   for (medoidname in names(dat[[lemma]]$medoidCoords)) {
#     print(medoidname)
#     ctxt <- ctxts %>% 
#       select(`_id`, ctxt = str_replace(medoidname, "(.*).LENGTH.*", "_ctxt.\\1"))
#     dat[[lemma]]$medoidCoords[[medoidname]]$coords <- dat[[lemma]]$medoidCoords[[medoidname]]$coords %>%
#       left_join(ctxt, by = "_id")
#   }
# }
# saveRDS(dat, "data.rds")
