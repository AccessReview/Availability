install.packages("psych", repos="http://cran.us.r-project.org")
install.packages("rstatix", repos="http://cran.us.r-project.org")
library(psych)
library(rstatix)

study <- read.csv("scripts/ParticipantsKPI.CSV", header = TRUE, sep = ",")

describeBy(study$Mental, study$Nudge)
kruskal.test(study$Mental~study$Nudge)

# R			    : chi-squared = 6.4689, df = 2, p-value = 0.03938 *
# t			    : chi-squared = 4.8618, df = 2, p-value = 0.08796
# Mental		: chi-squared = 6.0188, df = 2, p-value = 0.04932 *
# Temporal		: chi-squared = 1.6002, df = 2, p-value = 0.44930
# Performance	: chi-squared = 1.1675, df = 2, p-value = 0.55780
# Frustration	: chi-squared = 6.5103, df = 2, p-value = 0.03858 *
# FDR			: chi-squared = 0.9194, df = 2, p-value = 0.63150
# FOR			: chi-squared = 5.0608, df = 2, p-value = 0.07963
# BA			: chi-squared = 1.4109, df = 2, p-value = 0.49390

dunn_test(Mental~Nudge, data=study, p.adjust.method = "bonferroni")

# R 			: none
# Mental 		: neutral x reject p.adj=0.0452
# Frustration 	: neutral x reject p.adj=0.0381
