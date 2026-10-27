#' RNA transcription function
#'
#' @param DNA_seq input to be converted
#'
#' @returns RNA_seq with length defined by user input
#' @export
#'
#' @examples
#' DNA_seq <- "ATCGATCGATCGATCG"
#' print(DNAtoRNA(DNA_seq))

DNAtoRNA <- function(DNA_seq){
  # DNA_seq <- str_to_upper(DNA_seq)
  RNA_seq <- gsub("T", "U", DNA_seq)
  return(RNA_seq)
}
