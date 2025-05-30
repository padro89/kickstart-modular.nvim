library(tidyverse)
#  [1] "lubridate" "forcats"   "stringr"   "dplyr"     "purrr"     "readr"     "tidyr"     "tibble"    "ggplot2"
# [10] "tidyverse" "nvimcom"   "stats"     "graphics"  "grDevices" "utils"     "datasets"  "methods"   "base"

df <- data.frame(
  x = rnorm(100),
  y = rnorm(100)
)
df$x
df$x

plot <- df |>
  ggplot(aes(x, y)) +
  geom_point(size = 3, alpha = 0.7) +
  theme_bw(base_size = 12)

print(plot)
