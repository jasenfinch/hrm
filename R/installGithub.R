#' @importFrom remotes install_github

installGithub <- function(profile,package,force = FALSE) {
    install_github(stringr::str_c(profile,package,sep = '/'),
                   build_vignettes = TRUE, 
                   dependencies = TRUE, 
                   force = force,
                   upgrade = 'never'
    )
}