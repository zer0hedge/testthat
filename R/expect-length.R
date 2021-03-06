#' Expectation: does a vector have the specified length?
#'
#' @inheritParams expect_that
#' @param n Expected length.
#' @family expectations
#' @export
#' @examples
#' expect_length(1, 1)
#' expect_length(1:10, 10)
#'
#' \dontrun{
#' expect_length(1:10, 1)
#' }
expect_length <- function(object, n) {
  stopifnot(is.numeric(n), length(n) == 1)
  lab <- label(object)

  expect(
    length(object) == n,
    sprintf("%s has length %i, not length %i.", lab, length(object), n)
  )

  invisible(object)
}
