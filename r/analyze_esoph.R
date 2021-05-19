# Title     : Quick look at esoph
# Objective : get fluent with R
# Created by: linda
# Created on: 17/05/2021

library(tidyverse)

print("The data set:")
print(esoph)
print("Some basic data:")
summary(esoph)
print("Let's group by age groups:")
age_grouped <- esoph %>% group_by(agegp) %>% summarise(
  cases= sum(ncases), controls=sum(ncontrols), percentage=(cases / (controls + cases)) * 100
)
age_grouped
print("Let's see which age groups have the most cases:")
age_grouped[order(-age_grouped$percentage),]

print("Lets have a detailed look on the age group with the most cases")
age_group_65_74 <- esoph[esoph[,"agegp"]=="65-74",]

print("Alcohol consumption in relation to the cancer cases")
grouped_by_alcohol <- age_group_65_74 %>% group_by(alcgp) %>% summarise(
  cases= sum(ncases), controls=sum(ncontrols), percentage=(cases/ (controls + cases)) * 100
)
grouped_by_alcohol

p <- ggplot(grouped_by_alcohol, aes(x=alcgp, y=percentage, fill =alcgp)) +
  geom_bar(stat = "identity") +
  scale_fill_brewer(palette = "Blues") +
  labs(x="Alcohol consumption per day", y="Percentage")
p

ggsave("alcohol.png", width = 5, height = 5)

print("Tobacco consumption in relation to the cancer cases")
grouped_by_tobacco <- age_group_65_74 %>% group_by(tobgp) %>% summarise(
  cases= sum(ncases), controls=sum(ncontrols), percentage=(cases/ (controls + cases)) * 100
)
grouped_by_tobacco

p <- ggplot(grouped_by_tobacco, aes(x=tobgp, y=percentage, fill =tobgp)) +
  geom_bar(stat = "identity") +
  scale_fill_brewer(palette = "Blues") +
  labs(x="Tobacco consumption per day", y="Percentage")
p

ggsave("tobacco.png", width = 5, height = 5)
