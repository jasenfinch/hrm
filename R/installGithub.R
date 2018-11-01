
installGithub <- function(profile,package) {
    devtools::install_github(stringr::str_c(profile,package,sep = '/'),
                             build_opts = c("--no-resave-data", "--no-manual"), 
                             dependencies = c("Depends", 
                                              "Imports", 
                                              "LinkingTo", 
                                              "Suggests", 
                                              "Enhances")
    )
}