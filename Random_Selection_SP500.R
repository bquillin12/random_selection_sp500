################################################################################
### Randomly select 20 companies listed on the the S&P 500 index ##############
################################################################################

# Load required packages
library(rvest)
library(dplyr)

# Scrape the S&P 500 table from Wikipedia
sp500_url <- "https://en.wikipedia.org/wiki/List_of_S%26P_500_companies"
sp500_table <- read_html(sp500_url) %>%
  html_node(xpath = '//*[@id="constituents"]') %>%
  html_table()

# Check the structure of the data
 head(sp500_table)

# Randomly select 20 companies
set.seed(123)  # for reproducibility
selected_companies <- sp500_table %>%
  sample_n(20)

# Show the selected companies
print(selected_companies)


