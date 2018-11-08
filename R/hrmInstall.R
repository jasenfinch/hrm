#' hrmInstall
#' @description install one or more hrm packages.
#' @param pckgs vector of hrm package names to install
#' @param force TRUE or FALSE force install?
#' @examples
#' \dontrun{
#' hrmInstall('hrm')
#' }
#' @export

hrmInstall <- function(pckgs,force = F){
    walk(pckgs,~{
        package <- packages[packages$Package == .,]
        
        if (package$Repository == 'github') {
            cat('Installing hrm:',package$Package,'\n',sep = ' ')
            installGithub(package$Profile,package$Package,force = force)
        }
        
        if (package$Repository == 'cran' | package$Repository == 'bioconductor') {
            install(package$Package)
        }
        
        Sys.sleep(2)
    })
}