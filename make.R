#' Install Dependencies and Re-knit all RMarkdown Slides
#' 
#' @description
#' See `DESCRIPTION` and `README.md` files for further information.
#'
#' @usage source("make.R")
#'
#' @author Nicolas CASAJUS, \email{nicolas.casajus@@fondationbiodiversite.fr}
#' @date 2021/07/15



## Install {remotes} package (if required) ----

if (!("remotes" %in% installed.packages())) install.packages("remotes")



## Install required packages (listed in DESCRIPTION) ----

remotes::install_deps(upgrade = "never")



## Load required packages and R functions ----

devtools::load_all(quiet = TRUE)



## Re-knit courses ----

datatoolbox::knit_slides(label = "docker")
datatoolbox::knit_slides(label = "drake")
datatoolbox::knit_slides(label = "intro-api")
datatoolbox::knit_slides(label = "intro-git")
datatoolbox::knit_slides(label = "open-sci")
datatoolbox::knit_slides(label = "r-pkg")
datatoolbox::knit_slides(label = "r-spatial")
datatoolbox::knit_slides(label = "res-compendium")
datatoolbox::knit_slides(label = "rmarkdown")
datatoolbox::knit_slides(label = "take-home")
datatoolbox::knit_slides(label = "tidyverse")



## Re-knit Website ----

rmarkdown::render_site("docs")
