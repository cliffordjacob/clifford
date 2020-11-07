#Rotten Tomatoes top 200 horror flicks
library(robotstxt)
path<-paths_allowed("https://editorial.rottentomatoes.com/guide/best-horror-movies-of-all-time/")
link<-"https://editorial.rottentomatoes.com/guide/best-horror-movies-of-all-time/"
#read the website
library(rvest)
web<-read_html(link)
Movie<-web%>%html_nodes(".article_movie_title a")%>%html_text()
Year<-web%>%html_nodes(".start-year")%>%html_text()
Rating<-web%>%html_nodes(".tMeterScore")%>%html_text()
Director<-web%>%html_nodes(".director")%>%html_text()
Horror.top200=data.frame(Movie,Year,Rating,Director)
View(Horror.top200)
write.csv(Horror.top200,"Horror_movies.csv")
