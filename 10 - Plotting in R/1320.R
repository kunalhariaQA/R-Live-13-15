# Basic plots

help(plot)
plot(1:10)
plot(20:40)

x <- c(1,2,3,4)

y <- x * 2

# coordinates supplied as two arguments
plot(x,y)

methods(plot)

# coordinates supplied 
# as SINGLE argument using the TILDE
plot(y~x)

x <- seq( -2 * pi, +2 * pi, 0.1)
y <- sin(x)
xy <- cbind(x, y)
class(xy)
plot(xy)


plot(iris)
View(iris)
iris$Species

#  calls "plot.data.frame method"

plot(qnorm)
plot(pnorm)




# type = "l"
x <- seq(-4, 4, 0.1)
cos(3 * x)
plot( cos(3 * x) ~ x)
plot( cos(3 * x) ~ x, type = "l")
plot( cos(3 * x) ~ x, type = "l", col = "red")
lines( sin(3 * x) ~ x, col = "green")
5*5
lines( sin(x) ~ x, col = "blue")

# to understand the plot function use: help(plot), or, noteworthy items:

# * x, y  coordinate data
# * 'type' what type of plot should be drawn.  
    # * p for *p*oints
    # * l for *l*ines,
    # * b for *b*oth,
    # * c for the lines part alone of '"b"',
    # * o for both '*o*verplotted',
    # * h for '*h*istogram' like (or 'high-density') vertical lines,
    # * s for stair *s*teps,
    # * S for other *s*teps
    # * n for NO plotting
# * 'main' an overall title for the plot
# * 'sub' a sub title for the plot
# * 'xlab' a title for the x axis
# * 'ylab' a title for the y axis
# * 'asp' the y/x aspect ratio



# type argument

plot(sin(x) ~ x, type="l", main="lines()")
plot(sin(x) ~ x, type="p", main="points()")
plot(sin(x) ~ x, type="o", main="overplotted")
# plot(sin(x) ~ x, type="c", main="lines without dots")


# lines
plot(tan(3 * x) ~ x, type = "l", col="red")
lines(sin(x)~x, type = "l", col = "blue")

# lines
plot(tan(3 * x) ~ x, type = "l", col="red")
lines(sin(x)~x, type = "p", col = "blue")

#NEW PLOT: o for Overlaid
plot(tan(3 * x) ~ x, type = "l", col="red")
lines(sin(x) ~ x, type = "o", col="blue")

#NEW PLOT: o for Hist
plot(tan(3 * x) ~ x, type = "l", col="red", ylab = "y")
lines(sin(x) ~ x, type = "h", col="blue")


plot(tan(x) ~ x, type = "h", col="blue")
lines(sin(x) ~ x, type = "l", col="red")


x <- seq(-4, 4, 0.1)
plot(sin(x) ~ x, 
     type="n", # without drawing any of the points
     main="Not Plotted")


##############################################

temp_x <- 1:10
temp_y <- temp_x * temp_x

plot(temp_x, temp_y)

plot(temp_x, temp_y, type = "c")

plot(temp_x, temp_y, 
     type = "c", 
     main = "Cutouts: the lines part alone of 'b'", # main title
     sub  = "Lines without Points"                  # subtitle
)


plot(temp_x, temp_y, type = "S")
# "S" => moves first vertical, then horizontal

plot(temp_x, temp_y, type = "s")

plot(temp_x, temp_y, type = "b", 
     pch = 3, col = "red")


x <- seq(-4,+4,0.1)
plot(sin(x) ~ x, type = "h", main = "Histogram")

plot(sin(x) ~ x, type = "h", 
     asp = 4,
     main = "Histogram")


help(points) # "Details" of graphical parameter
help(par) # Graphical Parameters

colors()

plot(seq(1, 25, 1))
plot(seq(1, 25, 1), pch=1:25)

plot(seq(1, 5, 1), pch=1:5)

plot(seq(1, 25, 1), pch=1:25, bg=4:7, cex=3)


plot(cos(x) ~ x, pch="c")

plot(seq(1, 25, 1), pch=26:50)


plot(32:50, 32:50, pch = 32:50)
plot(32:50, 32:50, pch = 32:50,
     asp = 1,
     col = "steelblue2"
     )


plot(50:100, 50:100, pch = 50:100,
     asp = 1,
     col = "steelblue2"
)




plot(sin(x) ~ x, 
     type="b", 
     main="Graphical Options",
     xlab="Music",
     ylab="Signal Strength",
     pch=21,
     cex=2,
     lwd=1.5,
     bg="peachpuff"
)


























