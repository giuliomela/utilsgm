#' Function to extract RSE colors as hex codes
#'
#' @param ... Character names of RSE colors: mint , blue, pink, light green
#'    light blue, pale green, pale blue, gray
rse_colors <- function(...){

  cols <- c(...)

  if(is.null(cols))
    return(rse_colors_raw)

  rse_colors_raw[cols]

}
