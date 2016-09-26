### R code from vignette source 'Demo.Rnw'

###################################################
### code chunk number 1: Demo.Rnw:9-10
###################################################
options(SweaveHooks = list(fig = function() par(mfrow=c(2,2))))


###################################################
### code chunk number 2: xydef (eval = FALSE)
###################################################
## x <- 1:10
## y <- rnorm(x)


###################################################
### code chunk number 3: Demo.Rnw:19-23
###################################################
getOption("SweaveHooks")[["fig"]]()
x <- 1:10
y <- rnorm(x)
lm1 <- lm(y~x)
summary(lm1)
plot(lm1)


###################################################
### code chunk number 4: Demo.Rnw:29-31
###################################################
options(SweaveHooks=list(fig=function()
par(mar=c(5.1, 4.1, 1.1, 2.1))))


###################################################
### code chunk number 5: Demo.Rnw:33-36
###################################################
library(lattice)
library(xtable)
data(cats, package="MASS")


###################################################
### code chunk number 6: Demo.Rnw:44-46
###################################################
lm1 = lm(Sepal.Length ~ Sepal.Width, data=iris)
lm1


###################################################
### code chunk number 7: Demo.Rnw:50-52
###################################################
xtable(lm1, caption="Linear regression model for iris data.",
label="tab:coef1")


###################################################
### code chunk number 8: Demo.Rnw:55-57
###################################################
lm2 = lm(Sepal.Length ~ Sepal.Width:Species + Species - 1, data=iris)
lm2


###################################################
### code chunk number 9: Demo.Rnw:60-62
###################################################
xtable(lm2, caption="Linear regression model for iris data, by species",
label="tab:coef2")


###################################################
### code chunk number 10: iris
###################################################
getOption("SweaveHooks")[["fig"]]()
trellis.par.set(col.whitebg())
plot(iris$Sepal.Width, iris$Sepal.Length, pch=21, bg=c("red","green3","blue")[unclass(iris$Species)], main="Iris Data", xlab="Petal length", ylab="Sepal length")
abline(lm(Sepal.Length ~ Sepal.Width, data=iris)$coefficients, col="black")
abline(lm(Sepal.Length ~ Sepal.Width, data=iris[which(iris$Species=="setosa"),])$coefficients, col="red")
abline(lm(Sepal.Length ~ Sepal.Width, data=iris[which(iris$Species=="versicolor"),])$coefficients, col="green3")
abline(lm(Sepal.Length ~ Sepal.Width, data=iris[which(iris$Species=="virginica"),])$coefficients, col="blue")


