#' Random DNA sequence generator
#'
#' @param DNA_seq_length An integer determining the length of your DNA sequence
#'
#' @returns A sequence of random nucleotides with no spacing, by any length you desire
#' @export
#'
#' @examples
#'
#' DNA_seq_length <- 20
#' print(DNA_seq_generator(DNA_seq_length))
#'
#'

DNA_seq_generator <- function(DNA_seq_length){
  temp_random_DNA_seq <- sample(c("A", "T", "G", "C"), size = DNA_seq_length, replace = TRUE)
  random_DNA_seq <- paste0(temp_random_DNA_seq, collapse = "")
  return(random_DNA_seq)
}
