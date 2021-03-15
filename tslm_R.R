library("forecast")
library("fpp2")
data(uschange)
autoplot(uschange[,c("Consumption","Income")]) +
  ylab("% change") + xlab("Year")

uschange %>%
  as.data.frame() %>%
  ggplot(aes(x=Income, y=Consumption)) +
  ylab("Consumption (quarterly % change)") +
  xlab("Income (quarterly % change)") +
  geom_point() +
  geom_smooth(method="lm", se=FALSE)

tslm(Consumption ~ Income, data=uschange)

uschange %>%
  as.data.frame() %>%
  GGally::ggpairs()
