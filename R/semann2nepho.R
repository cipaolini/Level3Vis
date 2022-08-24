# Functions I want from semann2nepho

tsv <- function (...) 
{
  paste(..., "tsv", sep = ".")
}

focdists_from_csv <- function (input_directory, filename) {
  input_file = file.path(input_directory, filename)
  focdists <- suppressMessages(readr::read_tsv(input_file, show_col_types = FALSE)) %>%
    data.frame(row.names = "...1") %>% 
    as.matrix()
  dimnames(focdists)[2] <- dimnames(focdists)[1]
  focdists
}

format_cws <- function(cws, clusn, relevant_cws) {
  relevant <- relevant_cws %>% filter(cw %in% cws, cluster == as.character(clusn)) %>% pull(cw) 
  nonrelevant <- setdiff(cws, relevant)
  paste(c(paste0("<b>", relevant, "</b>"), nonrelevant), collapse = "<br>")
}

info <- function(word, is_relevant, cwinfo, focdists){
  if (!is_relevant) {
    return("")
  }
  
  info <- dplyr::filter(cwinfo, cw == word)
  nearestNeighbors <- head(sort(focdists[word, setdiff(colnames(focdists), word)]), 5)
  nn <- paste0(names(nearestNeighbors), ": ", round(nearestNeighbors, 2), collapse = "<br>")
  glue::glue("{word}<br>F: {info$TP}, R: {round(info$recall, 2)}, P: {round(info$precision, 2)}, <br>{nn}")
}

matrix2heatmap <- function(df, removeNoise, distances) {
  # transformed <- transformMats(focdists())
  
  cwlist <- df %>% filter(cluster != "0" | !removeNoise) %>% arrange(cluster) %>% pull(cw)
  clusters <- select(df, cw, cluster) %>% deframe
  
  expand.grid(x = cwlist, y = cwlist, stringsAsFactors = FALSE) %>% as_tibble() %>% 
    mutate(
      orig_distance = map2_dbl(x, y, ~distances[.x, .y]),
      # tr_distance = map2_dbl(x, y, ~transformed[.x, .y]),
      cluster_x = as.integer(clusters[x]),
      cluster_y = as.integer(clusters[y]),
      color_x = map_chr(cluster_x, mapClusColor),
      color_y = map_chr(cluster_y, mapClusColor),
      x_label = glue::glue("<span style='color:{color_x};'>{x}</span>"),
      y_label = glue::glue("<span style='color:{color_y};transform:rotate(90deg);'>{y}</span>")
    )
}

mapClusColor <- function(x) {
  if (x == 0) {
    '#9b9c9fB3'
  } else if (x >= length(palette_OkabeIto_black)) {
    '#9b9c9f'
  } else {
    palette_OkabeIto_black[[x]]  
    }
    
}

