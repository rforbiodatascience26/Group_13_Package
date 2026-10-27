#' Translation from codons to Amino acids
#'
#' @param codons vector with codons
#' @returns Amino_sequence
#' @export
#'


Translation <- function(codons){
  Amino_sequence <- paste0(codon_table[codons], collapse = "")
  return(Amino_sequence)
}

