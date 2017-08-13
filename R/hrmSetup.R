#' @importFrom BiocInstaller biocLite
#' @importFrom devtools install_github
#' @export

hrmSetup <- function() {
    installedPackages <- tibble::as_tibble(installed.packages())
    
    p <- packages$Package[!(packages$Package %in% installedPackages$Package)]
    
    if (length(p) > 0) {
        walk(p,~{
            package <- packages[packages$Package == .,]
            
            if (package$Repository == 'cran') {
                install.packages(package$Package,repos = 'https://cloud.r-project.org/')
            }

            if (package$Repository == 'github') {
                cat('Installing hrm:',package$Package,'\n',sep = ' ')
                installGithub(package$Profile,package$Package)
            }
            Sys.sleep(2)
        })
    }
}