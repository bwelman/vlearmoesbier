# Poging om de grafiek te maken uit het artikel van Dan Morey
# Alleen de dataset met losse punten van Daniels (pg 61) ontbreekt nog.

library(ggplot2)

# Functies Morey, Mosher en Daniels
mcu <- seq(from=0, to=50, by=1)
mydf <- data.frame(mcu, morey = 1.49*mcu^0.69, mosher.lin = 4.7 + 0.3*mcu, daniels.lin = 8.4 + 0.2*mcu)

# Noonan
# Voor SRM 1 t/10 is SRM gelijk aan MCU
# Voor meer dan 10 SRM gebruik tabel
n.mcu <- c(seq(from=1, to=10, by=1),
		   10.8, 11.6, 12.4, 13.3, 14.1, 14.9, 17.7, 18.6, 20.5, 22.4,
		   24.3, 26.2, 28.1, 30.0, 32.9, 35.8, 38.8, 41.9, 45.0, 47.8)
n.srm <- c(seq(from=1, to=10, by=1),
		   10.5, 11.0, 11.5, 12.0, 12.5, 13.0, 13.5, 14.0, 14.5, 15.0,
		   15.5, 16.0, 16.5, 17.0, 17.5, 18.0, 18.5, 19.0, 19.5, 20.0)
ndf <- data.frame(n.mcu, n.srm)


ggplot(data = mydf) +
	geom_line(aes(x=mcu, y=morey), color="red") +
	geom_line(aes(x=mcu, y=mosher.lin), color="yellow") +
	geom_line(aes(x=mcu, y=daniels.lin), color="green") +
	geom_point(data = ndf, aes(x=n.mcu, y=n.srm), color="blue", shape="triangle")+
	labs(
		title = "Color Approximations for Homebrew",
		subtitle = "Based on Recipe MCU (°L*lbs/gal)",
		x = "MCU (°L*lbs/gal)",
		y = "Estimated Color (SRM)") +
	theme_bw()
