#' @title Make Analysis Project Template
#' @description Create a new analysis project template in RStudio.
#' @param path The path to the new project.
#' @export
#' @examples
#' try(make_project_template("path/to/new/project"))
#' @importFrom usethis create_project
make_project_template <- function(path, git, renv) {

  # stop if no path is provided
  if (path == "") {
    stop("You must provide a path for the new project.")
  }

  # create the project
  usethis::create_project(path, open = FALSE)

  # create the necessary directories
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # create the data subdirectory
  dir.create(file.path(path, "data"), recursive = TRUE, showWarnings = FALSE)

  # copy data file to the project
  data_source <- system.file("extdata", "datafile.tsv", package = "AnalysisTemplate")
  data_dest <- file.path(path, "data", "datafile.tsv")
  file.copy(data_source, data_dest, overwrite = TRUE)

  # create the outputs subdirectory
  dir.create(file.path(path, "outputs"), recursive = TRUE, showWarnings = FALSE)

  # copy the script to the project
  script_source <- system.file("extdata", "script.R", package = "AnalysisTemplate")
  script_dest <- file.path(path, "R", "script.R")
  file.copy(script_source, script_dest, overwrite = TRUE)

  # initialize git repository
  if (git) {
    git2r::init(path)
  }

  # set up renv package management
  if (renv) {
    renv::init(project=path,
               repos=c(CRAN="https://cloud.r-project.org"))
    renv::snapshot(project=path)
    writeLines(c('options(repos = c(CRAN="https://cloud.r-project.org/"))',
                 readLines(file.path(path, ".Rprofile"))),
               file.path(path, ".Rprofile"))
  }
}
