---
title: About
permalink: /about/
toc: true
---

<!-- TODO: review, e.g. regarding names and to focus less on the "repository" -->

## About

The **Aloft data repository** (previously "ENRAM data repository") contains bird movement data extracted by European weather radars. You can directly visualize the data in your browser, browse what data is available or download data to your own computer.

Aloft data repository is a community driven initiative to provide open access to bird movement data from European weather radars. It was developed by the [Open Science lab for biodiversity](https://oscibio.inbo.be) in collaboration, and with funding from, several research projects such as [GloBAM](https://globam.science), [ENRAM](http://www.enram.eu) and [CROW](https://inbo.github.io/crow/).

The repository contains vertical profiles of birds (VP) generated by [vol2bird](https://github.com/adokter/vol2bird) from volume scans. More information on how to browse, download, and use these data can be found on [GitHub](https://github.com/aloftdata/data-repository). Data in this repository are available under a [Creative Commons Zero waiver](https://creativecommons.org/publicdomain/zero/1.0/). Please acknowledge EUMETNET/OPERA in publications resulting from the use of these data as follows:

*We acknowledge the European Operational Program for Exchange of Weather Radar Information ([EUMETNET/OPERA](http://eumetnet.eu/activities/observations-programme/current-activities/opera/)) for providing access to European radar data, faciliated through a research-only license agreement between EUMETNET/OPERA members and ENRAM.*

To cite this repository, use:

*Aloft data repository: Bird movement data from European weather radars. Dataset. http://aloftdata.github.io/data-repository/ Accessed on yyyy-mm-dd.*

## FAQ

### Why are only these radars/countries available?

Currently most of the data comes to us from OPERAs Baltrad data archive, which means that we are limited by the data available there. We continuously work with national meteorological agencies and EUMETNET/OPERA through various projects, hoping to both add more sites, data as well as increase the quality of data.

### Why is there no/bad data for this radar/country?

Data in the repository are not quality controlled. In some situations the automatic processing will not work well, or at all, with certain countries settings. You can check the [wiki](https://github.com/aloftdata/data-repository/wiki) so see a country by country discussion on data quality and you can also add your own comments and evaluations, especially if you have looked at the data more recently then the previous comments.

### Why are there gaps in the data?

The weather radar data are sent from each national meteorological agency to OPERAs Baltrad data archive, from which we take the data, automatically processes it into bird profiles and add to Aloft data repository. Breakdowns can happen at any stage of this pipeline, and even though we try to back fill the data when interruptions occur, that will not always be possible.

### How often are the data updated?

Data are updated daily. HDF5 data are typically available 24 hours after the radar collected the raw data, while daily and monthly summaries are available within 48 hours.
