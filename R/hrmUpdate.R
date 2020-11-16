#' Update hrm packages
#' @description  Update hrm packages.
#' @importFrom dplyr bind_rows
#' @importFrom tibble tibble
#' @importFrom BiocManager install
#' @export

hrmUpdate <- function() {
    suppressMessages(install(ask = FALSE))
    lapply(hrmPackages(),function(.x){
        package <- packages[packages$Package == .x,]
        
        if (package$Repository == 'github') {
            installGithub(package$Profile,package$Package)
        }
    })
    invisible()
}
