#' hrmPackages
#' @description Return a vector of \code{hrm} packages.
#' @examples 
#' hrmPackages()
#' @export

hrmPackages <- function(){
    packages %>%
        filter(Load == TRUE) %>%
        .$Package
}
