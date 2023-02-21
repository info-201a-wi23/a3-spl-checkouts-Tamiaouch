library(dplyr)
library(ggplot2)

data <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/a3-spl-checkouts-Tamiaouch/main/JohnGreen.csv")
book_data2 <- data %>% group_by(Title) %>% filter(Title == "The Fault in Our Stars" | Title == "Paper Towns" | Title == "Looking for Alaska" | Title == "An Abundance of Katherines" | Title == "Turtles All the Way Down") %>% summarize(Checkout_sum = sum(Checkouts))
ggplot(data = book_data2) +
  geom_col(aes(x = Title, y = Checkout_sum, fill = Title)) +
  labs(title = "Total Checkouts for Books", x = "Book Titles", y = "Total Checkouts", fill = "Book Title")
