source("R/packages.R")
source("R/functions.R")
source("R/plan.R")

config <- drake_config(plan)

make(config = config, verbose = 2, lock_envir = FALSE)

vis_drake_graph(config, targets_only = TRUE)

