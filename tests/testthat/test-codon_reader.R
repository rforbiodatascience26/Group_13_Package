test_that("codons are split correctly", {
  expect_equal(codon_reader("AUUCGGACG"),c("AUU","CGG","ACG"))
})

test_that("input only contains A, C, G, U", {
  # valid input works
  expect_no_error(codon_reader("AAAACCCGGGUUU"))

  # invalid characters are rejected
  expect_error(codon_reader("ACGT"))   # T is not allowed
  expect_error(codon_reader("acgu"))   # lowercase is not allowed
  expect_error(codon_reader("ACG U"))  # whitespace is not allowed
  expect_error(codon_reader(""))       # empty string
})
