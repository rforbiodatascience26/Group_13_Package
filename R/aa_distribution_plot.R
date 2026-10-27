#' Plot of Counts of Amino Acids in Sequence
#'
#' @param aa_seq Amino acid sequence
#'
#' @returns plot (distribution of amino acid counts)
#' @export
#'
#' @examples
#' aa_distribution_plot("AAAATTTVVRWLLLF")

aa_distribution_plot <- function(aa_seq){

  # Find each amino acid
  aa_list <- aa_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # The counts of each amino acid
  counts <- sapply(aa_list, function(amino_acid) stringr::str_count(string = aa_seq, pattern =  amino_acid)) |>
    as.data.frame()

  # Renames dataframe
  colnames(counts) <- c("Counts")
  counts[["aa_seq"]] <- rownames(counts)

  # Plots the distribution
  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = aa_seq, y = Counts, fill = aa_seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}

