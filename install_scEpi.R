library(devtools)
library(pkgbuild)

# Install scEpigenomics software
## Bioconductor packages
devtools::install_version("TFBSTools", version="1.40.0", repos=c("https://bioconductor.org/packages/3.18/bioc","https://cran.uni-muenster.de/"),upgrade = "never", force = TRUE)
devtools::install_version("universalmotif", version="1.20.0", repos=c("https://bioconductor.org/packages/3.18/bioc","https://cran.uni-muenster.de/"),upgrade = "never", force = TRUE)
devtools::install_version("DiffBind", version="3.12.0", repos=c("https://bioconductor.org/packages/3.18/bioc","https://cran.uni-muenster.de/"),upgrade = "never", force = TRUE)
devtools::install_version("ChIPseeker", version="1.38.0", repos=c("https://bioconductor.org/packages/3.18/bioc","https://cran.uni-muenster.de/"),upgrade = "never", force = TRUE)
devtools::install_version("chromVAR", version="1.24.0", repos=c("https://bioconductor.org/packages/3.18/bioc","https://cran.uni-muenster.de/"), upgrade = "never", force = TRUE)
devtools::install_version("motifmatchr", version="1.24.0", repos=c("https://bioconductor.org/packages/3.18/bioc","https://cran.uni-muenster.de/"), upgrade = "never", force = TRUE)

## ArchR
devtools::install_github("GreenleafLab/ArchR", ref="master", repos = BiocManager::repositories())
library(ArchR)
ArchR::installExtraPackages()

## Signac
devtools::install_version("Signac", version = "1.13.0", repos = c("https://cran.uni-muenster.de/", "https://bioconductor.org/packages/3.18/bioc"), upgrade = "never", force = TRUE)
