# Install specific versions of future to enable parallelization of seurat

library(devtools)

remove.packages("future")
remove.packages("future.apply")
install_version("future", version = "1.33.2", repos = "https://cran.uni-muenster.de/", upgrade = "never",force=TRUE)
install_version("future.apply", version = "1.11.2", repos = "https://cran.uni-muenster.de/", upgrade = "never", force=TRUE)
