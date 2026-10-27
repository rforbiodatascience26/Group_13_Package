test_that("Length is correct", {
  expect_length(DNA_seq_generator(4), length(DNA_seq_generator(4)))
})
test_that("DNA_seq_generator creates non-identical random sequences", {
  # Generate two separate sequences of sufficient length
  seq1 <- DNA_seq_generator(50)
  seq2 <- DNA_seq_generator(50)

  # Assert that seq1 is not identical to seq2
  expect_false(identical(seq1, seq2))
})
