---
title: RMI_DATASET_CROW
permalink: /dataset/rmi_dataset_crow/
toc: true
---

RMI_DATASET_CROW provides **bird density profiles** derived from 9 weather radars in the Belgium, the Netherlands, France and Germany. Data are added daily and go back to October 2019.

## Download

<https://opendata.meteo.be/ftp/observations/radar/vbird/>

## Visualize

[CROW visualization at meteo.be](https://www.meteo.be/services/birdDetection/#/?lang=en)

## Metadata

- **Publisher**: [Royal Meteorological Institute of Belgium](https://meteo.be)
- **License**: [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/legalcode)
- **Update frequency**: daily
- **Start date**: 2019
- **End year**: ongoing
- **Radars**: `behel`, `bejab`, `bewid`, `bezav`, `deess`, `denhb`, `frabb`, `frave`, `nldhl`, `nlhrw`

Full metadata can be found at the [RMI open data portal](https://opendata.meteo.be/geonetwork/srv/eng/catalog.search#/metadata/RMI_DATASET_CROW).

## Citation

When using this dataset, please cite it as follows:

> Royal Meteorological Institute of Belgium (2021) RMI_DATASET_CROW: Bird density profiles derived from weather radar measurements. Dataset. <https://opendata.meteo.be/geonetwork/srv/eng/catalog.search#/metadata/RMI_DATASET_CROW> Accessed on \<date\>.

## Format

### Directory structure

Files are grouped into directories by radar and year:

```
behel/2019/
```

Within each directory are files containing profiles for that day:

```
behel_vpts_20191015.txt
behel_vpts_20191016.txt
behel_vpts_20191017.txt
```

Files are named as `<radar>_vpts_<yyyy><mm><dd>.txt`.

### Data format

Data are provided as text files in the **vol2bird txt output format**:

```
# vol2bird Vertical Profile of Birds (VPB)
# source: WMO:06475,RAD:BX43,PLC:Helchteren,NOD:behel,CTY:605,CMT:behel_scan_200km_dp_dBZ
# polar volume input: /tmp/20191015143000.rad.behel.pvol.dbzh.scanz.pvol.h5
# date   time HGHT    u      v       w     ff    dd  sd_vvp gap dbz     eta   dens   DBZH   n   n_dbz n_all n_dbz_all
20191015 1430    0    nan    nan     nan   nan   nan   0.69 T    nan    nan   0.00  23.63     0     0 10276 10411
20191015 1430  200    nan    nan     nan   nan   nan   0.92 T    nan    nan   0.00  23.18     0     0 60511 61162
20191015 1430  400    nan    nan     nan   nan   nan   0.77 T    nan    nan   0.00  18.47     0     0 22723 22739
20191015 1430  600    nan    nan     nan   nan   nan   0.53 T    nan    nan   0.00  18.49     0     0 16325 16332
20191015 1430  800    nan    nan     nan   nan   nan   0.47 T    nan    nan   0.00  18.27     0     0 15711 15711
20191015 1430 1000    nan    nan     nan   nan   nan   0.53 T    nan    nan   0.00  18.68     0     0 11784 11784
20191015 1430 1200    nan    nan     nan   nan   nan   0.48 T    nan    nan   0.00  18.21     0     0 12908 12908
20191015 1430 1400    nan    nan     nan   nan   nan   0.49 T    nan    nan   0.00  18.55     0     0  9755  9755
20191015 1430 1600    nan    nan     nan   nan   nan   0.61 T    nan    nan   0.00  18.58     0     0  8824  8824
```
