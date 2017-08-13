
installGithub <- function(profile,package) {
    capture.output(
        suppressMessages(devtools::install_github(stringr::str_c(profile,package,sep = '/'),
                                                  build_vignettes = TRUE, 
                                                  dependencies = c("Depends", 
                                                                   "Imports", 
                                                                   "LinkingTo", 
                                                                   "Suggests", 
                                                                   "Enhances")))
    )
}