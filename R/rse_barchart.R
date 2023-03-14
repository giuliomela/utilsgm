#' A standardized horizontal barplot
#'
#' This function explots `ggplot2` features to draw a flipped barplot with standardized paramters
#'
#' @param position Position adjustment, either as a string naming the adjustment
#'     (e.g. "jitter" to use position_jitter), or the result of a call to a position
#'     adjustment function. Use the latter if you need to change the settings of the adjustment.
#' @param colour The colour of the bar border border
#' @param width The bar width
#' @param min.size Minimum font size, in points. Text that would need to be shrunk
#'     below this size to fit the box will be hidden. Default is 8.
rse_barchart <- function(position = "dodge",
                         colour = "grey",
                         width = 1,
                         min.size = 8
                         ){

  list(ggplot2::geom_bar(stat = "identity",
                  position = position,
                  color = colour,
                  width = width),
    ggfittext::geom_bar_text(
      position = position,
      min.size = min.size,
      outside = TRUE,
      contrast = TRUE
    ),
    ggplot2::coord_flip()
  )


}
