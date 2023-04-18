## OPERA_RADARS_DB.json

Used in https://aloftdata.eu/radars/

Radar metadata. Derived from `OPERA_RADARS_DB.json` hosted and maintained by OPERA for their [radar map](https://www.eumetnet.eu/wp-content/themes/aeron-child/observations-programme/current-activities/opera/database/OPERA_Database/index.html).

To update the file, run the following code:

```R
library(jsonlite)
library(dplyr)
# Read
radars <- jsonlite::read_json(
  "http://eumetnet.eu/wp-content/themes/aeron-child/observations-programme/current-activities/opera/database/OPERA_Database/OPERA_RADARS_DB.json",
  simplifyDataFrame = TRUE
)
# Clean
radars <-
  radars %>%
  dplyr::filter(country != "") %>% # Remove erroneous records that have no country assigned
  dplyr::arrange(country, odimcode) # Sort data for consistent git diffs
# Write
radars <- jsonlite::toJSON(radars, pretty = TRUE, auto_unbox = TRUE)
write(radars, "OPERA_RADARS_DB.json")
```

## vpts-csv-table-schema.json

Used in https://aloftdata.eu/vpts-csv/

Technical description of the VPTS CSV file format. Maintained in a [separate repository](https://github.com/enram/vpts-csv/).

To update the file, manually copy/paste it from [here](https://github.com/enram/vpts-csv/blob/main/vpts-csv-table-schema.json).
