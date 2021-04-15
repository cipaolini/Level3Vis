# Functions I want from semann2nepho

tsv <- function (...) 
{
  paste(..., "tsv", sep = ".")
}

focdists_from_csv <- function (input_directory, filename) 
{
  input_file = file.path(input_directory, filename)
  focdists <- suppressWarnings(readr::read_tsv(input_file, 
                                               col_types = readr::cols())) %>% data.frame(row.names = "X1") %>% 
    as.matrix()
  dimnames(focdists)[2] <- dimnames(focdists)[1]
  return(focdists)
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

# for (lemma in names(dat)) {
#   print(lemma)
#   for (medoidname in names(dat[[lemma]]$medoidCoords)) {
#     print(medoidname)
#     if (nrow(dat[[lemma]]$medoidCoords[[medoidname]]$cw_coords) > 90) {
#       focdists <- focdists_from_csv(here::here("shiny", "Level3", "wwmx"), paste0(medoidname, ".wwmx.dist.csv"))
#       set.seed(8541)
#       coords <- Rtsne::Rtsne(focdists, dims = 2, perplexity = 30, is_distance = TRUE)$Y
#       colnames(coords) <- c("x", "y")
#       cw_coords <- as_tibble(coords) %>%
#         mutate(cw = row.names(focdists)) %>% select(cw, x, y)
#       dat[[lemma]]$medoidCoords[[medoidname]]$cw_coords <- cw_coords
#       print(slice(cw_coords, 1))
#     }
#   }
# }
# saveRDS(dat, here::here("shiny", "Level3", "data.rds"))
