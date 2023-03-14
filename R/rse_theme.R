#' A standardized ggplot theme for RSE's plots in reports and presentations
#'
#' This function allows you to add a standardized theme to your ggplot graphics
#' @importFrom ggplot2 %+replace% %+%
#' @param title_size A numeric value. The size of the title in points. Default is `22`. This
#'     paramters determines - indirectly - also the sie of the subtitle.
#' @param title_familiy,text_family,legend_familiy The font type for title, text, and legend. Default
#'     is set to "Verdana". The package automatically loads all fonts installed in the system (windows only).
#' @param title_color,text_color,legend_color The text color of title, regular text and legend. The `title_color`
#'     paramters also sets the caption color.
#' @param legend_pos the position of legends ("none", "left", "right", "bottom", "top",
#'     or two-element numeric vector)
#' @param axis_face Font face ("plain", "italic", "bold", "bold.italic") of the axis text. Default is "plain".
#' @param text_rel,strip_rel,axis_rel,legend_rel,caption_rel Relative size of various elements of text.
#' @export
#' @examples
#' \dontrun{
#' ggplot(mtcars, aes(x = mpg, y = disp, color = hp)) +
#' geom_point() +
#' rse_theme()
#' }
rse_theme <- function(
    title_size = 22,
    title_family = "Verdana",
    text_family = "Verdana",
    legend_family = "Verdana",
    title_color = "seagreen4",
    text_color = "gray20",
    legend_color = "gray20",
    legend_pos = "bottom",
    axis_face = "plain",
    text_rel = 1,
    strip_rel = 1,
    axis_rel = 1,
    legend_rel = 0.8,
    caption_rel = 0.65){


  ggplot2::theme_bw() %+replace%
    ggplot2::theme(

      #Text format:
      #This sets the font, size, type and colour of text for the chart's title
      plot.title = ggplot2::element_text(family = title_family,
                                         size = title_size,
                                         face = "bold",
                                         color = title_color),
      #This sets the font, size, type and colour of text for the chart's subtitle, as well as the caption
      plot.subtitle = ggplot2::element_text(family = title_family,
                                            size = title_size * 0.75
                                            ),
      plot.caption = ggplot2::element_text(family = text_family,
                                           size = ggplot2::rel(caption_rel),
                                           colour = title_color,
                                           hjust = 1),


      #Legend format
      #This sets the position and alignment of the legend, removes a title and backround for it and sets the requirements for any text within the legend. The legend may often need some more manual tweaking when it comes to its exact position based on the plot coordinates.
      legend.position = legend_pos,
      legend.background = ggplot2::element_blank(),
      legend.title = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(family = legend_family,
                                          size = ggplot2::rel(legend_rel),
                                          color = legend_color),

      #Axis format
      axis.title = ggplot2::element_text(family = text_family,
                                         size = ggplot2::rel(axis_rel),
                                         color = text_color),
      axis.text = ggplot2::element_text(family = text_family,
                                        size = ggplot2::rel(text_rel),
                                        color = text_color,
                                        face = axis_face),
      axis.ticks = ggplot2::element_blank(),
      axis.line.x.bottom = ggplot2::element_line(colour = "gray20", linewidth = 1),
      panel.border = ggplot2::element_blank(),

      #Grid lines
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(color="#cbcbcb"),
      panel.grid.major.x = ggplot2::element_blank(),

      #Blank background
      panel.background = ggplot2::element_blank(),

      #Strip background
      strip.background = ggplot2::element_rect(fill="white"),
      strip.text = ggplot2::element_text(
        family = text_family,
        face = "plain",
        size  = ggplot2::rel(strip_rel),
        hjust = 0)
    )

}
