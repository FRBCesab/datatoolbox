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

# datatoolbox::knit_slides(name = "docker")
# datatoolbox::knit_slides(name = "drake")
# datatoolbox::knit_slides(name = "intro-git")
# datatoolbox::knit_slides(name = "r-pkg")
# datatoolbox::knit_slides(name = "res-compendium")
# datatoolbox::knit_slides(name = "rmarkdown")
# datatoolbox::knit_slides(name = "take-home")
# datatoolbox::knit_slides(name = "tidyverse")
# datatoolbox::knit_slides(name = "renv")



## Re-knit Website ----

rmarkdown::render_site("docs")
