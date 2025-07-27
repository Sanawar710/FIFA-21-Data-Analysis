# FIFA-21-Data-Analysis in R

This R script performs an exploratory data analysis (EDA) on the FIFA 21 players dataset. It includes data selection, statistical summaries, visualizations (histograms, box plots, scatter plots, QQ plots), correlation analysis, and outlier detection. The analysis provides insights into players' physical attributes and performance metrics.

## 📦 Dependencies

The following R packages are required to run the script:

- **dplyr** – for data manipulation
- **ggplot2** – for creating visualizations
- **readr** – for reading CSV files
- **GGally** – for generating advanced pair plots
- **skimr** – for summary statistics and data overview
- **corrplot** – for visualizing correlation matrices
- **reshape2** – for reshaping data between wide and long formats

Install all dependencies using:

```r
install.packages(c("dplyr", "ggplot2", "readr", "GGally", "skimr", "corrplot", "reshape2"))
