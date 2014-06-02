#***************************************#
#test Script                            #
#***************************************#

#   x<-1:20
#   y <- c(TRUE,FALSE)
#   attributes(x)
#   z <- vector ("numeric", length=20)
#   a <- c(1.7,"a")
#   a1 <- c(TRUE,2)
#   print (x)
#   print(y)
#   print(z)
#   print (a1)
#   print(as.integer(x))
#   m <- matrix(1:6,nrow=2,ncol=3)
#   m<-1:10
#   dim(m) <- c(5,2)
#   print(m)
#   print(dim(m))
#   print(attributes(m))
#***************************************#
#cbind and rbind
#***************************************#
#   m1 <- 1:3
#   m2 <- 4:6
#   m3<-cbind(m1,m2)
#   m4<-rbind(m1,m2)
#   print(m3)
#   print(m4)
#***************************************#
#list
#***************************************#
#   L<-list(1,"roshan",TRUE,1+2i)
#   print(L[0])
#***************************************#
#Factors - coding categorical data
#***************************************#
#    c1 <- c("yes","mm","no","no","yes","no")
#    x1 <- factor (c1)
#    print(x1)
#    print(table(x1))
#    print(unclass(x1))
#***************************************#
#data frames ,names
#***************************************#
#   DF<-data.frame(foo=1:5,bar=c(T,F,F,T,F))
#   print(DF)
#   print(nrow(DF))
#   print(ncol(DF))
#***************************************#
#subsetting [],[[]],$
#***************************************#
#   L<-list(test1=1,test2="roshan",test3=TRUE,1+2i)
#   TEST <- c("test1","test2","test3","test4")
#   print(L[c(1,3)])
#   print(L[[2:1])
#   TEST2<-TEST[TEST>"test1"]
#   TEST3<-TEST>"test1"
#   print(TEST3)
#   print(L[2])
#   print(L[[2]])  
#   print(L$test2)
#   print(L["test2"])
#   print(L[["test2"]])  
#   L2<-list(a=list(10,12,"new"),b=c(2.34,"test"))
#   print(L2[[c(2,1)]])
#   
#   L3 <- list(testinglist=1:10)
#   print(L3$t)
#   print(L3[["te",exact="FALSE"]])
#   
#   L4 <- c(1,NA,2,4,NA,5)
#   L5 <- is.na(L4)
#   print(L4[!L5])

#***************************************#
#Reading and writing Data
#***************************************#  
#  file1<-data.frame(a=1,b="2") 
#  print(dput(file1))  
data <- read.csv("hw1_data.csv",header=TRUE)  
# bad<-is.na(data["Ozone"])
 good <- complete.cases(data[1])
good2 <-data[good,]
# print(mean(good2[1]))
# print(nrow(good2))
good3<-good2[good2[1]>31]
# data2<-data[(good2[1]>31)&(good2[4]>90)]
 print(good3)
