## code to prepare `DATASET` dataset goes here

#palette generated at https://coolors.co/

rse_colors_raw <- c( # discrete RSE palette
  `mint` = "#58b477",
  `blue` = "#2667ac",
  `pink` = "#eea9cc",
  `light green` = "#4ab69d",
  `light blue` = "#38b4c0",
  `pale green` = "#4c726f",
  `pale blue` = "#448b9c",
  `gray` = "#b2c5c1"
)

rse_palettes <- list(
  `main` = rse_colors_raw,
  `two` = rse_colors_raw[c("mint", "blue")],
  `three` = rse_colors_raw[c("mint", "blue", "pink")],
  `two light` = rse_colors_raw[c("light green", "light blue")],
  `two pale` = rse_colors_raw[c("pale green", "pale blue")]
)

usethis::use_data(rse_colors_raw, rse_palettes, overwrite = TRUE, internal = TRUE)


