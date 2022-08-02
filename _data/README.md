## OPERA_RADARS_DB.csv

Used in https://aloftdata.eu/radars/

Radar metadata. Derived from `OPERA_RADARS_DB.json` hosted and maintained by OPERA for their [radar map](https://www.eumetnet.eu/wp-content/themes/aeron-child/observations-programme/current-activities/opera/database/OPERA_Database/index.html) and converted to CSV for easier download.

To update the file, run the following code:

```R
library(jsonlite)
library(dplyr)
library(readr)
radars <- read_json("http://eumetnet.eu/wp-content/themes/aeron-child/observations-programme/current-activities/opera/database/OPERA_Database/OPERA_RADARS_DB.json", simplifyDataFrame = TRUE)
radars <- filter(radars, country != "") # Remove erroneous records that have no country assigned
write_csv(radars, "OPERA_RADARS_DB.csv", na = "")
```

## vpts-csv-table-schema.json

Used in https://aloftdata.eu/vpts-csv/

Technical description of the VPTS CSV file format. Maintained in a [separate repository](https://github.com/enram/vpts-csv/).

To update the file, manually copy/paste it from [here](https://github.com/enram/vpts-csv/blob/main/vpts-csv-table-schema.json).
