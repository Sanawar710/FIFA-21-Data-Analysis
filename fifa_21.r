# Importing Packages
library(dplyr) # Used for manipulating datasets
library(ggplot2) # Used for data visualization
library(readr) # Used for reading data
library(GGally) # Used to visualize relationship between data
library(skimr) # Used for power analysis
library(corrplot) # Used to view co-relation between the variables
library(reshape2) # USed to deal with dataframes

# Loading the dataset
fifa21 = read_csv("C:/Users/abrar/FIFA-21-Data-Analysis/Dataset/players_21.csv")
View(fifa21)

fifa21df = fifa21 %>%
    select(
        "short_name",
        "nationality",
        "age",
        "height_cm",
        "weight_kg",
        "pace",
        "overall",
        "shooting",
        "passing",
        "dribbling",
        "defending",
        "physic"
    )
view(fifa21df)
