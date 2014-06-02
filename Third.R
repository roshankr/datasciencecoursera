# myfunction <- function(x) {
# y <- rnorm(200)
# hist(y*x)
# }
# measrs <- data.frame(gender = c("M", "M","F"),
# ht = c(172, 186.5, 165), wt = c(91,99, 74))
# mes<-measrs[1:2]
# gen <- mes["gender"]
#
# measrs$age <- c(28, 55, 43)
# print(measrs)
# m2 <- data.frame(gender = c("M", "F"),ht = c(170, 166),
# wt = c(68, 72),age = c(38, 22))
# rownames(m2) <- c("S4", "S5")
# measrs2 <- rbind(measrs, m2)
# print (m2)
# print(measrs2)
# assignment <-read.csv("hw1_data.csv",header=TRUE)
# clnassign <- assignment[assignment$Ozone >= 31, ]

#assignment2 <- assignment[complete.cases(assignment[,1:1]),]
#
# attach (assignment2)
# clnassign <-assignment2[Ozone > 31 & Temp >90,]
# solar <- clnassign[2]
# print(mean(solar))

#What is the mean of "Temp" when "Month" is equal to 6?
#attach (assignment)
# clnassign2 <- assignment[Month ==6,]
# print(mean(clnassign2["Temp"]))
# print(clnassign2)
#What was the maximum ozone value in the month of May (i.e. Month = 5)?
#clnassign3 <- assignment2[Month ==5,]
#clnassign4 <- clnassign3[order(clnassign3[,"Ozone"]), ]
# print(clnassign4)

#******************************************************#
# Week 2 Training                                      #
#******************************************************#
# control structures              
#******************************************************#
# x<- 3
# if (x>3)
# {
#   Y <- 10
# }else
# {
#   Y <- 5
# }
# print (Y)

# Vect1 <- c (1:10)
# for (i in 1:10)
# {
#   print(Vect1[[i]])
# }

# for (i in seq_along(Vect1))
# {
#   print(Vect1[[i]])
# }

# for (i in Vect1)
# {
#   print(Vect1[[i]])
# }

# x <-read.csv("hw1_data.csv",header=TRUE)
# x<- matrix(1:6,2,3)
# for (i in seq_len(nrow(x)))
# {
#     for (j in seq_len(ncol(x)))
#     {
#        print(x[i,j])
#     }
# }

# count <- 0
# while (count < 10)
# {
#   print(count)
#   count <- count + 1
# }
#******************************************************#
# functions             
#******************************************************#

# myplot <- function(a,b,type="l",...)
# {
#   plot(a,b,type=type,...)
# }
#******************************************************#
# dates             
#******************************************************#
# x <- as.Date("1970-01-01")
# print(class(x))
# print(unclass(x))
# print(weekdays(as.Date("2014-05-27")))

# time<-Sys.time()
# p<-as.POSIXlt(time)
# p1<-unclass(p)
# print(p1["hour"])

# cube <- function(x, n) {
#     x^3
# }
# x <- 1:10
# if(x > 5) {
#     x <- 0
# }
# f <- function(x) {
#     g <- function(y) {
#         y + z
#     }
#     z <- 4
#     x + g(x)
# }

#******************************************************#
# Week 3             
#******************************************************#
#  assignment <-read.csv("hw1_data.csv",header=TRUE)
# # clnassign <- assignment[assignment$Ozone >= 31, ]
# 
# assignment2 <- assignment[complete.cases(assignment[,1:6]),]
#
# attach (assignment2)
# clnassign <-assignment2[Ozone > 31 & Temp >90,]
# solar <- clnassign[2]
# print(mean(solar))
# list1<-lapply(assignment2,mean)
# print(list1)
# test<-list(1:5,5:10)
# list2<-lapply(test,mean)
# print(list2) 
# Mat <- matrix(1:20,5,4)
# print(nrow(Mat))
# print(apply(Mat,1,mean))
 
# testlist <- list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
# #print(testlist) 
# print(mapply(rep,1:4,4:1))
 
# printmsg <- function(x) {
#     
#     if (x>0) 
#         print ("x is greater than zero")
#     else
#         print ("x is less than zero")
#      invisible(x)
 #******************************************************#
 # Debugging tools
 #******************************************************#
 #traceback > print out the function call stack after an err
 #debug > debug mode , step by step chck
 #browser > suspsend the fucntion from where it is called , 
 # goes in debug mode
 #trace > allows u to insert debugging code in to a function 
 # a specific places
 #recover > allows u to modify the error behavious so that u can 
 # browse the function call stack
 
# debug(lm)
# lm(y~x)
#  options(error=recover)
#  read.csv("none")
#  
 #******************************************************#
 # Quiz 3
 #******************************************************#
 
#  library(datasets)
#  data(iris)
#  
#  
# attach (iris)
# 
# clnassign <-iris[iris$Species =="virginica",]
# print(mean(clnassign[3]))
 
# library(datasets)
# data(mtcars)
# print(with(mtcars, tapply(hp, cyl, ave)))
 
# library(datasets)
# data(iris)
# #print(iris)
# print(with(iris, tapply(Sepal.Length,Species,mean))) 
 
# library(datasets)
# data(mtcars)
# print(sapply(split(mtcars$mpg, mtcars$cyl), mean))
# print(split(mtcars, mtcars$cyl))
#******************************************************#
# Week 4
#******************************************************#

# str(lm)
# x<-rnorm(100,2,4)
# print(summary(x))
# print(str(x)) 
# assignment <-read.csv("hw1_data.csv",header=TRUE)
# print(summary(assignment))
# print(str(assignment))
# Generating Random numbers

#rnorm -> Random variable , dnorm -> density, pnorm -> cumulative dis, rpois
# qnorm-> quantile fn
# print(mean(x))

# set.seed=1
# print (rnorm(5))
# 
# print (rnorm(5))
# 
# set.seed=1
# print (rnorm(5))
 
# set.seed=20
# x<-rnorm(100)
# e <- rnorm(100,0,2)
# y<-0.5 + 2*x + e
# summary(y)
# plot(x,y)

# s1<-sample(1:10,4)
# print(s1)
#  

# print(system.time())
#Rprof fucntion starts the profiler in R 

# myfunc <- function(x){
#     assignment <-read.csv("hw1_data.csv",header=TRUE)
#     print(assignment)}
 
# funAgg <- function(x) {
#     
#     for (i in 1:10) {
#         x <- x + i
#     }
#     x
# }
 
# set.seed(1)
# print(rpois(5, 2))

# set.seed(10)
# x <- rbinom(10, 10, 0.5)
# e <- rnorm(10, 0, 20)
# y <- 0.5 + 2 * x + e
# plot(x,y)


# set.seed=20
# x<-rnorm(100)
# e <- rnorm(100,0,2)
# y<-0.5 + 2*x + e
# lines(x,y) 

