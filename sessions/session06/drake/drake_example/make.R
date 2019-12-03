source("R/packages.R")
source("R/functions.R")
source("R/plan.R")


make(plan, verbose = 2)

config <- drake_config(plan)
vis_drake_graph(config, targets_only = TRUE)

