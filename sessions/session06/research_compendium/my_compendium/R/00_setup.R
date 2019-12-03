#################################################
#
# My Compendium
#
# 00_setup.R
#
# libraries and global variables
#
# francois.guilhaumon@ird.fr
#################################################

#################################################
#
# Librairies
#
#################################################

cran_packages <- c(
  "devtools",
  "here",
  "parallel",
  "dplyr",
  "crayon",
  "sf",
  "mgcv",
  "ggplot2",
  "stringr",
  "rcdd",
  "betapart",
  "lmerTest",
  "FactoMineR",
  "geometry"
)

n_i_p <- cran_packages[!(cran_packages %in% installed.packages())]

lapply(n_i_p, install.packages, dependencies = TRUE)

if (!("emo" %in% installed.packages())) {
  
  devtools::install_github("hadley/emo")
  
}

if (sum(unlist(lapply(cran_packages, require, character.only = TRUE))) == length(cran_packages)) {
  
  cat("\n", emo::ji("computer"), ">>> All packages loaded !\n")
  
} else {
  
  cat("\n", emo::ji("warning"), ">>> Some packages failed to load !\n")
  
}


#################################################
#
# Create results folders
#
#################################################


script_names <- list.files(path = file.path("R"), pattern = "^[0-9]{2}.+\\.R$")
script_names <- script_names[-1]
dir_names    <- gsub("\\.R", "", script_names)
dir_vars     <- stringr::str_extract(dir_names, "^[0-9]{2}[a-z]?")
dir_vars     <- paste0("res_dir_", dir_vars)

sapply(1:length(dir_names), function(i) {
  
  dir.create(
    path          = file.path("res", dir_names[i]),
    showWarnings  = FALSE,
    recursive     = TRUE
  )
  
  assign(
    x      = dir_vars[i],
    value  = here::here("res", dir_names[i]),
    envir  = .GlobalEnv
  )
})

cat("\n", emo::ji("folder"), ">>> All folders created !\n")

rm(list = c("script_names", "dir_names", "dir_vars", "cran_packages", "n_i_p"))
