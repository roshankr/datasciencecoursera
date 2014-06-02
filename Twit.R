library(twitteR)
library(tm) 
library(wordcloud) 

# reqURL <- "https://api.twitter.com/oauth/request_token";
# accessURL <- "https://api.twitter.com/oauth/access_token";
# authURL <- "https://api.twitter.com/oauth/authorize";
# consumerKey <- "IVo9ta9SF7s1UmVDSKfw2doUc";
# consumerSecret <- "TfWV82bmgU4UFasGJdPEyp4Zw3pVZuzajGforyOaFkZTPsxMKJ"
# 
# twitCred <- OAuthFactory$new(consumerKey=consumerKey,
#                              consumerSecret=consumerSecret,
#                              requestURL=reqURL,
#                              accessURL=accessURL,
#                              authURL=authURL)
# 
# options(RCurlOptions = list(cainfo = system.file
#                             ("CurlSSL", "cacert.pem", package = "RCurl")))
# download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem")
# 
# ############ Pause here for the Handshake Pin Code 
# twitCred$handshake(cainfo="cacert.pem")
# 
# ############ Wait till you see True 
# registerTwitterOAuth(twitCred)
# 
# ############# Move twit to a list 
# a=searchTwitter("#rstats", n=2000)

############# Move twit to a list 
tweets_df = twListToDF(a)
# print(names(tweets_df))
# print(tweets_df)
############# Writing Tweet to a CSV file 
# twitWrite <-write.csv(tweets_df,"tweet.csv",sep = ",",
# col.names = NA,qmethod = "double")

############# TM package text mining
twitText=Corpus(VectorSource(tweets_df$text), readerControl = list(language = "eng"))
#############Changes case to lower case 
twitText<- tm_map(twitText, tolower) 
#############Strips White Space 
twitText<- tm_map(twitText, stripWhitespace) 
#############Removes Punctuation
twitText <- tm_map(twitText, removePunctuation)
# inspect(twitText)
tdm <- TermDocumentMatrix(twitText) 

m1 <- as.matrix(tdm)

v1<- sort(rowSums(m1),decreasing=TRUE) 
d1<- data.frame(word = names(v1),freq=v1) 
# d3 <-d1[order(d1$word,d1$freq),]
# d2<-d1[with(d1, order(word,freq)), ]
print(wordcloud(d1$word,d1$freq))


#thanks

