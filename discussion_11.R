library(tidyverse)

df <- read_csv('BostonHousing.csv')

X <- c()
y <- c()

# Z-score normalization (mean 0, sd 1)
df_normalized <- df |> 
  mutate(across(where(is.numeric), ~ (. - mean(.)) / sd(.)))

model <- lm(price ~ odometer, data=normal_df)

summary(model)

plot(model)


 