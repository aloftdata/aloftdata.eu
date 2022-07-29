## OPERA_RADARS_DB.csv

Derived from `OPERA_RADARS_DB.json` hosted and maintained by OPERA for their [radar map](https://www.eumetnet.eu/wp-content/themes/aeron-child/observations-programme/current-activities/opera/database/OPERA_Database/index.html) and converted to CSV for easier download:

```R
library(jsonlite)
library(dplyr)
library(readr)
radars <- read_json("http://eumetnet.eu/wp-content/themes/aeron-child/observations-programme/current-activities/opera/database/OPERA_Database/OPERA_RADARS_DB.json", simplifyDataFrame = TRUE)
radars <- filter(radars, country != "") # Remove erroneous records that have no country assigned
write_csv(radars, "OPERA_RADARS_DB.csv", na = "")
```
