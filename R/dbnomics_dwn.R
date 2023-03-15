#' A wrapper around `rdbnomics::rdb()`
#'
#' This wrapper transforms the variable "original_period" to a numeric variable named `year` when
#' data are annual. Output is also transformed into a tibble.
#' @param ... Arguments to be passed on to `rdbnomics::rdb()`
#' @export
dbnomics_dwn <- function(...){

  FREQ <- original_period <- NULL

  out <- rdbnomics::rdb(...)

  out <- out %>%
    dplyr::mutate(original_period = ifelse(FREQ == "A",
                                as.numeric(original_period),
                                original_period)
                  ) %>%
    tibble::as_tibble()

  out
}
