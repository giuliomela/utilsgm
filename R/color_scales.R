#' Color scale constructor for RSE colors
#'
#' @param palette Character name of palette in rse_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#' @export
scale_colour_rse <- function(palette = "main",
                             discrete = TRUE,
                             reverse = FALSE,
                             ...) {
  pal <- utilsgm::rse_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("rse_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale constructor for rse colors
#'
#' @rdname scale_colour_rse
#' @export
scale_fill_rse <- function(palette = "main",
                           discrete = TRUE,
                           reverse = FALSE,
                           ...) {
  pal <- utilsgm::rse_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("rse_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}
