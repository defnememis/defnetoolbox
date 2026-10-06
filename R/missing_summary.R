#' Summarize Missing Values
#'
#' Counts missing and complete values and calculates the percentage missing.
#'
#' @param x A vector.
#' @return A named vector containing the missing count, complete count,
#'   and percentage missing.
#' @export
missing_summary <- function(x) {
  c(
    missing = sum(is.na(x)),
    complete = sum(!is.na(x)),
    percent_missing = mean(is.na(x)) * 100
  )
}
