#################################################################
#################################################################
#################################################################

### Pathe ###
setwd("E:/Material-for-My-Youtube-Channel/2024/April/4")
##################
x<-read.csv("R95p_Uncertainty_R-02.csv", sep=",")
head(x)

x1<-density(x[, 2]);x2<-density(x[, 3]); x3<-density(x[, 4]); x4<-density(x[, 5]); x5<-density(x[, 6]); x6<-density(x[, 7])


par(mfrow=c(2,2), mar=c(4,4,0.5,0.5))

plot(x1, col="red", xlim=c(-40, 450), ylim=c(0, 0.007), main="", xlab="Precipitation in mm", lwd=2)
lines(x2, col="blue", lwd=2)
lines(x3, col="green", lwd=2)
lines(x4, col="maroon", lwd=2)
lines(x5, col="black", lwd=2)
lines(x6, col="purple", lwd=2)


abline(v=median(x[, 2]), col="red", lwd=2, pch=24, lty=2)
abline(v=median(x[, 3]), col="blue", lwd=2, pch=24, lty=2)
abline(v=median(x[, 4]), col="green", lwd=2, pch=24, lty=2)
abline(v=median(x[, 5]), col="maroon", lwd=2, pch=24, lty=2)
abline(v=median(x[, 6]), col="black", lwd=2, pch=24, lty=2)
abline(v=median(x[, 7]), col="purple", lwd=2, pch=24, lty=2)


my.legend.size <-legend("topleft", "R95P",  col=black, cex=1, bty = "n")

legend("right", c("canESM2-0.59", "CMSS-0.95", "inmcm4-0.39", "MIROC-0.59", "CCSM4-0.59"), 
       , bty = "n", cex=1, title="GCM-P.value", text.font=1, bg='lightblue') # The values of SK-Test mentioned here are the following SK-Tests

# library(stats) # For S-K Test
# 
# ks.test(x[, 2], x[, 3])
# ks.test(x[, 2], x[, 4])
# ks.test(x[, 2], x[, 5])
# ks.test(x[, 2], x[, 6])
# ks.test(x[, 2], x[, 7])




##################################################################3

##################
x<-read.csv("SU25_Uncertainty_R-02.csv", sep=",")
head(x)

x1<-density(x[, 2]);x2<-density(x[, 3]); x3<-density(x[, 4]); x4<-density(x[, 5]); x5<-density(x[, 6]); x6<-density(x[, 7])




plot(x1, col="red", xlim=c(90, 220), ylim=c(0, 0.036), main="", xlab="Number of days", lwd=2)
lines(x2, col="blue", lwd=2)
lines(x3, col="green", lwd=2)
lines(x4, col="maroon", lwd=2)
lines(x5, col="black", lwd=2)
lines(x6, col="purple", lwd=2)

abline(v=median(x[, 2]), col="red", lwd=2, pch=24, lty=2)
abline(v=median(x[, 3]), col="blue", lwd=2, pch=24, lty=2)
abline(v=median(x[, 4]), col="green", lwd=2, pch=24, lty=2)
abline(v=median(x[, 5]), col="maroon", lwd=2, pch=24, lty=2)
abline(v=median(x[, 6]), col="black", lwd=2, pch=24, lty=2)
abline(v=median(x[, 7]), col="purple", lwd=2, pch=24, lty=2)


my.legend.size <-legend("topright", "SU25",  col=black, cex=1, bty = "n")


 legend("topleft", c("Observed", "CanESM2", "CMCC-CMS", "inmcm4", "MIROC-ESM-CHEM", "CCSM4"), 
        col=c("black", "blue", "green", "maroon", "black", "purple"), text.col=c("red", "blue", "green", "maroon", "black", "purple"), bty = "n", cex=1)


legend("right", c("canESM2-0.39", "CMSS-0.3", "inmcm4-<0.00", "MIROC-0.13", "CCSM4-0.39"), 
       , bty = "n", cex=1, title="GCM-P.value", text.font=1, bg='lightblue')# The values of SK-Test mentioned here are the following SK-Tests

# ks.test(x[, 2], x[, 3])
# ks.test(x[, 2], x[, 4])
# ks.test(x[, 2], x[, 5])
# ks.test(x[, 2], x[, 6])
# ks.test(x[, 2], x[, 7])


##################################################################3


##################
# x<-read.csv("R99p_Uncertainty_R-02.csv", sep=",")
# head(x)
# 
# x1<-density(x[, 2]);x2<-density(x[, 3]); x3<-density(x[, 4]); x4<-density(x[, 5]); x5<-density(x[, 6]); x6<-density(x[, 7])
# 
# 
# 
# 
# plot(x1, col="red", xlim=c(-90, 350), ylim=c(0, 0.018), main="", xlab="Precipitation in mm", lwd=2)
# lines(x2, col="blue", lwd=2)
# lines(x3, col="green", lwd=2)
# lines(x4, col="maroon", lwd=2)
# lines(x5, col="black", lwd=2)
# lines(x6, col="purple", lwd=2)
# 
# 
# abline(v=median(x[, 2]), col="red", lwd=2, pch=24, lty=2)
# abline(v=median(x[, 3]), col="blue", lwd=2, pch=24, lty=2)
# abline(v=median(x[, 4]), col="green", lwd=2, pch=24, lty=2)
# abline(v=median(x[, 5]), col="maroon", lwd=2, pch=24, lty=2)
# abline(v=median(x[, 6]), col="black", lwd=2, pch=24, lty=2)
# abline(v=median(x[, 7]), col="purple", lwd=2, pch=24, lty=2)
# 
# 
# my.legend.size <-legend("topleft", "R99P",  col=black, cex=1, bty = "n")
# 
# # legend(locator(n=1), c("Observed", "CanESM2", "CMCC-CMS", "inmcm4", "MIROC-ESM-CHEM", "CCSM4"), 
# #        col=c("red", "blue", "green", "maroon", "black", "purple"), text.col=c("red", "blue", "green", "maroon", "black", "purple"), bty = "n", cex=1.2)
# 
# 
# legend("right", c("canESM2-0.59", "CMSS-0.59", "inmcm4-0.80", "MIROC-0.95", "CCSM4-0.80"), 
#        , bty = "n", cex=1, title="GCM-P.value", text.font=1, bg='lightblue')# The values of SK-Test mentioned here are the following SK-Tests


# ks.test(x[, 2], x[, 3])
# ks.test(x[, 2], x[, 4])
# ks.test(x[, 2], x[, 5])
# ks.test(x[, 2], x[, 6])
# ks.test(x[, 2], x[, 7])



##################################################################3


##################
x<-read.csv("TN90p_Uncertainty_R-02.csv", sep=",")
head(x)

x1<-density(x[, 2]);x2<-density(x[, 3]); x3<-density(x[, 4]); x4<-density(x[, 5]); x5<-density(x[, 6]); x6<-density(x[, 7])




plot(x1, col="red", xlim=c(-5, 38), ylim=c(0, 0.12), main="", xlab="Number of days", lwd=2)
lines(x2, col="blue", lwd=2)
lines(x3, col="green", lwd=2)
lines(x4, col="maroon", lwd=2)
lines(x5, col="black", lwd=2)
lines(x6, col="purple", lwd=2)


abline(v=median(x[, 2]), col="red", lwd=2, pch=24, lty=2)
abline(v=median(x[, 3]), col="blue", lwd=2, pch=24, lty=2)
abline(v=median(x[, 4]), col="green", lwd=2, pch=24, lty=2)
abline(v=median(x[, 5]), col="maroon", lwd=2, pch=24, lty=2)
abline(v=median(x[, 6]), col="black", lwd=2, pch=24, lty=2)
abline(v=median(x[, 7]), col="purple", lwd=2, pch=24, lty=2)


my.legend.size <-legend("topleft", "TN90P",  col=black, cex=1, bty = "n")

#legend(locator(n=1), c("Observed", "CanESM2", "CMCC-CMS", "inmcm4", "MIROC-ESM-CHEM", "CCSM4"), 
#       col=c("red", "blue", "green", "maroon", "pink", "purple"), text.col=c("red", "blue", "green", "maroon", "pink", "purple"), bty = "n", cex=1.2)


legend("right", c("canESM2-0.95", "CMSS-0.80", "inmcm4-0.24", "MIROC-0.95", "CCSM4-0.95"), 
       , bty = "n", cex=1, title="GCM-P.value", text.font=1, bg='lightblue')# The values of SK-Test mentioned here are the following SK-Tests


# ks.test(x[, 2], x[, 3])
# ks.test(x[, 2], x[, 4])
# ks.test(x[, 2], x[, 5])
# ks.test(x[, 2], x[, 6])
# ks.test(x[, 2], x[, 7])




##################################################################3


##################
# x<-read.csv("TX90p_Uncertainty_R-02.csv", sep=",")
# head(x)
# 
# x1<-density(x[, 2]);x2<-density(x[, 3]); x3<-density(x[, 4]); x4<-density(x[, 5]); x5<-density(x[, 6]); x6<-density(x[, 7])
# 
# 
# 
# 
# plot(x1, col="red", xlim=c(-5, 39), ylim=c(0, 0.084), main="", xlab="Number of days", lwd=2)
# lines(x2, col="blue", lwd=2)
# lines(x3, col="green", lwd=2)
# lines(x4, col="maroon", lwd=2)
# lines(x5, col="black", lwd=2)
# lines(x6, col="purple", lwd=2)
# 
# 
# abline(v=median(x[, 2]), col="red", lwd=2, pch=24, lty=2)
# abline(v=median(x[, 3]), col="blue", lwd=2, pch=24, lty=2)
# abline(v=median(x[, 4]), col="green", lwd=2, pch=24, lty=2)
# abline(v=median(x[, 5]), col="maroon", lwd=2, pch=24, lty=2)
# abline(v=median(x[, 6]), col="black", lwd=2, pch=24, lty=2)
# abline(v=median(x[, 7]), col="purple", lwd=2, pch=24, lty=2)
# 
# 
# my.legend.size <-legend("topleft", "TX90P",  col=black, cex=1, bty = "n")
# 
# #legend(locator(n=1), c("Observed", "CanESM2", "CMCC-CMS", "inmcm4", "MIROC-ESM-CHEM", "CCSM4"), 
# #       col=c("red", "blue", "green", "maroon", "black", "purple"), text.col=c("red", "blue", "green", "maroon", "black", "purple"), bty = "n", cex=1.2)
# 
# 
# legend("right", c("canESM2-0.96", "CMSS-0.96", "inmcm4-0.39", "MIROC-0.80", "CCSM4-0.59"), 
#        , bty = "n", cex=1, title="GCM-P.value", text.font=1, bg='lightblue')


# ks.test(x[, 2], x[, 3])
# ks.test(x[, 2], x[, 4])
# ks.test(x[, 2], x[, 5])
# ks.test(x[, 2], x[, 6])
# ks.test(x[, 2], x[, 7])




##################################################################3


##################
x<-read.csv("CDD_Uncertainty_R-02.csv", sep=",")
head(x)

x1<-density(x[, 2]);x2<-density(x[, 3]); x3<-density(x[, 4]); x4<-density(x[, 5]); x5<-density(x[, 6]); x6<-density(x[, 7])




plot(x1, col="red", xlim=c(0, 160), ylim=c(0, 0.05), main="", xlab="Number of days", lwd=2)
lines(x2, col="blue", lwd=2)
lines(x3, col="green", lwd=2)
lines(x4, col="maroon", lwd=2)
lines(x5, col="black", lwd=2)
lines(x6, col="purple", lwd=2)


abline(v=median(x[, 2]), col="red", lwd=2, pch=24, lty=2)
abline(v=median(x[, 3]), col="blue", lwd=2, pch=24, lty=2)
abline(v=median(x[, 4]), col="green", lwd=2, pch=24, lty=2)
abline(v=median(x[, 5]), col="maroon", lwd=2, pch=24, lty=2)
abline(v=median(x[, 6]), col="black", lwd=2, pch=24, lty=2)
abline(v=median(x[, 7]), col="purple", lwd=2, pch=24, lty=2)


my.legend.size <-legend("topleft", "CDD",  col=black, cex=1, bty = "n")

#legend(locator(n=1), c("Observed", "CanESM2", "CMCC-CMS", "inmcm4", "MIROC-ESM-CHEM", "CCSM4"), 
#       col=c("red", "blue", "green", "maroon", "pink", "purple"), text.col=c("red", "blue", "green", "maroon", "pink", "purple"), bty = "n", cex=1.2)


legend("right", c("canESM2-<0.00", "CMSS-<0.00", "inmcm4-<0.00", "MIROC-<0.00", "CCSM4-<0.00"), 
       , bty = "n", cex=1, title="GCM-P.value", text.font=1, bg='lightblue')# The values of SK-Test mentioned here are the following SK-Tests

# ks.test(x[, 2], x[, 3])
# ks.test(x[, 2], x[, 4])
# ks.test(x[, 2], x[, 5])
# ks.test(x[, 2], x[, 6])
# ks.test(x[, 2], x[, 7])



##################################################################
##################################################################
##################################################################

##################
# x<-read.csv("CWD_Uncertainty_R-02.csv", sep=",")
# head(x)
# 
# x1<-density(x[, 2]);x2<-density(x[, 3]); x3<-density(x[, 4]); x4<-density(x[, 5]); x5<-density(x[, 6]); x6<-density(x[, 7])
# 
# 
# par(mfrow=c(2,3))
# 
# plot(x1, col="red", xlim=c(0, 28), ylim=c(0, 0.5), main="", xlab="Precipitation in mm", lwd=2)
# lines(x2, col="blue", lwd=2)
# lines(x3, col="green", lwd=2)
# lines(x4, col="maroon", lwd=2)
# lines(x5, col="pink", lwd=2)
# lines(x6, col="purple", lwd=2)
# 
# my.legend.size <-legend("topright", "TN90P",  col=black, cex=1, bty = "n")
# 
# legend(locator(n=1), c("Observed", "CanESM2", "CMCC-CMS", "inmcm4", "MIROC-ESM-CHEM", "CCSM4"), 
#        col=c("red", "blue", "green", "maroon", "pink", "purple"), text.col=c("red", "blue", "green", "maroon", "pink", "purple"), bty = "n", cex=1.2)
##################################################################


