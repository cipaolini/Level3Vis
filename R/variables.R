# For other datasets you may want to change these variables

nephovis_link <- function(lemma, model) {
  glue::glue("https://qlvl.github.io/NephoVis/level3.html?type={lemma}&model={model}")
}

hdbscan_dir <- here::here("cloudspotting-medoids", "hdbscan")

wwmx_dir <- here::here("cloudspotting-medoids", "wwmx")
lemmas <- dir(wwmx_dir)
n_medoids <- 8
starting_lemma <- "heffen"

sense_column <- "collapsed_sense"
