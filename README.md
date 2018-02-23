# STL_CSB_RawRequests <img src="https://slu-dss.github.io/img/gisLogoSm.png" align="right" />
## City of St. Louis Citizens Service Bureau Requests

[![](https://img.shields.io/badge/extent-City%20of%20St.%20Louis-red.svg)](https://github.com/slu-openGIS/STL_CSB_RawRequests/)
[![](https://img.shields.io/badge/category-city%20services-orange.svg)](https://github.com/slu-openGIS/STL_CSB_RawRequests/)
[![](https://img.shields.io/github/release/slu-openGIS/STL_CSB_RawRequests.svg?label=version)](https://github.com/slu-openGIS/STL_CSB_RawRequests/releases)
[![](https://img.shields.io/github/last-commit/slu-openGIS/STL_CSB_RawRequests.svg)](https://github.com/slu-openGIS/STL_CSB_RawRequests/commits/master)
[![](https://img.shields.io/github/repo-size/slu-openGIS/STL_CSB_RawRequests.svg)](https://github.com/slu-openGIS/STL_CSB_RawRequests/)

### Abstract
The City of St. Louis makes their [Citizens Service Bureau data](https://www.stlouis-mo.gov/data/service-requests.cfm) publicly available. These data ship in separate irregularly organized `.csv` files, the most recent of which is renamed with each subsequent release. This lack of stability makes their integration with our [`stlcsb` package](https://github.com/slu-openGIS/stlcsb) challenging. As a workaround, we offer a single unified `.rda` formatted data file specifically to support our package. If you use `R`, we encourage you use access these data via the [`stlcsb` package](https://github.com/slu-openGIS/stlcsb). If you use another tool for data analysis, we encourage you to access these data directly from the [City of St. Louis](https://www.stlouis-mo.gov/data/service-requests.cfm).

### Access via `stlcsb`
To download these data using the [`stlcsb` package](https://github.com/slu-openGIS/stlcsb), use the `csb_get_data()`:

```r
csb_incidents <- stlcsb::csb_get_data()
```

## About the SLU DSS
### The openGIS Project
The openGIS Project is a faculty-student collaboration at SLU organized by [Christopher Prener, Ph.D.](mailto:chris.prener@slu.edu}). The goal of the project is to produce publicly available spatial data about the St. Louis region.

### About the SLU Data Science Seminar
The [SLU Data Science Seminar](https://slu-dss.githb.io) (DSS) is a collaborative, interdisciplinary group at Saint Louis University focused on building researchers’ data science skills using open source software. We currently host seminars focused on the programming language R. The SLU DSS is co-organized by [Christina Gacia, Ph.D.](mailto:christina.garcia@slu.edu), [Kelly Lovejoy, Ph.D.](mailto:kelly.lovejoy@slu.edu@slu.edu), and [Christopher Prener, Ph.D.](mailto:chris.prener@slu.edu}). You can keep up with us here on GitHub, on our [website](https://slu-dss.githb.io), and on [Twitter](https://twitter.com/SLUDSS).

### About Saint Louis University
[Saint Louis University](http://wwww.slu.edu) is a Catholic, Jesuit institution that values academic excellence, life-changing research, compassionate health care, and a strong commitment to faith and service. Founded in 1818, the University fosters the intellectual and character development of more than 13,000 students on two campuses in St. Louis and Madrid, Spain. Building on a legacy of nearly 200 years, Saint Louis University continues to move forward with an unwavering commitment to a higher purpose, a greater good.
