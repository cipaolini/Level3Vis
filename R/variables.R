# For other datasets you may want to change these variables

nephovis_link <- function(lemma, model) {
  "#"
}

hdbscan_dir <- here::here("DativeVis", "clustering")

wwmx_dir <- here::here("DativeVis", "wwmx")
lemmas <- dir(wwmx_dir)
n_medoids <- 1
starting_lemma <- "give"

sense_column <- "variant"
