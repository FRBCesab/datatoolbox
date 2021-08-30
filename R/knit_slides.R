#' Knit RMarkdown Slides
#'
#' @description
#' This function knits Rmd slides to HTML output (stored in the same folder).
#' All Rmd files need to be named **index.Rmd**.
#'
#' @param name a character of length 1. The course sub-folder name 
#'   (e.g. `"template"`).
#'
#' @export
#' 
#' @return NULL
#'
#' @examples
#' \dontrun{
#' ## Knit course ----
#' knit_slides(name = "template")
#' }


knit_slides <- function(name) {
  
  if (missing(name)) {
    stop("Argument 'name' is required.")
  }
  
  
  if (!dir.exists(here::here("docs", "slides", name))) {
    stop("The folder '", here::here("docs", "slides", name), 
         "' does not exist.")
  }
  
  if (!file.exists(here::here("docs", "slides", name, "index.Rmd"))) {
    stop("The file '", here::here("docs", "slides", name, "index.Rmd"), 
         "' does not exist.")
  }
  
  usethis::ui_todo(paste("Knitting", name, "slides..."))
  
  rmarkdown::render(input         = here::here("docs", "slides", name, 
                                               "index.Rmd"),
                    output_format = "xaringan::moon_reader",
                    output_file   = "index.html",
                    output_dir    = here::here("docs", "slides", name),
                    clean         = TRUE,
                    quiet         = TRUE)

  usethis::ui_done("Done!")
  usethis::ui_line()
  
  invisible(NULL)
}
