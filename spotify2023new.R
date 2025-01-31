mypath = "~/data mining Assignment" # you need to change the string to your directory
setwd(mypath) # set working directory
getwd() # check if the working directory has changed correctly

spotify_2023_new_data <- read.csv("spotify2023new.csv", header= TRUE)
spotify_2023_new_data


names(spotify_2023_new_data)
head(spotify_2023_new_data)
tail(spotify_2023_new_data)
summary(spotify_2023_new_data)
str(spotify_2023_new_data)
 

nrow(spotify_2023_new_data)
ncol(spotify_2023_new_data)
dim(spotify_2023_new_data) 


#cluster package is a powerful tool for cluster analysis 
install.packages("cluster") # install "cluster" package
library(cluster) # activate "cluster" package


spotify_1=spotify_2023_new_data[-1]
View(spotify_1)

spotify_2= spotify_1[-1]
View(spotify_2)

spotify_2023_new_data_2 = spotify_2[-1]
View(spotify_2023_new_data_2)


pairs(spotify_2023_new_data_2)




# Convert the 'Track.Name' column to a factor
spotify_top_50$Track.Name <- as.factor(spotify_top_50$Track.Name)

# Convert the factor levels to numeric
spotify_top_50$numeric_Track.Name <- as.numeric(spotify_top_50$Track.Name)
class(spotify_top_50$Track.Name)


# Convert the 'Artist.Name' column to a factor
spotify_top_50$Artist.Name <- as.factor(spotify_top_50$Artist.Name)

# Convert the factor levels to numeric
spotify_top_50$numeric_Artist.Name<- as.numeric(spotify_top_50$Artist.Name)
class(spotify_top_50$Artist.Name)






# Convert the 'Genre' column to a factor
spotify_top_50$Genre <- as.factor(spotify_top_50$Genre)

# Convert the factor levels to numeric
spotify_top_50$numeric_Genre <- as.numeric(spotify_top_50$Genre)
class(spotify_top_50$Genre)

# Display the updated dataset

head(spotify_top_50)



[, c("Track.Name"," Artist.Name ","Genre ","Beats.Per.Minute","Energy ",
     "Danceability","Loudness..dB..","Liveness","Valence.","Length.","Acousticness.."," Speechiness.","Popularity","Popularity")]
head(spotify_n)


spotify_n<-spotify_top_50 [,c(1,5,6,7,8,9,10,11,12,13,14)] #remove chr column before normalize
View(spotify_n)






