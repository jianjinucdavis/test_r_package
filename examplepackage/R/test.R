#' plot y as a function of x
#'
#' @param n size of x.
#' @param min min of x.
#' @param max max of x.
#' @param func a string formula, y as a function of x. e.g. 'y = x ^ 2'
#' @return The plot of \code{y} as a function of \code{x}
#' @examples
#' plot_func(100, 0, 10, 'y = 10 * x')
#' @export

plot_func <- function(n, min, max, func) {
  x = runif(n, min, max)
  eval(parse(text=func))
  plot(x, y)
}
