library(dplyr)
library(ggplot2)

data <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/a3-spl-checkouts-Tamiaouch/main/JohnGreen.csv")

The_Fault <- data %>% group_by(CheckoutYear, Title) %>% filter(Title == "The Fault in Our Stars" | Title == "Paper Towns" | Title == "Looking for Alaska" | Title == "An Abundance of Katherines" | Title == "Turtles All the Way Down") %>% summarize(Checkout_sum = sum(Checkouts))
ggplot(data = The_Fault) +
  geom_col(aes(x = CheckoutYear, y = Checkout_sum, fill = Title)) +
  labs(title = "What Book Was Most Popular Every Year", x = "Year", y = "Total Checkouts", fill = "Book Title")
  
