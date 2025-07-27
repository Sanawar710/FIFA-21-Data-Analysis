# Importing Packages
library(dplyr) # Used for manipulating datasets
library(ggplot2) # Used for data visualization
library(readr) # Used for reading data
library(GGally) # Used to visualize relationship between data
library(skimr) # Used for power analysis
library(corrplot) # Used to view correlation between the variables
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

# Gives information about variable types and number of missing values etc
view(skimr(fifa21df))

# Plotting Histograms
ggplot(fifa21df, mapping = aes(x = age)) +
    geom_histogram(bins = 60, fill = "steelblue", col = "white") +
    labs(title = "Player's Age Histogram")

ggplot(fifa21df, mapping = aes(x = height_cm)) +
    geom_histogram(bins = 60, fill = "steelblue", col = "white") +
    labs(title = "Player's Age Histogram")

ggplot(fifa21df, mapping = aes(x = weight_kg)) +
    geom_histogram(bins = 60, fill = "steelblue", col = "white") +
    labs(title = "Player's Age Histogram")

# Correlation between variables
cor.matrix = cor(na.omit(fifa21df[, -c(1, 2)]))
corrplot(cor.matrix, type = )

# Box-plot of variables
ggplot(data  = melt(fifa21df), mapping = aes(x = variable, y = value)) +
     geom_boxplot()

# Outlier Detection
out <- boxplot.stats(fifa21df$age)$out
out_ind <- which(fifa21df$age%in% c(out))
out_ind
fifa21df$weight_kg[c(13,103)]
fifa21df$short_name[c(13,103)]


