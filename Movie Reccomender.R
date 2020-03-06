library(recommenderlab)
library(ggplot2)                     
library(data.table)
library(reshape2)

movie <- read.csv('IMDB-Dataset/movies.csv', stringsAsFactors = FALSE)
rating <- read.csv('IMDB-Dataset/ratings.csv')
movie_genre <- as.data.frame(movie$genre)

movie_genre1 <- as.data.frame(tstrsplit(movie_genre[,1],'[|]',type.convert= TRUE), stringsAsFactors = FALSE)
movie_genre1
colnames(movie_genre1) <- 