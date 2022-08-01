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

## vpts-table-schema.json

Used in https://aloftdata.eu/formats/vpts/

Technical description of the VPTS file format. Maintained in a [separate repository](https://github.com/enram/vpts/).

To update the file, manually copy/paste it from [here](https://github.com/enram/vpts/blob/main/vpts-table-schema.json).
