
db_file <- "WildfinderUpdate.mdb"

classes      <- Hmisc::mdb.get(db_file, table = "class")
orders       <- Hmisc::mdb.get(db_file, table = "order_")
families     <- Hmisc::mdb.get(db_file, table = "family")
genus        <- Hmisc::mdb.get(db_file, table = "genus")
species      <- Hmisc::mdb.get(db_file, table = "species")
commons      <- Hmisc::mdb.get(db_file, table = "common_names")


classes <- classes[ , c("CLASS.ID", "CLASS")]
colnames(classes) <- c("class_id", "class")

orders <- orders[ , c("CLASS.ID", "ORDER.ID", "ORDER.DESC")]
colnames(orders) <- c("class_id", "order_id", "order")

families <- families[ , c("ORDER.ID", "FAMILY.ID", "FAMILY")]
colnames(families) <- c("order_id", "family_id", "family")

genus <- genus[ , c("FAMILY.ID", "GENUS.ID", "GENUS")]
colnames(genus) <- c("family_id", "genus_id", "genus")

species <- species[ , c("GENUS.ID", "SPECIES.ID", "SPECIES", "MAPPED")]
colnames(species) <- c("genus_id", "species_id", "species", "mapped")

commons <- commons[ , c("SPECIES.ID", "COMMON.NAME")]
colnames(commons) <- c("species_id", "common")


orders   <- merge(classes, orders, by = "class_id", all = TRUE)
families <- merge(orders, families, by = "order_id", all = TRUE)
genus    <- merge(families, genus, by = "family_id", all = TRUE)
species  <- merge(genus, species, by = "genus_id", all = TRUE)
species  <- merge(species, commons, by = "species_id", all = TRUE)

species  <- species[ , c("species_id", "class", "order", "family", "genus", "species", "common", "mapped")]
species  <- species[species[ , "class"] == "Mammalia", ]
species  <- species[species[ , "mapped"] == "Y", ]
species <- species[with(species, order(order, family, genus, species)), -ncol(species)]

species$sci_name <- paste(species[ , "genus"], species[ , "species"])


species[ , 1] <- as.numeric(as.character(species[ , 1]))
for (i in 2:ncol(species)) species[ , i] <- as.character(species[ , i])


species <- species[!is.na(species$species_id), ]
species <- species[!is.na(species$family), ]
species <- species[!is.na(species$genus), ]

species[species$family == "Ursidae", ]



realms      <- Hmisc::mdb.get(db_file, table = "realms")
biomes      <- Hmisc::mdb.get(db_file, table = "biomes")
ecoregions  <- Hmisc::mdb.get(db_file, table = "ecoregions")

realms <- realms[ , c("REALM.CODE", "REALM")]
colnames(realms) <- c("realm_id", "realm")

biomes <- biomes[ , c("BIOME.CODE", "BIOME")]
colnames(biomes) <- c("biome_id", "biome")

ecoregions <- ecoregions[ , c("ECOREGION.CODE", "ECOREGION.NAME", "REALM.CODE", "BIOME.CODE", "ANALYSIS")]
colnames(ecoregions) <- c("ecoregion_id", "ecoregion", "realm_id", "biome_id", "analysed")

ecoregions  <- merge(ecoregions, realms, by = "realm_id", all = TRUE)
ecoregions  <- merge(ecoregions, biomes, by = "biome_id", all = TRUE)

ecoregions <- ecoregions[!is.na(ecoregions$realm_id), ]
ecoregions <- ecoregions[!is.na(ecoregions$biome_id), ]
ecoregions <- ecoregions[ecoregions$analysed == "Y", -c(1, 2, 5)]

for (i in 1:ncol(ecoregions)) ecoregions[ , i] <- as.character(ecoregions[ , i])


ecoregions_species <- Hmisc::mdb.get(db_file, table = "ecoregion_species")

ecoregions_species <- ecoregions_species[ , c("ECOREGION.CODE", "SPECIES.ID")]
colnames(ecoregions_species) <- c("ecoregion_id", "species_id")

ecoregions_species[ , 1] <- as.character(ecoregions_species[ , 1])
ecoregions_species[ , 2] <- as.numeric(as.character(ecoregions_species[ , 2]))


datas <- merge(ecoregions_species, ecoregions, by = "ecoregion_id", all = TRUE)
datas <- datas[!is.na(datas$species_id), ]

datas <- merge(datas, species, by = "species_id", all = TRUE)
datas <- datas[!is.na(datas$ecoregion_id), ]

datas <- datas[!is.na(datas$sci_name), ]


write.csv(species, file = "wildfinder-mammals_list.csv", row.names = FALSE)
write.csv(ecoregions, file = "wildfinder-ecoregions_list.csv", row.names = FALSE)
write.csv(ecoregions_species, file = "wildfinder-ecoregions_species.csv", row.names = FALSE)
