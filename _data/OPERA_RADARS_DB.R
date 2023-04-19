library(jsonlite)
library(dplyr)

# Read source JSON files from OPERA
radars_main <- jsonlite::read_json(
  "http://eumetnet.eu/wp-content/themes/aeron-child/observations-programme/current-activities/opera/database/OPERA_Database/OPERA_RADARS_DB.json",
  simplifyDataFrame = TRUE
)
radars_archive <- jsonlite::read_json(
  "http://eumetnet.eu/wp-content/themes/aeron-child/observations-programme/current-activities/opera/database/OPERA_Database/OPERA_RADARS_ARH_DB.json",
  simplifyDataFrame = TRUE
)

# Clean data
radars_archive <-
  radars_archive %>%
  dplyr::rename(
    latitude = `latitude  (°)`,
    longitude = `longitude (°)`,
    beam = `beam (º)`,
    wrwp = WRWP
  ) %>%
  dplyr::mutate(source = "archive")
radars_main <-
  radars_main %>%
  dplyr::mutate(source = "main")

# Combine and sort data
radars <-
  radars_main %>%
  dplyr::bind_rows(radars_archive) %>%
  # Set all "" to NA
  dplyr::mutate(across(where(is.character), ~ if_else(.x == "", NA_character_, .x))) %>%
  # Remove erroneous records that have no country assigned
  dplyr::filter(!is.na(country)) %>%
  # Move source column to end
  dplyr::relocate(source, .after = last_col()) %>%
  # Sort data for consistent git diffs
  dplyr::arrange(country, number, startyear)

# Write
radars_json <- jsonlite::toJSON(radars, pretty = TRUE, auto_unbox = TRUE)
write(radars_json, "OPERA_RADARS_DB.json")
