
##____________________________________________________________________________||
log10.y.grid.at <- function(y.at)
  {
    y <- sort(as.vector(sapply(1:9*10, function(x) log10(x*10^{(min(y.at) - 1):(max(y.at) - 1)}))))
    y[y <= max(y.at)]
  }

##____________________________________________________________________________||
#' @export
panel.grid_logy <- function(col = reference.line$col, lty = reference.line$lty,
                           lwd = reference.line$lwd, lwd.minor = reference.line$lwd*0.5, ...)

  {
    reference.line <- trellis.par.get("reference.line")
    lim <- current.panel.limits()
    y.at <- c(floor(lim$ylim[1]), ceiling(lim$ylim[2]))
    y.grid.at <- log10.y.grid.at(y.at)
    sapply(y.grid.at, function(x) panel.lines(c(lim$xlim[1], lim$xlim[2]), c(x, x), col = col, lwd = lwd.minor))
    sapply(y.at, function(x) panel.lines(c(lim$xlim[1], lim$xlim[2]), c(x, x), col = col, lwd = 1))
  }

##____________________________________________________________________________||
