#' Load hrm packages
#' @description Load hrm packages.
#' @param tidyverse TRUE/FALSE also load the tidyverse package
#' @importFrom stringr str_detect str_remove_all
#' @importFrom purrr map_chr
#' @importFrom magrittr %>%
#' @importFrom cli rule symbol
#' @importFrom crayon bold green white blue col_align col_nchar
#' @importFrom utils packageVersion
#' @export

hrmAttach <- function(tidyverse = TRUE){
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
      text_colour() %>%
      message()
    
    versions <- map_chr(p,~{.x %>%
        packageVersion() %>%
        as.character()
    })
    
    suppressPackageStartupMessages(
      lapply(p,function(x) do.call(library,list(x)))
    )
    
    packages_load <- paste0(
      crayon::green(cli::symbol$tick),
      " ",
      crayon::blue(format(p)),
      " ",
      crayon::col_align(text_colour(versions), 
                        max(crayon::col_nchar(versions)))
    )
    
    if (length(packages_load) %% 2 == 1) {
      packages_load <- append(packages_load, " ")
    }
    
    column_odd <- seq(1,length(packages_load),2)
    column_even <- seq(2,length(packages_load),2)

    info <- paste0(packages_load[column_odd], "  ", packages_load[column_even]) %>% 
      paste0(collapse = '\n')
    
    message(info)
  }
  
  if (isTRUE(tidyverse)){
    do.call('library',list('tidyverse')) 
  }
  
  invisible()
}

#' @importFrom rstudioapi isAvailable hasFun getThemeInfo
#' @importFrom crayon black

text_colour <- function(x) {
  
  if (!isAvailable()) {
    return(x)
  }
  
  if (!hasFun("getThemeInfo")) {
    return(x)
  }
  
  theme <- getThemeInfo()
  
  if (isTRUE(theme$dark)) white(x) else black(x)
  
}
