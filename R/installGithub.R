
installGithub <- function(profile,package) {
    devtools::install_github(stringr::str_c(profile,package,sep = '/'),
                             build_vignettes = TRUE, 
                             dependencies = c("Depends", 
                                              "Imports", 
                                              "LinkingTo", 
                                              "Suggests", 
                                              "Enhances"),
                             quiet = T
    )
}