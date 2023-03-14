#' Create color scales for ggplots
#'
#' These functions create a color/fill scale (with the persoalized RSE palette)
#' @param discrete A discrete scale (max 8 categories) must be used or continous? Default `discrete = TRUE`.
#' @param legend_wrap_width A positive integer giving target line width (numeber of characters). Default is `15`.
#' @export
scale_colour_rse <- function(discrete = TRUE,
                             legend_wrap_width = 15) {

  if(isTRUE(discrete)){

    ggplot2::scale_colour_manual(values = rse_palette,
                                 labels = ~ stringr::str_wrap(.x, width = legend_wrap_width)
                                 )

  } else {

    ggplot2::scale_colour_gradientn(
      colors = c("#4ab69d", "#38b4c0", "#2667ac", "#eea9cc")
    )

  }

}

#' @rdname scale_colour_rse
scale_fill_rse <- function(discrete = TRUE,
                           legend_wrap_width = 15) {

  if(isTRUE(discrete)){

    ggplot2::scale_fill_manual(values = rse_palette,
                               labels = ~ stringr::str_wrap(.x, width = legend_wrap_width)
                               )

  } else {

    ggplot2::scale_fill_gradientn(
      colors = c("#4ab69d", "#38b4c0", "#2667ac", "#eea9cc")
    )

  }

}

