#' hrmAttach
#' @description Load hrm packages.
#' @importFrom tibble as_tibble
#' @importFrom dplyr filter mutate
#' @importFrom stringr str_replace_all
#' @importFrom purrr walk
#' @importFrom magrittr %>%
#' @importFrom cli rule
#' @importFrom crayon bold green
#' @export

hrmAttach <- function(){
    requireNamespace('magrittr')
    isAttached <- search() %>%
        tibble::as_tibble() %>%
        dplyr::filter(grepl(x = value,pattern = 'package')) %>%
        dplyr::mutate(value = stringr::str_replace_all(value,'package:','')) 
    
    p <- packages$Package[packages$Load == T & !(packages$Package %in% isAttached$value)]
    if (length(p) > 1) {
        cli::rule(
            left = crayon::bold("Attaching packages"),
            right = paste0("hrm ", packageVersion("hrm"))
        ) %>% cat('\n')
        suppressPackageStartupMessages(
            purrr::walk(p,~{
                cat(crayon::green(cli::symbol$tick),.,'\n',sep = ' ')
                do.call('library',list(.))
            }
            ))
    }
    
}