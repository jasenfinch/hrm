#' @importFrom tibble as_tibble
#' @importFrom dplyr filter mutate
#' @importFrom stringr str_replace_all
#' @importFrom purrr walk
#' @importFrom magrittr %>%

hrmAttach <- function(){
    library(magrittr)
    isAttached <- search() %>%
        tibble::as_tibble() %>%
        dplyr::filter(grepl(x = value,pattern = 'package')) %>%
        dplyr::mutate(value = stringr::str_replace_all(value,'package:','')) 
    
    p <- packages$Package[!(packages$Package %in% isAttached$value)]
    if (length(p) > 1) {
        suppressPackageStartupMessages(
            purrr::walk(p,~{
                library(.,character.only = T)
                cat('Loading hrm:',.,'\n',sep = ' ')
            }
            ))
    }
    
}