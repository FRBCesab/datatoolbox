#################################################
#
# My Compendium
#
# make.R
#
# francois.guilhaumon@ird.fr
#################################################

##################
# clean workspace
##################
rm(list = ls())

##################
# 00_setup.R
##################
source("R/00_setup.R")

##################
# 01_ingest_data.R
##################
source("R/01_ingest_data.R")

##################
# 02_analyses_1.R
##################
source("R/02_analyses_1.R")

##################
# 03_analyses_2.R
##################
source("R/03_analyses_2.R")

##################
# Knit the README
##################
rmarkdown::render("README.Rmd")

##################
# Knit the PAPER
##################
rmarkdown::render(file.path("manuscript","my_paper.Rmd"))
