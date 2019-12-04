
get_ursidae <- function(){
  mammals <- read.csv("data/wildfinder-mammals_list.csv")
  result <- filter(mammals, family == "Ursidae") %>%
    mutate_all(as.character)
  return(result)
}


correct_classif <- function(data){
  # collect uids
  uids <- taxize::get_uid(data$sci_name, db = "itis")
  # save classification
  classif <-
    lapply(uids, function(x){
    taxize::classification(x, db = "itis")[[1]] %>%
        filter(rank %in% c("class", "order", "family", "genus",
                           "species")) %>%
        select(name, rank) %>%
        tidyr::pivot_wider(names_from = rank,
                           values_from = name)
    }) %>% bind_rows() %>% 
    rename(sci_name = species) 
  return(classif)
}


get_ecoregions <- function(){
  ecoregions <- read.csv("data/wildfinder-ecoregions_list.csv")
  return(ecoregions)
}

get_sp_eco <- function(){
  sp_eco <- read.csv("data/wildfinder-ecoregions_species.csv")
  return(sp_eco)
}

combine_sp_eco <-  function(species, sp_eco, ecoregions){
  result <- inner_join(sp_eco, species) %>% 
    left_join(ecoregions) %>% drop_na()
  return(result)
}

get_spread <-  function(data){
  result <- group_by(data, sci_name) %>%
    summarize(n_ecoregion = length(unique(ecoregion)),
              n_realm = length(unique(realm)),
              n_biome = length(unique(realm))) %>%
    arrange(desc(n_ecoregion))
  return(result)
}

get_pantheria_ursidae <- function(){
url       <- "http://esapubs.org/archive/ecol/E090/184/"
filename  <- "PanTHERIA_1-0_WR05_Aug2008.txt"

pantheria <- readr::read_delim(file.path(url, filename), delim = "\t") %>%
  mutate(                                    # Conversion de type
    family = (MSW05_Family),
    sci_name = (MSW05_Binomial)
  ) %>%
  
  rename(                                    # Nom des colonnes
    adult_bodymass = `5-1_AdultBodyMass_g`,
    dispersal_age  = `7-1_DispersalAge_d`,
    gestation      = `9-1_GestationLen_d`,
    homerange      = `22-2_HomeRange_Indiv_km2`,
    litter_size    = `16-1_LittersPerYear`,
    longevity      = `17-1_MaxLongevity_m`
  ) %>%
  
  select(                                    # Sélection de colonnes
    sci_name,
    family,
    adult_bodymass,
    dispersal_age,
    gestation,
    homerange,
    litter_size,
    longevity
  ) %>%
  
  na_if(-999) %>%
  filter(family == "Ursidae")
return(pantheria)
}


correct_panteria <- function(data){
result <- correct_classif(data) %>%
  cbind(select(data, adult_bodymass,
               dispersal_age,
               gestation,
               homerange,
               litter_size,
               longevity))
return(result)
}

correct_wf <- function(data){
  result <- correct_classif(data)%>%
  mutate(species_id = as.integer(data$species_id))
  return(result)
  }

plot_necoregions <- function(data){
 plot <- 
   data %>%
    ggplot() +
      aes(x = fct_reorder(sci_name, n_ecoregion), y = n_ecoregion, fill = fct_reorder(sci_name, n_ecoregion)) + # order bars
      geom_col() +
      coord_flip() + # flip the bar chart
      scale_fill_fish_d(option = "Hypsypops_rubicundus") +
      xlab("Species") + # add label for X axis
      ylab("Counts") + # add label for Y axis
      ggtitle("Number of ecoregions per species") + # title 
      theme_bw() +
      theme(legend.position = "none") # no legend

return(plot)
}

plot_gestation <- function(data){
  plot <- 
    data %>%
    ggplot() +
    aes(x = longevity, y = gestation, color = adult_bodymass) +
    geom_point(size = 5) +
    scale_color_fish(option = "Synchiropus_splendidus", direction = -1, trans = "log") +
    geom_smooth(aes(x = longevity, y = gestation), color = "grey", se = FALSE, method = "gam") +
    theme_bw() 

  return(plot)
}






