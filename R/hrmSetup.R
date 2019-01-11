#' hrmSetup
#' @description Install hrm packages from scratch.
#' @importFrom BiocManager install
#' @importFrom utils installed.packages
#' @export

hrmSetup <- function() {
    installedPackages <- tibble::as_tibble(installed.packages())
        
    p <- packages$Package[(!(packages$Package %in% installedPackages$Package)) & (packages$Install == T)]
    
    if (length(p) > 0) {
        walk(p,~{
            package <- packages[packages$Package == .,]
            
            if (package$Repository == 'github') {
                cat('Installing hrm:',package$Package,'\n',sep = ' ')
                installGithub(package$Profile,package$Package,force = FALSE)
            }
            
            if (package$Repository == 'cran' | package$Repository == 'bioconductor') {
                install(package$Package)
            }
            
            Sys.sleep(2)
        })
    }
}
