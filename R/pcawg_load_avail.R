

#' List Available Datasets
#'
#' @return a dataframe listing available datasets
#' @export
#'
#' @examples
#' pcawg_available()
pcawg_available <- function(){
  read.csv(system.file(package= "PCAWGmutations", "extdata/projects.tsv"), sep = "\t", header=TRUE, check.names = FALSE)
}

#' Load PCAWG mafs
#'
#' @param cohort abbreviation of PCAWG project. See pcawg_available() for valid values (string)
#'
#' @return MAF object compatible with maftools
#' @export
#'
#' @examples
#' pcawg_load("Biliary-AdenoCA")
pcawg_load <- function(cohort){
  rds = system.file(package = "PCAWGmutations", "extdata", paste0(cohort, ".rds"))
  if(!file.exists(rds)){
    stop("Could not find PCAWG cohort: ", cohort, "\nRun pcawg_available() to list appropriate abbreviations")
  }

  return(readRDS(rds))
}
