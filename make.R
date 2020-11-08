#' Install Dependencies and Re-knit all R Markdown Slides
#'
#' See `DESCRIPTION` and `README.md` files for further informations.
#'
#' @usage source("make.R")
#'
#' @author Nicolas CASAJUS, \email{nicolas.casajus@@fondationbiodiversite.fr}
#' @date 2020/11/08



## Install {remotes} Package (if required)                                  ----
if (!("remotes" %in% installed.packages())) install.packages("remotes")


## Install Missing Packages (listed in DESCRIPTION)                         ----
remotes::install_deps(upgrade = "never")


## Attach Required Packages and Load R Functions                            ----
devtools::load_all(quiet = TRUE)


## Re-knit COURSES                                                          ----

knit_slides(label = "docker")
knit_slides(label = "drake", pdf = TRUE)
knit_slides(label = "intro-api")
knit_slides(label = "intro-git")
knit_slides(label = "open-sci", pdf = TRUE)
knit_slides(label = "r-pkg")
knit_slides(label = "r-spatial", pdf = TRUE)
knit_slides(label = "res-compendium")
knit_slides(label = "rmarkdown")
knit_slides(label = "take-home")
knit_slides(label = "tidyverse")

knit_slides(home = TRUE)
