#' theme_saf
#'
#' Function for loading many datasets, binding them, and saving the joint output. Based on snippet from Asmae Toumi (https://twitter.com/asmae_toumi/status/1364407122268729347?s=20)
#'
#' @param dir Directory where data are stored
#' @param file_type file extension to look for
#' @return .csv file of bound output
#' @export

load_and_merge <- function(dir = "data/",
                           file_type = ".csv") {
  require(tidyverse)
  require(fs)
  require(here)
  require(arrow)
  
  files <- dir_ls(here(dir), regexp = paste0("\\", file_type, "$"))
  
  files <- 
    files %>%
    map_dfr(read_csv) %>%
    write_parquet("all_data.csv")
}
