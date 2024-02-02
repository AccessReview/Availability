install.packages("psych", repos="http://cran.us.r-project.org")
library(psych)

study <- read.csv("scripts/ParticipantsKPI.CSV", header = TRUE, sep = ",")

describeBy(study$t,study$Nudge)
summary(aov(study$t~study$Nudge))
# t -> F(2,99) = 3173, Pr(>F) = .0462

describeBy(study$R,study$Nudge)
summary(aov(study$R~study$Nudge))
# R -> F(2,99) = 3553, Pr(>F) = .0323

describeBy(study$Mental,study$Nudge)
summary(aov(study$Mental~study$Nudge))
# Mental -> F(2,99) = 3706, Pr(>F) = .028

describeBy(study$Frustration,study$Nudge)
summary(aov(study$Frustration~study$Nudge))
# Frustration -> F(2,99) = 3404, Pr(>F) = .0372
