library(haven)
library(purrr)
library(dplyr)
library(ggplot2)

folfox_path = file.path("data-raw", "NCT01169259","AllProvidedFiles_454", "DATA")
ff_files = dir(folfox_path)
ff_names = gsub("VITAL_trial_NEJM_2022.sas7bdat", "", ff_files)
dl = map(file.path(folfox_path, ff_files), ~ read_sas(.x))
names(dl) = ff_names
#vital <- data.frame(Reduce(rbind, dl))
vital <- data.frame(dl)

usethis::use_data(vital, overwrite = TRUE)
