# setup
library(ggplot2)

plato <- function(pt){
	sg <- 1 + pt/1000
	return(-676.67+1286.4*sg-800.47*sg^2 + 190.74*sg^3)
}

# fig 1a

fig1a <- ggplot(data.frame(sgpt = c(0, 32)), aes(x = sgpt, y = plato(sgpt))) +
	geom_line() +
	labs(title = "Figure 1a - °P vs Specific Gravity",
		 x = "Specific Gravity Points @ 60°F (15.5°C)", y = "°Plato") +
	scale_x_continuous(breaks = seq(0, 32, by = 2)) +
	scale_y_continuous(breaks = seq(0, 8.5, by = 0.5)) +
	theme_bw()

png(filename = "fig1a.png", type = "cairo")
plot(fig1a)
dev.off()

# fig 1b

fig1b <- ggplot(data.frame(sgpt = c(32, 66)), aes(x = sgpt, y = plato(sgpt))) +
	geom_line() +
	labs(title = "Figure 1b - °P vs Specific Gravity",
		 x = "Specific Gravity Points @ 60°F (15.5°C)", y = "°Plato") +
	scale_x_continuous(breaks = seq(32, 66, by = 2)) +
	scale_y_continuous(breaks = seq(8.0, 16.5, by = 0.5)) +
	theme_bw()

png(filename = "fig1b.png", type = "cairo")
plot(fig1b)
dev.off()

# fig 1c

fig1c <- ggplot(data.frame(sgpt = c(65, 150)), aes(x = sgpt, y = plato(sgpt))) +
	geom_line() +
	labs(title = "Figure 1c - °P vs Specific Gravity",
		 x = "Specific Gravity Points @ 60°F (15.5°C)", y = "°Plato") +
	scale_x_continuous(breaks = seq(65, 150, by = 5)) +
	scale_y_continuous(breaks = seq(15.0, 35.0, by = 1.0)) +
	theme_bw()

png(filename = "fig1c.png", type = "cairo")
plot(fig1c)
dev.off()
