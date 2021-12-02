# R/my_functions.R

# packages
library(ggplot2)
library(targets)
library(dplyr)
library(cranlogs)
library(fishualize)

# functions
make_my_table <- function(downloads){
  group_by(downloads, package) %>%
    summarize(mean_downloads = mean(count))
}

# make_my_plot <- function(downloads){
#   ggplot(downloads) +
#     geom_line(aes(x = date, y = count, group = package,
#                   color = package))
# }

make_my_plot <- function(downloads){
  ggplot(downloads) +
    geom_line(aes(x = date, y = count, group = package, color = package)) +
    scale_color_fish_d() +
    theme_minimal()
}
