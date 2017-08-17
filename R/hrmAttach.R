#' @importFrom tibble as_tibble
#' @importFrom dplyr filter mutate
#' @importFrom stringr str_replace_all
#' @importFrom purrr walk
#' @importFrom magrittr %>%
#' @export

hrmAttach <- function(){
    requireNamespace('magrittr')
    isAttached <- search() %>%
        tibble::as_tibble() %>%
        dplyr::filter(grepl(x = value,pattern = 'package')) %>%
        dplyr::mutate(value = stringr::str_replace_all(value,'package:','')) 
    
    p <- packages$Package[packages$Load == T & !(packages$Package %in% isAttached$value)]
    if (length(p) > 1) {
        suppressPackageStartupMessages(
            purrr::walk(p,~{
                cat('Loading hrm:',.,'\n',sep = ' ')
                do.call('library',list(.))
            }
            ))
    }
    
}