#******************************************************#
# Data Cleansing Exercises                             #
#******************************************************#
#JSON

library(jsonlite)

# jsondata <- fromJSON("https://api.github.com/users/jtleek/repos")
# jsondata <- fromJSON("repos.json")
# print(names(jsondata$owner))
# print(jsondata$owner$login)
# print(jsondata)

# jsondata <- fromJSON("http://search.twitter.com/search.json?q=microsoft")
# print(names(jsondata))


# jsondata <- fromJSON("views.json")
# print(jsondata["id"])

# myjson <- toJSON(iris,pretty=TRUE)
# cat(myjson)
# 
# iris2 <- fromJSON(myjson)
# head (iris2)

#Excel
# setInternet2(TRUE)
# fileURL <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xls?accessType=DOWNLOAD"
# download.file(fileURL,destfile="./cameras1.xls",method="auto")

# library(xlsx)
# camdata <- read.xlsx("Baltimore.xls",sheetIndex=1,header=TRUE)
# #print(camdata[2])
# print(head(camdata))













