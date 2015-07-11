library(lattice)
library(latticeExtra)

##____________________________________________________________________________||
vcontext("panel.xyarea_s")

##____________________________________________________________________________||
x <- 0:5
y <- c(4, 3, 2, 4, 1, 0)
p <- xyplot(y ~ x, panel = panel.xyarea_s)
set_last_plot(p)
save_vtest("panel.xyarea_s 1")

##____________________________________________________________________________||
df <- data.frame(x = rep(0:5, 4),
                 y = c(
                   6, 3, 4, 7, 5, 0,
                   5, 1, 3, 5, 4, 0,
                   3, 1, 2, 2, 2, 0,
                   2, 1, 1, 0, 1, 0
                   ),
                 G1 = rep(c('A', 'B', 'C', 'D'), each = 6)
                 )
p <- xyplot(y ~ x | G1, data = df, panel = panel.xyarea_s)
set_last_plot(p)
save_vtest("panel.xyarea_s 2")

p <- xyplot(y ~ x, groups = G1, data = df, panel = panel.xyarea_s)
set_last_plot(p)
save_vtest("panel.xyarea_s 3")

p <- xyplot(y ~ x | G1, groups = G1, data = df, panel = panel.xyarea_s)
set_last_plot(p)
save_vtest("panel.xyarea_s 4")

##____________________________________________________________________________||
df <- data.frame(x = rep(0:5, 4),
                 y = c(
                   6, 3, 4, 7, 5, 0, # A, X
                   5, 1, 3, 5, 4, 0, # A, Y
                   3, 1, 2, 2, 2, 0, # A, Z
                   6, 5, 4, 6, 4, 0, # B, X
                   5, 2, 3, 2, 2, 0, # B, Y
                   3, 1, 2, 1, 1, 0, # B, Z
                   7, 3, 5, 6, 4, 0, # C, X
                   5, 2, 3, 5, 3, 0, # C, Y
                   3, 1, 1, 2, 2, 0, # C, Z
                   5, 4, 6, 5, 6, 0, # D, X
                   2, 2, 4, 3, 3, 0, # D, Y
                   1, 1, 2, 2, 2, 0  # D, Z
                   ),
                 G1 = rep(c('A', 'B', 'C', 'D'), each = 18),
                 G2 = rep(c('X', 'Y', 'Z'), each = 6)
                 )
p <- xyplot(y ~ x | G1, groups = G2, data = df, panel = panel.xyarea_s)
set_last_plot(p)
save_vtest("panel.xyarea_s 5")

##____________________________________________________________________________||
end_vcontext()

##____________________________________________________________________________||
