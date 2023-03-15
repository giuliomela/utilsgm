#' A standardized horizontal barplot
#'
#' This function explots `ggplot2` features to draw a flipped barplot with standardized paramters
#'
#' @param ... Arguments to be passed on to `ggplot2::geom_bar` and `ggfittext::geom_bar_text`
#' @param position Position adjustment, either as a string naming the adjustment
#'     (e.g. "jitter" to use position_jitter), or the result of a call to a position
#'     adjustment function. Use the latter if you need to change the settings of the adjustment.
#' @param min.size Minimum font size, in points. Text that would need to be shrunk
#'     below this size to fit the box will be hidden. Default is 8.
#' @param colour The colour of the bar border border
#' @param text_family The font type for the labels.
rse_barchart <- function(...,
                         position = "stack",
                         min.size = 8,
                         colour = "grey",
                         text_family = "Verdana"){

  list(ggplot2::geom_bar(...,
                  position = position,
                  stat = "identity",
                  color = colour),
    ggfittext::geom_bar_text(...,
      position = position,
      outside = TRUE,
      contrast = TRUE,
      min.size = min.size,
      family = text_family
    ),
    ggplot2::coord_flip()
  )


}
