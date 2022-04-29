getwd()
library(dplyr)
library(ggplot2)
library(ggthemes)
install.packages("Rgb")
library(Rgb)


##rgb package installed

BRHD_cols <- list(rgb(0, 141, 168, maxColorValue = 255), rgb(241, 227, 197, maxColorValue = 255),
                  rgb(212, 69, 29, maxColorValue = 255), rgb(102, 51, 52, maxColorValue = 255),
                  rgb(255, 206, 113, maxColorValue = 255), rgb(109, 39, 106, maxColorValue = 255),
                  rgb(231, 65, 122, maxColorValue = 255))
BRHD_cols
phwins <- read.csv("phwins.csv", header = TRUE)
read.csv("phwins.csv")

q1a <- ggplot(phwins, aes(x =a_goals)) +
  geom_bar(color="steelblue", fill = "steelblue") +
  theme_classic() +
  labs(title = "I know how my work relates to the department's goals and priorities", y="Count") +
  theme(axis.title.x=element_blank())+
  scale_x_discrete(limits=c("Strongly Disagree","Disagree","Neither agree nor disagree","Agree","Strongly agree"))

q1b <- ggplot(phwins, aes(x =b_work_imp)) +
  geom_bar(color="steelblue", fill = "steelblue") +
  theme_classic() +
  labs (title = "The work I do is important",y="Count") +
  theme(axis.title.x=element_blank())+
  scale_x_discrete(limits=c("Strongly Disagree","Disagree","Neither agree nor disagree","Agree","Strongly agree"))
q1b
