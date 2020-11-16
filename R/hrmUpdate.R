#' hrmUpdate
#' @description  Update hrm packages.
#' @importFrom dplyr bind_rows
#' @importFrom tibble tibble
#' @importFrom BiocManager install
#' @export

hrmUpdate <- function() {
    suppressMessages(install(ask = FALSE))
    walk(hrmPackages(),~{
        package <- packages[packages$Package == .x,]
        
        if (package$Repository == 'github') {
            installGithub(package$Profile,package$Package)
        }
    })
}