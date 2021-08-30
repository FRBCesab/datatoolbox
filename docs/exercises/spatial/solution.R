library(sf)
library(readr)
library(dplyr)
library(ggplot2)

wf_eco <- read_csv("data/wildfinder-ecoregions_list.csv")
wf_ecosp <- read_csv("data/wildfinder-ecoregions_species.csv")
wf_sp <- read_csv("data/wildfinder-mammals_list.csv")

ursus1 <- wf_sp %>%
  filter(sci_name == "Ursus arctos") %>%
  left_join(wf_ecosp) %>%
  left_join(wf_eco)

ursus2 <- wf_sp %>%
  filter(sci_name == "Ursus americanus") %>%
  left_join(wf_ecosp) %>%
  left_join(wf_eco)

wwf <- st_read("data/wwf_terr_ecos.shp")

wwf_ursus1 <- wwf %>%
  rename(ecoregion_id = eco_code) %>%
  mutate(ecoregion_id = as.character(ecoregion_id)) %>%
  inner_join(ursus1)

wwf_ursus2 <- wwf %>%
  rename(ecoregion_id = eco_code) %>%
  mutate(ecoregion_id = as.character(ecoregion_id)) %>%
  inner_join(ursus2)

wwf_ursus_overlap <- 
  st_intersection(wwf_ursus1, wwf_ursus2)

library("rnaturalearth")
library("rnaturalearthdata")

world <- ne_countries(scale = "medium", returnclass = "sf")

ggplot(world) +
  geom_sf() +
  geom_sf(fill = "grey", data = wwf_ursus1) +
  geom_sf(fill = "black", data = wwf_ursus_overlap) +
  theme_minimal() +
  xlab("Longitude") + ylab("Latitude") + 
  ggtitle("Carte du monde Ursidae")

world2 <- st_transform(world, st_crs("+init=epsg:2163"))
 plot(world2)

 ggplot(world2) +
   geom_sf() +
   geom_sf(fill = "grey", data = wwf_ursus1) +
   geom_sf(fill = "black", data = wwf_ursus_overlap) +
   theme_minimal() +
   xlab("Longitude") + ylab("Latitude") + 
   ggtitle("Carte du monde Ursidae")
