# Just for  working with Rmarkdown; not needed for analysis: "knitr"
# Load tidyverse to make things simple: "tidyverse", "broom", "broom.mixed"
# Common lm add-ons: "car", "MASS", "Rmisc", "ez", "afex", "emmeans", "lme4", "lmerTest", "nlme", "VCA", "MuMIn", "lattice", "effectsize", "lmtest", 
# Graphics enhancements: "ggExtra", "patchwork", "viridis", "ggsci", "ggforce"
# Load tidyverse last, to make sure that dplyr loads after plyr. Can be some issues with the same function name appearing in both places, but doing different things. This is particularly an issue with operations by groups.
# Package names
packages <- c("car", "MASS", "Rmisc", "ez", "afex", "emmeans", "lme4", "lmerTest", "nlme", "VCA", "MuMIn", "lattice", "effectsize", "lmtest", 
              "ggExtra", "patchwork", "viridis", "ggsci", "ggforce",
              "knitr", "tidyverse", "broom", "broom.mixed"
              ) 

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {  install.packages(packages[!installed_packages]) }

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))

