# Build CSB raw data 

## Introduction
## This script creates the data file STL_CSB_RawRequests. See README.md for details.

## Dependencies
library(dplyr)
library(readr)

## set source variables
url <- "https://www.stlouis-mo.gov/data/upload/data-files/csb.zip"
path1 <- "/csb/requests-2010-12-31.csv"
path2 <- "/csb/requests-2015-12-31.csv"
path3 <- "/csb/requests-2018-02-07.csv"

## create temporary directory, download and unzip data
tmpdir <- tempdir()
utils::download.file(url, paste0(tmpdir,"csb.zip"))
utils::unzip(paste0(tmpdir,"csb.zip"), exdir = tmpdir)

## read in data
data1 <- read_csv(
  paste0(tmpdir,path1), 
  col_types = cols(
    PROBZIP = col_integer(),
    DATETIMEINIT = col_character(),
    DATETIMECLOSED = col_character(),
    SRX = col_double(),
    SRY = col_double(),
    PRJCOMPLETEDATE = col_character(),
    DATECANCELLED = col_character(),
    DATEINVTDONE = col_character(),
    NEIGHBORHOOD = col_integer(),
    WARD = col_integer()
  ))
data2 <- read_csv(
  paste0(tmpdir,path2), 
  col_types = cols(
    PROBZIP = col_integer(),
    DATETIMEINIT = col_character(),
    DATETIMECLOSED = col_character(),
    SRX = col_double(),
    SRY = col_double(),
    PRJCOMPLETEDATE = col_character(),
    DATECANCELLED = col_character(),
    DATEINVTDONE = col_character(),
    NEIGHBORHOOD = col_integer(),
    WARD = col_integer()
  ))
data3 <- read_csv(
  paste0(tmpdir,path3), 
  col_types = cols(
    PROBZIP = col_integer(),
    DATETIMEINIT = col_character(),
    DATETIMECLOSED = col_character(),
    SRX = col_double(),
    SRY = col_double(),
    PRJCOMPLETEDATE = col_character(),
    DATECANCELLED = col_character(),
    DATEINVTDONE = col_character(),
    NEIGHBORHOOD = col_integer(),
    WARD = col_integer()
  ))

## remove temp directory
unlink(tmpdir)
rm(path1, path2, path3, tmpdir, url)

## combine data frames
STL_CSB_RawRequests <- as_tibble(bind_rows(data1, data2, data3))

## write data
save(STL_CSB_RawRequests, file = "data/STL_CSB_RawRequests.rda")
