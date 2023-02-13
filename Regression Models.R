attach(Oil_usage)

#ModelA: Linear Regression
ModelA<-lm(OilUsage~DegreeDays+HomeFactor+NumberPeople)
summary(ModelA)

plot(resid(ModelA)~fitted(ModelA))
abline(h=0,col="blue")

plot(OilUsage, fitted(ModelA),xlim = c(-100,600),ylim=c(-100,600))
abline(lm(fitted(ModelA)~OilUsage),col="red")
abline(h=0,col="blue")
abline(v=0,col="blue")

#ModelB: Linear Regression treating HomeFactor as a categorical variable
ModelB<- lm(OilUsage~DegreeDays+factor(HomeFactor)+NumberPeople)
summary(ModelB)

plot(resid(ModelB)~fitted(ModelB))
abline(h=0,col="blue")

plot(OilUsage, fitted(ModelB),xlim = c(-100,600),ylim=c(-100,600))
abline(lm(fitted(ModelB)~OilUsage),col="red")
abline(h=0,col="blue")
abline(v=0,col="blue")

#ModelC: Adding interaction terms between DegreeDays and HomeFactor
fHomeFactor <- factor(HomeFactor)
ModelC <- lm(OilUsage~DegreeDays+DegreeDays*fHomeFactor+ fHomeFactor + NumberPeople)
summary(ModelC)

plot(resid(ModelC)~fitted(ModelC))
abline(h=0,col="blue")

plot(OilUsage, fitted(ModelC),xlim = c(-100,600),ylim=c(-100,600))
abline(lm(fitted(ModelC)~OilUsage),col="red")
abline(h=0,col="blue")
abline(v=0,col="blue")

hist(OilUsage)

#ModelD: Nonlinear Regression by using the logarithmic transformation of OilUsage
LogOil <- log(OilUsage)
ModelD<- lm(LogOil~DegreeDays+DegreeDays*fHomeFactor + fHomeFactor + NumberPeople)
summary(ModelD)

plot(resid(ModelD)~fitted(ModelD))
abline(h=0,col="blue")

plot(OilUsage, exp(fitted(ModelD)),xlim = c(-100,600),ylim=c(-100,600))
abline(lm(exp(fitted(ModelD))~OilUsage),col="red")
abline(h=0,col="blue")
abline(v=0,col="blue")

hist(LogOil)









