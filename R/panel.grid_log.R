
##____________________________________________________________________________||
log10.grid.at <- function(at)
  {
    ret <- sort(as.vector(sapply(1:9*10, function(x) log10(x*10^{(min(at) - 1):(max(at) - 1)}))))
    ret[ret <= max(at)]
  }

##____________________________________________________________________________||
#' @export
panel.grid_logx <- function(col = reference.line$col, lty = reference.line$lty,
                           lwd = reference.line$lwd, lwd.minor = reference.line$lwd*0.5, ...)

  {
    reference.line <- trellis.par.get("reference.line")
    lim <- current.panel.limits()
    x.at <- c(floor(lim$xlim[1]), ceiling(lim$xlim[2]))
    x.grid.at <- log10.grid.at(x.at)
    sapply(x.grid.at, function(x) panel.lines(c(x, x), c(lim$ylim[1], lim$ylim[2]), col = col, lwd = lwd.minor))
    sapply(x.at, function(x) panel.lines(c(x, x), c(lim$ylim[1], lim$ylim[2]), col = col, lwd = lwd))
  }

##____________________________________________________________________________||
#' @export
panel.grid_logy <- function(col = reference.line$col, lty = reference.line$lty,
                           lwd = reference.line$lwd, lwd.minor = reference.line$lwd*0.5, ...)

  {
    reference.line <- trellis.par.get("reference.line")
    lim <- current.panel.limits()
    y.at <- c(floor(lim$ylim[1]), ceiling(lim$ylim[2]))
    y.grid.at <- log10.grid.at(y.at)
    sapply(y.grid.at, function(x) panel.lines(c(lim$xlim[1], lim$xlim[2]), c(x, x), col = col, lwd = lwd.minor))
    sapply(y.at, function(x) panel.lines(c(lim$xlim[1], lim$xlim[2]), c(x, x), col = col, lwd = lwd))
  }

##____________________________________________________________________________||
