#Problem 1
# Below selected columns are categorical in nature

counts<- table(mtcars$carb)
barplot(counts ,main ="carb",xlab="carb",ylab = "counts",col="pink")
counts<- table(mtcars$cyl)
barplot(counts ,main ="cyl",xlab="cyl",ylab = "counts",col="red")
counts<- table(mtcars$vs)
barplot(counts ,main ="vs",xlab="vs",ylab = "counts",col="blue")
counts<- table(mtcars$am)
barplot(counts ,main ="am",xlab="am",ylab = "counts",col="yellow")
counts<- table(mtcars$gear)
barplot(counts ,main ="gear",xlab="gear",ylab = "counts",col="green")

#Problem 2
#Kindly expand the plot area so that below code works smoothly
par(mfrow = c(3,4))
plot(mtcars$mpg,mtcars$gear)
plot(mtcars$cyl,mtcars$gear)
plot(mtcars$disp,mtcars$gear)
plot(mtcars$hp,mtcars$gear)
plot(mtcars$drat,mtcars$gear)
plot(mtcars$wt,mtcars$gear)
plot(mtcars$qsec,mtcars$gear)
plot(mtcars$vs,mtcars$gear)
plot(mtcars$carb,mtcars$gear)
plot(mtcars$am,mtcars$gear)

#Problem 3

mtcars %>%  gather() %>%ggplot(aes(value)) +facet_wrap(~ key,scales = "free") +stat_density()
