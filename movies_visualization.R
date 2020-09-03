# Import data and load packages
# The IMDB ratings dataset is used

library(ggplot2)

# set your working directory which contains the csv file
setwd("") 

# import the csv file of the dataset
data <- read.csv('MovieRatings.csv') 

# Change name of the columns
colnames(data) <- c("Film", "Genre", "CriticsRating", "AudienceRating", "BudgetMillions", "Year")

# Display the first 6 rows of the dataset

head(data)

# Plot statistical transformations (the Critics vs Audience Ratings for the movies and color by Genre)
u <- ggplot(data = data, aes(x = CriticsRating, y = AudienceRating, colour = Genre))
u + geom_point() + geom_smooth(fill = NA)


# Using boxplots for better statistical insights

u <- ggplot(data = data, aes(x = Genre, y = AudienceRating, colour = Genre))
u + geom_boxplot(size = 1.2)

# Using a Jitter plot along with box plot to see the deviation in data points 
u + geom_boxplot(size = 1.2) + geom_jitter()

# Improve the plot by adding transparency
u + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5)
