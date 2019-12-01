# Information about datasets used  
## data/avSst.csv  
### Dataset containing Sea Surface Temperature (SST) data from NOAA  
### Variable descriptions  
*sites:* Name of sites where reef fish visual transects were conducted as per `data/data.csv`;  
*mean:* Mean daily SST between 1998 and 2002, extracted from [NOAA](https://www.esrl.noaa.gov/psd/data/gridded/data.noaa.oisst.v2.highres.html).  
  
## data/checklist.csv  
### Checklist dataset used for figures 1 and 4, summarised in Table S2  
### Variable descriptions  
*Gaspar_code:* Fish code, unique for each species of fish;  
*Site_code:* Site code, unique for each site;  
*Realm:* Province name (matches `data/data.csv`);  
*Site_name:* Checklist site name;  
*Latitude:* Site latitude;  
*Longitude:* Site longitude;  
*SpSize:* Species maximum size (cm);  
*SizeCl:* Species size class (0--7 cm, 7--15 cm, 15--30 cm, 30--50 cm, 50--80 cm and > 80 cm).  

## data/colorScheme.csv  
### Dataset that provides province-specific matching symbols and colours for figures in R  
### Variable descriptions  
*region:* Province name;  
*cpoint:* Province color;  
*ppoint:* Province symbol.  

## data/data.csv  
### Main dataset containing visual surveys of reef fishes globally  
### Variable descriptions  
*studyName:* Original subset of data shared via co-authors (internal use only);  
*region:* Province name;  
*locality:* Sub-province name;  
*sites:* Site name;  
*area:* Area of individual transects, in m<sup>2</sup>;  
*type:* Type of transects: **quant_class** = abundance and size (cm) tallied; **pres_abs** =  presence / absence; **quant_total** = total abundance, but no size tallied;  
*transect_id:* Individual transect ID;  
*lon:* Site longitude;  
*lat:* Site latitude;  
*depth_m:* Depth in meters;  
*species:* Species name;  
*size_cm:* Size of species tallied (cm);  
*abun:* Total number of individuals;  
*size_class:* Species size class (0--7 cm, 7--15 cm, 15--30 cm, 30--50 cm, 50--80 cm and > 80 cm) based on maximum size;  
*max_size:* Species maximum size published in the literature (cm).  
  
# data/geogrVar.csv  
### Data for reef area and isolation metrics. Coordinates may differ slightly from `data/data.csv` in order to adjust for available satellite data  
### Variable descriptions  
*region:* Province name;  
*locality:* Sub-province name;  
*sites:* Site name;  
*lon:* Site longitude;  
*lat:* Site latitude;  
*distCoast_km:* Distance from the coast (km);  
*coralReefAreaIn5kmRadius_km2:* Area of coral reef within a 5 km radius (km<sup>2</sup>);  
*coralReefAreaIn12kmRadius_km2:* Area of coral reef within a 12 km radius (km<sup>2</sup>);  
*coralReefAreaIn100kmRadius_km2:* Area of coral reef within a 100 km radius (km<sup>2</sup>);  
*rockyReefAreaIn5kmRadius_km2:* Area of rocky reef within a 5 km radius (km<sup>2</sup>);  
*rockyReefAreaIn12kmRadius_km2:* Area of rocky reef within a 12 km radius (km<sup>2</sup>);  
*rockyReefAreaIn100kmRadius_km2:* Area of rocky reef within a 100 km radius (km<sup>2</sup>);  
*distClosesReef_km:* Distance to closest reef (km);  
*reefArea_km2:* Total reef area used for data analysis. See Appendix S1 (section Model predictors) for method description;  

# data/humanPopulation.csv  
### Data for human gravity metrics. Coordinates may differ slightly from `data/data.csv` in order to adjust for available satellite data  
### Variable descriptions  
*region:* Province name;  
*locality:* Sub-province name;  
*sites:* Site name;  
*lat:* Site latitude;  
*lon:* Site longitude;  
*FID_site:* Same as site name (internal use);  
*linear_dist:* Linear distance ("as the crow flies") between the site and the nearest market (km);  
*tt_Nmarket:* Travel time from the nearest market (minutes);  
*grav_Nmarket:* The gravity of the nearest market (pop_Nmarket/tt_Nmarket<sup>2</sup>);  
*pop_Nmarket:* The population of the nearest market;  
*Nb_markets:* The number of markets within a 500 km radius;  
*pop_markets:* The cumulative population of all the markets within a 500 km radius;  
*grav_markets:* The cumulative gravity of all the markets within a 500 km radius;  
*tt_Npop:* Travel time from the nearest human settlement (minutes);  
*pop_Npop:* The population of the nearest human settlement (the value '1' means there are people around but census data are not available);  
*grav_Npop:* The gravity of the nearest human settlement;  
*pop_50:* Total population within a 50 km radius;  
*pop_100:* Total population within a 100 km radius;  
*pop_tot:* Total population within a 500 km radius;  
*grav_tot:* Cumulative gravity of all populated pixel within a 500 km radius.  

# data/paper_regions_match.csv  
### Dataset that provides checklist site-specific matching symbols and colours for figure 1 in R  
### Variable descriptions  
*realm:* Province;  
*site_name_short:* Name of the site, abbreviated;  
*site_name:* Full site name;  
*lat:* Site latitude;  
*lon:* Site longitude;  
*gasparRegion:* Data province (as in `data/data.csv`);  
*gasparProvince:* Province name according to GASPAR classification (internal use only);  
*spaldingRegion:* Region name according to Spalding et al. 2007 BioScience 57:573--583 (internal use only);  
*spaldingProvince:* Province name according to Spalding et al. 2007 BioScience 57:573--583 (internal use only);  
*veron:* Province name according to Veron et al. 2009 Galaxea 11:91--100 (internal use only);  
