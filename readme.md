Starting from an R dataframe generated with `generateXPT.R` and saved into `xpttest.rds`
data was brought over via haven::write_xpt(..., version=5) to SAS 9 on Linux64.
Truncations of variable labels were repaired and saved into `xpttest.sas7bdat`.
Via SAS standard macro %LOC2XPT this dataset was written to transport file

* `xpttest.xpt` without specifying transport file version
* `xpttest.xpt5` with transport file version set to "v5"
* `xpttest.xpt8` with transport file version set to "v8"