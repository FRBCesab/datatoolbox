get_prefecture <- function(region = "Occitanie") {

  exceptions <- c("Hautes-Pyrénées", "Pyrénées-Orientales", "Tarn-et-Garonne")

  osm_url  <- "http://nominatim.openstreetmap.org/search/"
  params   <- list(format = "json", details = 0, limit = 1)

  wiki_url <- "https://fr.wikipedia.org/wiki/"
  article  <- paste0(region, "_(région_administrative)")

  request  <- paste0(wiki_url, article)

  departements <- rvest::html_session(request) %>%
    rvest::html_table(fill = TRUE) %>%
    nth(4) %>%
    select(`Département`) %>%
    pull()

  tab <- data.frame()

  for (departement in departements) {

    if (!(departement %in% exceptions)) {

      article <- paste0(departement, "_(département)")

    } else {

      article <- departement
    }

    request <- paste0(wiki_url, article)

    prefecture <- rvest::html_session(request) %>%
      rvest::html_nodes(css   = ".infobox_v2") %>%
      rvest::html_table() %>%
      first() %>%
      filter(stringr::str_detect(X1, "Chef-lieu")) %>%
      select(X2) %>%
      pull()

    request <- paste0(wiki_url, prefecture)

    if (prefecture == "Mende") {

      request <- paste0(request, "_(Lozère)")
    }

    population <- rvest::html_session(request) %>%
      rvest::html_nodes(css   = ".infobox_v2") %>%
      rvest::html_table(fill = TRUE) %>%
      first() %>%
      filter(stringr::str_detect(X1, "Populationmunicipale")) %>%
      select(X2) %>%
      pull() %>%
      stringr::str_replace("\\(.+\\)", "") %>%
      stringr::str_replace("[a-z]+", "") %>%
      stringr::str_replace("[[:punct:]]", "") %>%
      stringr::str_replace("\\s", "") %>%
      as.numeric(.)

    location <- paste0(prefecture, ",%20", departement, ",%20France")
    request  <- paste0(osm_url, location)

    coords <- httr::GET(request, query = params) %>%
      httr::content(as = "text") %>%
      jsonlite::fromJSON() %>%
      select(lon, lat)

    dat <- data.frame(
      departement, prefecture, population,
      longitude = coords$lon, latitude = coords$lat
    )

    tab <- rbind(tab, dat)

    Sys.sleep(1)
  }
  
  return(tab)
}
