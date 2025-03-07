---
title: FAQ
description: Frequently Asked Questions
permalink: /faq/
toc: true
---

### Why are only these radars/countries available?

Currently most of the data comes to us from OPERAs Baltrad data archive, which means that we are limited by the data available there. We continuously work with national meteorological agencies and EUMETNET/OPERA through various projects, hoping to both add more sites, data as well as increase the quality of data.

### Why is there no/bad data for this radar/country?

Data in the repository are not quality controlled. In some situations the automatic processing will not work well, or at all, with certain countries settings. You can check the [wiki](https://github.com/aloftdata/data-repository/wiki) so see a country by country discussion on data quality and you can also add your own comments and evaluations, especially if you have looked at the data more recently then the previous comments.

### Why are there gaps in the data?

The weather radar data are sent from each national meteorological agency to OPERAs Baltrad data archive, from which we take the data, automatically processes it into bird profiles and add to Aloft data repository. Breakdowns can happen at any stage of this pipeline, and even though we try to back fill the data when interruptions occur, that will not always be possible.

### How often are the data updated?

Data are updated daily. HDF5 data are typically available 24 hours after the radar collected the raw data, while daily and monthly summaries are available within 48 hours.