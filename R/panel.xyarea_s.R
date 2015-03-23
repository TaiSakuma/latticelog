
##____________________________________________________________________________||
#' @export
panel.xyarea_s <- function(x, y, subscripts = NULL, groups = NULL, ...)
  {
    gg <- rep(groups[subscripts], each = 2)
    xx <- rep(x, each = 2)
    yy <- rep(y, each = 2)
    yy <- yy[c(length(yy), 1:(length(yy)-1))]
    i <- ifelse(is.null(gg), 1, tapply(1:length(gg), gg, min))
    gg <- gg[-i]
    xx <- xx[-i]
    yy <- yy[-i]
    ss <- 1:length(xx)
    panel.xyarea(xx, yy, subscripts = ss, groups = gg, ...)
  }

##____________________________________________________________________________||
