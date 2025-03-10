---
title: FAQ
description: Frequently Asked Questions
permalink: /faq/
toc: true
---

<!-- References -->
[aloft_bucket]: /browse/
[baltrad_vpts]: https://doi.org/10.5281/zenodo.14711024
[data_paper]: https://doi.org/10.1038/s41597-025-04641-5
[getrad]: https://aloftdata.github.io/getRad/
[nilsson_revealing_2019]: https://doi.org/10.1111/ecog.04003
[nilsson_revealing_zenodo]: https://doi.org/10.5281/zenodo.1172801
[odim_bird_profile]: https://github.com/adokter/vol2bird/wiki/ODIM-bird-profile-format-specification
[opera]: http://eumetnet.eu/activities/observations-programme/current-activities/opera/
[qa_wiki]: https://github.com/aloftdata/data-repository/wiki
[uva_vpts]: https://doi.org/10.5281/zenodo.14711244
[vpts_csv]: /vpts-csv/

## Aloft bucket

### What data are in the bucket?

The [Aloft bucket][aloft_bucket] contains biological data that were created by processing European weather radar data with methods optimized for extracting bird targets ([vol2bird](https://github.com/adokter/vol2bird)). The resulting data are vertical profiles time series of biological targets (VPTS).

The bucket contains data from 3 sources:

- `baltrad`: Data provided by OPERA member countries. Coverage: 151 radars, from 2012 to now. **Updated daily.** See [Desmet et al. (2025)][data_paper] for details.
- `uva`: Data processed by the University of Amsterdam as part of several research projects. Coverage: 24 radars in Belgium, Germany and the Netherlands, from 2008 to 2023. See [Desmet et al. (2025)][data_paper] for details.
- `ecog-04003`: Data processed for migration flyway research. Coverage: 84 radars, in autumn 2016. See [Nilsson and Dokter et al. (2019)][nilsson_revealing_2019] for details.

### How often are the data updated?

`baltrad` data are updated daily. HDF5 data are typically available 24 hours after the radar collected the raw data, while daily and monthly summaries are available within 48 hours.

### How are the data organized?

Data are organized in the following hierarchical directories: `source`, `format`, `radar`, `year` (`month` and `day`). All data are available in 3 formats:

- `hdf5`: [HDF5 output][odim_bird_profile] of vol2bird, 1 file per timestamp. Contains extensive metadata.
- `daily`: [VPTS CSV][vpts_csv] format, 1 file per day.
- `monthly`: [VPTS CSV][vpts_csv] format, gzipped, 1 file per month. **Recommended download format.**

For example, BALTRAD data for radar SEANG in Ängelholm, Sweden, from 29 August 2020 at 20:30 UTC can be found in:

```
baltrad/hdf5/seang/2020/08/29/seang_vp_20200829T203000Z_0x81540b.h5
baltrad/daily/seang/2020/seang_vpts_20200820.csv
baltrad/monthly/seang/2020/seang_vpts_202008.csv.gz
```

For more details on file properties, organization, naming and format, see [Desmet et al. (2025)][data_paper].

### How do I download the data?

You can download individual files directly from the [Aloft bucket][aloft_bucket]. For bulk downloads, you can use software tools that support S3, such as AWS CLI or rclone. We recommend the use of the [getRad][getrad] R package, which has a bulk download function:

```R
library(getRad)
fetch_vpts()
```

### How do I cite the data?

We recommend the citing the data as follows:

- `baltrad`: cite [Desmet et al. (2025)][data_paper] and acknowledge OPERA (see below).
- `uva`: cite [Desmet et al. (2025)][data_paper].
- `ecog-04003`: cite [Nilsson and Dokter et al. (2019)][nilsson_revealing_2019].

For increased reproducibility, you can also cite the deposited data:

- `baltrad`: cite [Desmet et al. (2025b)][baltrad_vpts] (dataset).
- `uva`: cite [Shamoun-Baranes et al. (2025)][uva_vpts] (dataset).
- `ecog-04003`: cite the [Nilsson et al. 2019b][nilsson_revealing_zenodo] (supplementary material).

To acknowlegde OPERA:

> We acknowledge the European Operational Program for Exchange of Weather Radar Information ([EUMETNET/OPERA][opera]) for providing access to European radar data, faciliated through a research-only license agreement between EUMETNET/OPERA members and ENRAM.

### What is the license?

The data in the bucket are available under a [Creative Commons Zero waiver](https://creativecommons.org/publicdomain/zero/1.0/).

## Data quality

### Why are only these radars/countries available?

Currently most of the data comes to us from OPERA's BALTRAD data archive, which means that we are limited by the data available there. We continuously work with national meteorological agencies and EUMETNET/OPERA through various projects, hoping to both add more sites, data as well as increase the quality of data.

### Why is there no/bad data for this radar/country?

Data in the bucket are not quality controlled. In some situations the automatic processing will not work well, or at all, with certain countries settings. You can check the [wiki][qa_wiki] so see a country by country discussion on data quality and you can also add your own comments and evaluations, especially if you have looked at the data more recently then the previous comments.

### Why are there gaps in the data?

The weather radar data are sent from each national meteorological agency to OPERA's BALTRAD data archive, from which we take the data, automatically processes it into bird profiles and add to Aloft bucket. Breakdowns can happen at any stage of this pipeline, and even though we try to back fill the data when interruptions occur, that will not always be possible.

<!-- ### What variables are reliable? -->

<!-- ## CROW -->
