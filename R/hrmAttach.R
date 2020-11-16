#' hrmAttach
#' @description Load hrm packages.
#' @importFrom stringr str_detect str_remove_all
#' @importFrom purrr walk
#' @importFrom magrittr %>%
#' @importFrom cli rule
#' @importFrom crayon bold green
#' @importFrom utils packageVersion
#' @export

hrmAttach <- function(){
    isAttached <- search() %>%
      .[str_detect(.,'package:')] %>%
        str_remove_all('package:')
    
    p <- hrmPackages()[!(hrmPackages() %in% isAttached)]
    
    if (length(p) > 1) {
        cli::rule(
            left = crayon::bold("Attaching packages"),
            right = paste0("hrm ", packageVersion("hrm"))
        ) %>% cat('\n')
        suppressPackageStartupMessages(
            purrr::walk(p,~{
                package <- .
                do.call('library',list(package))
                version <- packageVersion(package) %>% as.character()
                if (nchar(package) < 13) {
                    cat(crayon::green(cli::symbol$tick),crayon::blue(package),'\t\t',version,'\n',sep = ' ')
                } else {
                    cat(crayon::green(cli::symbol$tick),crayon::blue(package),'\t',version,'\n',sep = ' ')
                }
            }
            ))
    }
    do.call('library',list('tidyverse'))
}