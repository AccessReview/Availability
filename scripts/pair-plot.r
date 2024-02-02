install.packages("GGally", repos="http://cran.us.r-project.org")
install.packages("ggforce", repos="http://cran.us.r-project.org")
library(GGally)
library(ggforce)

ggplot <- function(...) ggplot2::ggplot(...) + scale_color_manual(values=c("#8ad879", "#5acfc9", "#f3533a")) + scale_fill_manual(values=c("#8ad879", "#5acfc9", "#f3533a"))
unlockBinding("ggplot",parent.env(asNamespace("GGally")))
assign("ggplot",ggplot,parent.env(asNamespace("GGally")))

studyData <- read.csv("scripts/ParticipantsKPI.CSV", header = TRUE, sep = ",")
print(studyData)
data(studyData)

png(filename="pair-plot.png", 
	width = 1280, height = 720, 
	units = "px", pointsize = 12)

ggpairs(studyData, 
	cardinality_threshold=94,
	ggplot2::aes(colour=Nudge), 
	upper = list(continuous = wrap("cor", method="spearman")), 
	lower=list(continuous=wrap(ggally_smooth_loess, se=FALSE)), 
	diag=list(continuous=wrap("barDiag")))