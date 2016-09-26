install.packages("xtable")
path="Desktop/Demo"
setwd(path) #or wherever you cloned the repo
Stangle("Demo.Rnw")
Sweave("Demo.Rnw")
