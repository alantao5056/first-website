library(tidyverse)
library(ggthemes)

car_plot = mtcars %>%
  select(mpg, wt) %>%
  ggplot(aes(x=wt, y=mpg)) +
  geom_point() +
  geom_smooth(method = "lm", formula=y~x, se=FALSE) +
  theme_clean() +
  labs(title="Fuel Efficiency and Weight",
       subtitle="heavier cars are less fuel efficient",
       x="Weight",
       y="MPG")
