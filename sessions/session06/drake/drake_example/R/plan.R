

plan <- drake_plan(
  #### get data ####
  # Wildfinder data
  wf_ursidae_raw = get_ursidae(),
  wf_ecoregions = get_ecoregions(),
  wf_sp_eco = get_sp_eco(),
  # pantheria data
  pan_ursidae_raw = get_pantheria_ursidae(),
  
  #### correct names ####
  # Check and correct species names
  wf_ursidae = correct_wf(wf_ursidae_raw),
  pan_ursidae = correct_panteria(pan_ursidae_raw),
  
  #### wrangle dataframes ####
  # combine 
  ursidae_eco = combine_sp_eco(wf_ursidae, wf_sp_eco, wf_ecoregions),
  # summarize
  ursidae_spread = get_spread(ursidae_eco),
  # combine pantheria with region data
  ursidae_combined = left_join(ursidae_spread, pan_ursidae),
  
  #### plots ####
  necoregions_plot  = plot_necoregions(ursidae_spread),
  gestation_plot = plot_gestation(ursidae_combined),
  
  worldmap = get_worldmap(ursidae_eco),
  
  #### report ####
  report = rmarkdown::render(
    knitr_in("text/report.Rmd"),
    output_file = file_out("output/text/report.html"),
    quiet = FALSE,
    output_dir = "output/text/"
  )
)





