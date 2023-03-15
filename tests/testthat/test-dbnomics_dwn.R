test_that("dbnomics_dwn works", {

  code_annual <- "Eurostat/nama_10_gdp/A.CLV05_MEUR.B1G.AT" #annual

  code_quarterly <- "Eurostat/namq_10_gdp/Q.CLV05_MEUR.CA.B1G.AT" #quarterly

  res <- lapply(c(code_annual, code_quarterly),
                function(x) dbnomics_dwn(x))

  lapply(res,
         function(x) expect_true(tibble::is_tibble(x)))

  expect_true(is.numeric(res[[1]]$original_period))

  expect_false(is.numeric(res[[2]]$original_period))


})
