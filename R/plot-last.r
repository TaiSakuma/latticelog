## This file was copied from ggplot2 so as to make this package
## testable with vtest. The vtest can retrieve the plot with
## last_plot() if it is set with set_last_plot().
.plot_store <- function() {
  .last_plot <- NULL

  list(
    get = function() .last_plot,
    set = function(value) .last_plot <<- value
  )
}
.store <- .plot_store()

# Set last plot created or modified
set_last_plot <- function(value) .store$set(value)


#' Retrieve the last plot to be modified or created.
#'
#' @seealso \code{\link{ggsave}}
#' @export
last_plot <- function() .store$get()
