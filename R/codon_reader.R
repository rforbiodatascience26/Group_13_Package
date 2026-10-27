#' Function that splits a string of RNA into codons.
#'
#' @param RNA_seq A string of RNA.
#' @param start The placement of the open reading frame, default is from the first index.
#'
#' @returns The string of RNA is divided into codons, from a given ORF placement.
#' @export
#'
#' @examples
#' RNA1 <- "ACUGGCAAAUCUA"
#' codon_reader(RNA_seq = RNA1)
#' codon_reader(RNA_seq = RNA1, start = 3)
codon_reader <- function(RNA_seq, start = 1){
  if (!grepl("^[ACGU]+$", RNA_seq)) {
    stop("RNA_seq must contain only the characters A, C, G, U", call. = FALSE)
  }

  RNA_len <- nchar(RNA_seq)
  codons <- substring(RNA_seq,
                      first = seq(from = start, to = RNA_len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = RNA_len, by = 3))
  return(codons)
}
