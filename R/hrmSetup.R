#' hrmSetup
#' @description Install hrm packages.
#' @importFrom BiocManager install
#' @importFrom devtools install_github
#' @importFrom utils installed.packages
#' @export

hrmSetup <- function() {
    installedPackages <- tibble::as_tibble(installed.packages())
        
    p <- packages$Package[!(packages$Package %in% installedPackages$Package)]
    
    if (length(p) > 0) {
        walk(p,~{
            package <- packages[packages$Package == .,]

            if (package$Repository == 'github') {
                cat('Installing hrm:',package$Package,'\n',sep = ' ')
                installGithub(package$Profile,package$Package)
            }
            
            if (package$Repository == 'cran' | package$Repository == 'bioconductor') {
                install(package$Package)
            }
            
            Sys.sleep(2)
        })
    }
}
