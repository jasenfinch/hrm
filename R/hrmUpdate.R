#' hrmUpdate
#' @description  Update hrm packages.
#' @importFrom dplyr bind_rows
#' @importFrom tibble tibble
#' @export

hrmUpdate <- function() {
    suppressMessages(install(ask = F))
    hrmSetup()
    walk(packages$Package,~{
        package <- packages[packages$Package == .,]
        
        if (package$Repository == 'github') {
            success <- installGithub(package$Profile,package$Package)
            # if (success == T) {
            #     cat('Updating hrm:',package$Package,'\n',sep = ' ')
            # }
        }
        Sys.sleep(2)
    })
}