library(tidyverse)

view(diamonds)
view(mtcars)


## HW
## HW 1
set.seed(42)
diamonds_test1 <- diamonds %>%
  sample_n(5000)

diamonds_test1 %>%
  count(cut)


ggplot(diamonds_test1,
       aes(cut, fill = cut))+
  geom_bar() +
  theme_minimal() +
  labs(
    title = "Cut in diamonds ",
    caption = "Data: sample is n = 5000",
    y = "count",
    x = "cut"
  ) 

## HW 2
set.seed(42)
diamonds_test2 <- diamonds %>%
  sample_frac(0.05)

diamonds_test %>%
  count(cut) 


ggplot(diamonds_test2,
       aes(carat, price, col=color)) +
  geom_point() +
  theme_minimal()  +
  labs(
    title = "Plot: price/carat ",
    caption = "Data: sample is 0.05 diamonds",
    y = "price",
    x = "arat"
  ) 

## HW3
view(mtcars)

ggplot(data = mtcars, aes(x = mpg,y = wt)) +
  geom_point() +
  geom_smooth(method="lm") +
  theme_minimal() +
  labs(
    title = "Plot: mpg/wt ",
    caption = "Data: mtcars",
    y = "wt: Weight (1000 lbs)",
    x = "mpg: Miles/(US) gallon"
  ) 














































