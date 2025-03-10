---
layout: radars # See _layouts/radars.html for page functionality
title: Radars
background:
  img: https://images.unsplash.com/photo-1625216109110-d444d70ff665?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2000&q=80
  by: Daniele Franchi
  href: https://unsplash.com/photos/g2fJ7d7eKSM
permalink: /radars/
toc: true # Works because _layout/radars.html is based on "default" and titles have ids
---

This list of European weather radars is derived from two **files maintained by OPERA** for their [radar map](https://www.eumetnet.eu/wp-content/themes/aeron-child/observations-programme/current-activities/opera/database/OPERA_Database/index.html). Issues can be reported to [Marko Goreta](mailto:marko.goreta@cirus.dhz.hr).

Metadata were last downloaded on 2023-05-08, processed using [this script](https://github.com/aloftdata/aloftdata.eu/blob/main/_data/OPERA_RADARS_DB.R) and resulted into [this JSON file](https://raw.githubusercontent.com/aloftdata/aloftdata.eu/main/_data/OPERA_RADARS_DB.json). Only radars with an ODIM code are shown. Status `0` indicates that the radar is no longer active. Note that [bird movement data](https://crow.aloftdata.eu/) is not available for all radars listed on this page.
