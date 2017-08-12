#' @importFrom BiocInstaller biocLite
#' @importFrom devtools install_github

hrmSetup <- function() {
    installedPackages <- tibble::as_tibble(installed.packages())
    
    p <- packages$Package[!(packages$Package %in% installedPackages$Package)]
    
    if (length(p) > 0) {
        installBioconductor <- function(package) {
            BiocInstaller::biocLite(package)
        }
        
        installGithub <- function(profile,package) {
            devtools::install_github(stringr::str_c(profile,package,sep = '/'))
        }
        
        walk(p,~{
            package <- packages[packages$Package == .,]
            
            if (package$Repository == 'bioconductor') {
                installBioconductor(package$Package)
            }
            
            if (package$Repository == 'github') {
                installGithub(package$Profile,package$Package)
            }
            Sys.sleep(2)
        })
    }
}