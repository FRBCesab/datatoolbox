#' Install Dependencies and Re-knit all R Markdown Slides
#'
#' See `DESCRIPTION` and `README.md` files for further informations.
#'
#' @usage source("make.R")
#'
#' @author Nicolas CASAJUS, \email{nicolas.casajus@@fondationbiodiversite.fr}
#' @date 2020/11/07



## Install {remotes} Package (if required)                                  ----
if (!("remotes" %in% installed.packages())) install.packages("remotes")


## Install Missing Packages (listed in DESCRIPTION)                         ----
remotes::install_deps(upgrade = "never")


## Attach Required Packages (listed in `Depends` section in DESCRIPTION)    ----
devtools::load_all(quiet = TRUE)


## Re-knit {{ HOMEPAGE }}                                                   ----
rmarkdown::render(
  input       = here::here("index.rmd"),
  output_file = "index.html",
  output_dir  = here::here(),
  clean       = TRUE,
  quiet       = TRUE
)
usethis::ui_done("Knitting Homepage slides")


## Re-knit {{ TAKE HOME }}                                                  ----
rmarkdown::render(
  input       = here::here("courses", "take-home", "index.rmd"),
  output_file = "index.html",
  output_dir  = here::here("courses", "take-home"),
  clean       = TRUE,
  quiet       = TRUE
)
usethis::ui_done("Knitting Take Home slides")


## Re-knit {{ R PACKAGES }}                                                 ----
rmarkdown::render(
  input       = here::here("courses", "r-pkg", "index.rmd"),
  output_file = "index.html",
  output_dir  = here::here("courses", "r-pkg"),
  clean       = TRUE,
  quiet       = TRUE
)
usethis::ui_done("Knitting R Package slides")


## Re-knit {{ DOCKER }}                                                     ----
rmarkdown::render(
  input       = here::here("courses", "docker", "index.rmd"),
  output_file = "index.html",
  output_dir  = here::here("courses", "docker"),
  clean       = TRUE,
  quiet       = TRUE
)
usethis::ui_done("Knitting Docker slides")


## Re-knit {{ GIT }}                                                        ----
rmarkdown::render(
  input       = here::here("courses", "intro-git", "index.rmd"),
  output_file = "index.html",
  output_dir  = here::here("courses", "intro-git"),
  clean       = TRUE,
  quiet       = TRUE
)
usethis::ui_done("Knitting Git slides")


## Re-knit {{ SPATIAL }}                                                        ----
rmarkdown::render(
  input       = here::here("courses", "r-spatial", "index.rmd"),
  output_file = "index.html",
  output_dir  = here::here("courses", "r-spatial"),
  clean       = TRUE,
  quiet       = TRUE
)
usethis::ui_done("Knitting Spatial slides")

## Re-knit {{ API & WEBSCRAPPING }}                                         ----
# rmarkdown::render(
#   input       = here::here("courses", "intro-api", "index.rmd"),
#   output_file = "index.html",
#   output_dir  = here::here("courses", "intro-api"),
#   clean       = TRUE,
#   quiet       = TRUE
# )
# usethis::ui_done("Knitting API & Webscrapping slides")
