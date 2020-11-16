#' Load hrm packages
#' @description Load hrm packages.
#' @importFrom stringr str_detect str_remove_all
#' @importFrom purrr walk
#' @importFrom magrittr %>%
#' @importFrom cli rule symbol
#' @importFrom crayon bold green white blue
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
        ) %>% 
            paste0(.,collapse = ' ') %>%
            white() %>%
            message()
        suppressPackageStartupMessages(
            walk(p,~{
                do.call('library',list(.x))
                
                version <- packageVersion(.x) %>%
                    as.character()
                
                message(paste0(green(symbol$tick),
                               ' ',
                               blue(.x),
                               tabs(.x),
                               white(version),sep = ' '))
            }
            ))
    }
    message('')
    do.call('library',list('tidyverse'))
}

#' @importFrom purrr map_dbl

tabs <- function(package){
    if (nchar(package) <= 13) {
        ntabs <- 2
    } else {
        ntabs <- 1
    }
    rep('\t',ntabs) %>%
        paste0(collapse = '')
}