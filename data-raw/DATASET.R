## code to prepare `DATASET` dataset goes here

ukb_accel <- readRDS(
  "/Users/celestine/Desktop/ddd/BIS620/bis620.2022/data-raw/accel.rds"
  )
usethis::use_data(ukb_accel, overwrite = TRUE)
