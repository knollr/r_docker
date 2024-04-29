# For some reason, WGCNA installation with all other cran packages fails.

library("devtools")

devtools::install_version("WGCNA", version = "1.72-5", repos = c("https://cran.uni-muenster.de/", "https://bioconductor.org/packages/3.18/bioc"), upgrade = "never", force = TRUE)
