data <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/a3-spl-checkouts-Tamiaouch/main/JohnGreen.csv")
library(ggplot2)
library(dplyr)
The_Fault2 <- data %>% group_by(CheckoutYear) %>% filter(Title == "The Fault in Our Stars") %>% summarize(TheFaultInOurStars = sum(Checkouts))
book_data <- data %>% group_by(CheckoutYear) %>% summarize(JohnGreen = sum(Checkouts)) %>% filter(CheckoutYear > 2012)
book_data <- left_join(The_Fault2, book_data)
ggplot(data = book_data) +
  geom_line(aes(x = CheckoutYear, y = JohnGreen)) +
  labs(title = "John Green's Trend", x = "Years", y = "Checkout Count")

ggplot(data = book_data) +
  geom_line(aes(x = CheckoutYear, y = TheFaultInOurStars)) +
  labs(title = "The Fault in Our Stars Trend", x = "Years", y = "Checkout Count")
