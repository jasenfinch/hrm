
installGithub <- function(profile,package) {
    suppressMessages(devtools::install_github(stringr::str_c(profile,package,sep = '/'),build_vignettes = TRUE))
}