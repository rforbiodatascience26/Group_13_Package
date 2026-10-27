test_that("T to U transformation works - with mixed DNA string containing 'TAT'", {
  outPut <- DNAtoRNA("TAT")
  expect_equal(outPut, "UAU")
})

# test_that("Empty string returns error", {
#   outPut <- DNAtoRNA("")
#   expect_null(outPut, NULL)
# })
