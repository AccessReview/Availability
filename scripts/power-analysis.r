install.packages("pwr", repos="http://cran.us.r-project.org")
library(pwr)

# Note:
#     k is the number of groups
#     n is the group size
#     f is the effect size. Suggestions of Cohen: 0.1 for a small effect, 0.25 for a medium effect, 0.4 for a large effect
#     sig.level is the alpha error

# small effect ( f = 0.1 )
pwr.anova.test(k = 3, n = 34, f = 0.1, sig.level = 0.05, power = NULL)
# Result: power = 0.13

# medium effect ( f = 0.25 )
pwr.anova.test(k = 3, n = 34, f = 0.25, sig.level = 0.05, power = NULL)
# Result: power = 0.60

# large effect ( f = 0.4 )
pwr.anova.test(k = 3, n = 34, f = 0.4, sig.level = 0.05, power = NULL)
# Result: power = 0.95