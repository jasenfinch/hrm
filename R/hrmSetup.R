#' hrmSetup
#' @description Install hrm packages.
#' @importFrom BiocInstaller biocLite
#' @importFrom devtools install_github
#' @importFrom utils installed.packages
#' @export

hrmSetup <- function() {
    installedPackages <- tibble::as_tibble(installed.packages())
    
    if (!('BiocInstaller' %in% installedPackages$Package)) {
        source("https://bioconductor.org/biocLite.R")
        biocLite()
    }
        
    p <- packages$Package[!(packages$Package %in% installedPackages$Package)]
    
    
    
    if (length(p) > 0) {
        walk(p,~{
            package <- packages[packages$Package == .,]

            if (package$Repository == 'github') {
                cat('Installing hrm:',package$Package,'\n',sep = ' ')
                installGithub(package$Profile,package$Package)
            }
            
            if (package$Repository == 'bioconductor') {
                biocLite(package$Package)
            }
            Sys.sleep(2)
        })
    }
}

bioconductor <- tibble::tibble(Repository = 'bioconductor',
                       Profile = NA,
                       Package = c('impute','mzR','xcms'),
                       Load = FALSE)
packages <- dplyr::bind_rows(packages,bioconductor)

save(packages,file = 'R/sysdata.rda')
