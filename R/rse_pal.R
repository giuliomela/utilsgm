#' Return a function to interpolate RSE palettes
#'
#' @param palette Character name of palette in res_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @export
rse_pal <- function(palette = "main", reverse = FALSE, ...){

  pal <- rse_palettes[[palette]]

  if(reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)

}
