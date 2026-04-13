---
title: Changelog
description: Important changes to the [Aloft bucket](/browse/).
permalink: /changelog/
toc: true
---

## baltrad

- **2025-12-09**: EUMETNET updated the list of OPERA member countries that grant access to single site radar data and data products. Cyprus, Greece, Hungary, Iceland, Ireland, Latvia, Lithuania, Malta, Romania, and Serbia have joined the agreement. Israel has left. As with all countries in the agreement, PVOL data (if available) are processed by BALTRAD to VPTS data. This is now the case for the following **19 new radars**, for most since 2025-12-09: `grand`, `hubud`, `huhar`, `hunap`, `hupog`, `husze`, `isbjo`, `iskef`, `isska`, `iesha`, `ltlau`, `ltvil`, `robar`, `robob`, `robuc`, `rocra`, `romed`, `roora`, `rotim`. See [this blog post](https://hirad.science/news/2026/aloft-new-countries/) for details.

- **2026-04-13**: BALTRAD processing was down the first 8 months of 2022, resulting in a [gap of coverage](https://static-content.springer.com/esm/art%3A10.1038%2Fs41597-025-04641-5/MediaObjects/41597_2025_4641_MOESM1_ESM.pdf) for all countries between 2022-01-01 and 2022-08-20. This **2022 gap is remedied for Sweden**: we received hdf5 vp data from SMHI that is processed the same way as it would be on BALTRAD. We uploaded those data to the bucket, completing the gap and overwriting any existing data for August 2022. See [#112](https://github.com/aloftdata/data-repository/issues/112) for details.
