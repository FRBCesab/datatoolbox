#' Get Occitanie Prefectures Coordinates and Population
#'
#' This function retrieves coordinates and population of prefectures of the
#'   French region Occitanie using the API Nominatim.
#'
#' @param region just tested with "Occitanie".
#'
#' @return a 5-columns data frame with Department, Prefecture, Population,
#'   Longitude, and Latitude.
#'
#' @export
#'
#' @importFrom rvest html_session html_table html_nodes
#' @importFrom dplyr nth select pull first filter
#' @importFrom stringr str_detect str_replace
#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#'
#' @examples
#' \dontrun{
#' get_prefecture()
#' }


get_prefecture <- function(region = "Occitanie") {

  exceptions <- c("Hautes-Pyrenees", "Pyrenees-Orientales", "Tarn-et-Garonne")

  osm_url  <- "http://nominatim.openstreetmap.org/search/"
  params   <- list(format = "json", details = 0, limit = 1)

  wiki_url <- "https://fr.wikipedia.org/wiki/"
  article  <- paste0(region, "_(region_administrative)")

  request  <- paste0(wiki_url, article)

  departements <- rvest::html_session(request) %>%
    rvest::html_table(fill = TRUE) %>%
    dplyr::nth(4) %>%
    dplyr::select(`Departement`) %>%
    dplyr::pull()

  tab <- data.frame()

  for (departement in departements) {

    if (!(departement %in% exceptions)) {

      article <- paste0(departement, "_(departement)")

    } else {

      article <- departement
    }

    request <- paste0(wiki_url, article)

    prefecture <- rvest::html_session(request) %>%
      rvest::html_nodes(css   = ".infobox_v2") %>%
      rvest::html_table() %>%
      dplyr::first() %>%
      dplyr::filter(stringr::str_detect(X1, "Chef-lieu")) %>%
      dplyr::select(X2) %>%
      dplyr::pull()

    request <- paste0(wiki_url, prefecture)

    if (prefecture == "Mende") {

      request <- paste0(request, "_(Lozere)")
    }

    population <- rvest::html_session(request) %>%
      rvest::html_nodes(css  = ".infobox_v2") %>%
      rvest::html_table(fill = TRUE) %>%
      dplyr::first() %>%
      dplyr::filter(stringr::str_detect(X1, "Populationmunicipale")) %>%
      dplyr::select(X2) %>%
      dplyr::pull() %>%
      stringr::str_replace("\\(.+\\)", "") %>%
      stringr::str_replace("[a-z]+", "") %>%
      stringr::str_replace("[[:punct:]]", "") %>%
      stringr::str_replace("\\s", "") %>%
      as.numeric()

    location <- paste0(prefecture, ",%20", departement, ",%20France")
    request  <- paste0(osm_url, location)

    coords <- httr::GET(request, query = params) %>%
      httr::content(as = "text") %>%
      jsonlite::fromJSON() %>%
      dplyr::select(lon, lat)

    dat <- data.frame(
      departement, prefecture, population,
      longitude = coords$lon, latitude = coords$lat
    )

    tab <- rbind(tab, dat)

    Sys.sleep(1)
  }

  return(tab)
}
