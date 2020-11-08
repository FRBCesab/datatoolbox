#' Knit Slides
#'
#' This function re-knits Rmd slides to HTML and PDF outputs (stored in the
#'   same folder). You need to have installed the Google Chrome web browser to
#'   create the PDF version. All the Rmd files need to be named **index.Rmd**.
#'
#' @param label the course/exercise subfolder name (e.g. "intro-git").
#' @param home a boolean. If TRUE, only the Homepage will be re-knit.
#' @param course a boolean. If TRUE, searchs in the "courses" folder otherwise
#'   searchs in the "exercises" folder. Ignore if `home = TRUE`.
#' @param pdf a boolean. If TRUE, converts HTML to PDF.
#'
#' @export
#'
#' @importFrom here here
#' @importFrom pagedown chrome_print
#' @importFrom rmarkdown render
#' @importFrom usethis ui_todo ui_done ui_line
#'
#' @examples
#' \dontrun{
#' # Knit the Homepage ----
#' knit_slides(home = TRUE)
#'
#' # Knit Git course ----
#' knit_slides(label = "intro-git")
#' knit_slides(label = "intro-git", pdf = FALSE)
#'
#' # Knit Git exercise ----
#' knit_slides(label = "intro-git", course = FALSE)
#' knit_slides(label = "intro-git", course = FALSE, pdf = FALSE)
#' }


knit_slides <- function(label, home = FALSE, course = TRUE, pdf = FALSE) {

  if (pdf && (nchar(pagedown::find_chrome()) == 0)) {
    stop("Unable to find Chrome/Chromium web browser.")
  }

  if (home) {

    usethis::ui_todo("Knitting Homepage slides...")

    rmarkdown::render(
      input       = here::here("index.Rmd"),
      output_file = "index.html",
      output_dir  = here::here(),
      clean       = TRUE,
      quiet       = TRUE
    )

    if (pdf) {
      pagedown::chrome_print(
        input  = here::here("index.html"),
        output = here::here("index.pdf")
      )
    }

  } else {


    if (course) {
      level <- "courses"
    } else {
      level <- "exercises"
    }

    usethis::ui_todo(paste("Knitting", label, "slides..."))

    rmarkdown::render(
      input       = here::here(level, label, "index.Rmd"),
      output_file = "index.html",
      output_dir  = here::here(level, label),
      clean       = TRUE,
      quiet       = TRUE
    )

    if (pdf) {
      pagedown::chrome_print(
        input  = here::here(level, label, "index.html"),
        output = here::here(level, label, "index.pdf")
      )
    }
  }

  usethis::ui_done("Done!")
  usethis::ui_line()

  invisible(NULL)
}
