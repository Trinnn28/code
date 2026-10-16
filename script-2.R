library(tidyverse)

# Had an OK carrot cake from Publix

hist_p <- ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.05, boundary = 0) +
  scale_x_continuous(
    name = "carat",
    limits = c(0, 6),
    breaks = 0:6,
    expand = c(0, 0)
  ) +
  scale_y_continuous(
    name = "numbers",
    limits = c(0, 7000),
    breaks = seq(0, 7000, by = 1000),
    expand = c(0, 0)
  ) +
  labs(
    title = "History of carat (weight) among 50,000 diamonds.",
    subtitle = "Carats just at or above meaningful numbers are very common.",
    caption = "Source: ggplot2::diamonds dataset."
  )

ggsave(file = "diamonds.png", plot = hist_p)
