library(targets)
source("R/my_functions.R")
list(
  # load data
  tar_target(crandata_new, cran_downloads(
    packages = c("dplyr", "ggplot2", "purrr", "tidyr", "stringr"),
    from = "2019-11-01", to = "2019-12-01")),
  tar_target(crandata_old, cran_downloads(
    packages = c("dplyr", "ggplot2", "purrr", "tidyr", "stringr"),
    from = "2016-11-01", to = "2016-12-01")),
  # make tables
  tar_target(averages_new, make_my_table(crandata_new)),
  tar_target(averages_old, make_my_table(crandata_old)),
  # make plots
  tar_target(plot_new, make_my_plot(crandata_new)),
  tar_target(plot_old, make_my_plot(crandata_old)),
  # combine
  tar_target(averages_combined, left_join(averages_old, averages_new, by = "package"))
)
