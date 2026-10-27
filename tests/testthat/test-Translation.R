test_that("Translation converts codons to amino sequence", {
  expect_equal(
    Translation(c("AUG", "GCU", "AUG")),"MAM")

})
