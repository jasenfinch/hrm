
hrmUpdate <- function() {
    
    packagesUpdate <- devtools::package_deps()$package
    p <- packages$Package[packages$Package %in% packagesUpdate]
    
    if (length(p) > 0) {
        walk(p,~{
            package <- packages[packages$Package == .,]
            
            if (package$Repository == 'github') {
                cat('Updating hrm:',package$Package,'\n',sep = ' ')
                installGithub(package$Profile,package$Package)
            }
            Sys.sleep(2)
        })
    }
}