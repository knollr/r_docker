library(devtools)
library(pkgbuild)

## Install cytoverse
remotes::install_github("RGLab/cytoverse")
cytoverse::cytoverse_update(upgrades_approved = TRUE, branch="3.18")

## Install cydar
devtools::install_version("cydar", version="1.26.0", repos=c("https://bioconductor.org/packages/3.18/bioc","https://cran.uni-muenster.de/"),upgrade = "never", force = TRUE)

## Install CytoExploreR
# CytoExploreRData
devtools::install_github("DillonHammill/CytoExploreRData")
# CytoExploreR
devtools::install_github("DillonHammill/CytoExploreR")
