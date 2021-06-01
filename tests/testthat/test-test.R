test_that("pcawg_available works", {
  expect_error(pcawg_available(), NA)
  expect_s3_class(pcawg_available(), class = "data.frame")
  expect_gt(nrow(pcawg_available()), expected = 0)
})

test_that("pcawg_load works", {
  expect_error(pcawg_load("Bone-Cart"), NA)
  expect_s4_class(pcawg_load("Bone-Cart"), class = "MAF")
})
