library(lattice)

##____________________________________________________________________________||
vcontext("panel.grid_log")

##____________________________________________________________________________||
x <- 0:5
y <- c(4, -3, 2, 4, 1, 0)
p <- xyplot(y ~ x, panel = function() { panel.grid_logy() })
print(p)
set_last_plot(p)
save_vtest("panel.grid_log 1")

##____________________________________________________________________________||
x <- 0:5
y <- c(4, -3, 2, 4, 1, 0)
p <- xyplot(y ~ x, panel = function() { panel.grid_logx() })
print(p)
set_last_plot(p)
save_vtest("panel.grid_log 2")

##____________________________________________________________________________||
x <- 0:5
y <- c(4, -3, 2, 4, 1, 0)
p <- xyplot(y ~ x, panel = function() { panel.grid_logx(); panel.grid_logy() })
print(p)
set_last_plot(p)
save_vtest("panel.grid_log 3")

##____________________________________________________________________________||
end_vcontext()

##____________________________________________________________________________||
