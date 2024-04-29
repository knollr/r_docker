R studio docker container for scRNA-seq analyses build on bioconductor_docker:RELEASE_3_18 and R v4.3.2.

The Docker image is build in three layers: 
1. Installation of R packages on top of the bioconductor image: docker build -f Dockerfile_R . -t jsschrepping/r_docker:jss_R432_bioc318
2. Installation of pip packages on top: docker build -f Dockerfile_pip . -t jsschrepping/r_docker:jss_R432_bioc318_pip
3. Installation of conda packages on top: docker build -f Dockerfile_conda . -t jsschrepping/r_docker:jss_R432_bioc318_pip_conda

Installed R packages include:

+ DESeq2
+ tximport
+ limma
+ edgeR
+ complexheatmap
+ EnhancedVolcano
+ clusterProfiler
+ gage
+ monocle & monocle3
+ slingshot
+ SingleCellExperiment
+ Seurat v5.0.3
+ SeuratDisc
+ SingleR
+ Rcistarget
+ harmony
+ symphony
+ SoupX
+ AUcell
+ Ucell
+ DittoSeq

+ DiffBind
+ ChipSeeker
+ Signac
+ ArchR
+ Gviz
+ ChromVar

+ CytoExploreR
+ CytoML
+ FlowWorkspace
+ ggcyto
+ openCyto
+ cydar

+ Human Annotation databases (org.Hs.eg.db, TxDb.Hsapiens.UCSC.hg38.knownGene, EnsDb.Hsapiens.v86)

and many more...

In addition, following python packages are installed to be used via reticulate:
+ MACS3
+ Cytosig
+ scanpy
+ scvelo
+ cellrank
+ scrublet
+ CellphoneDB
+ rapids packages for gpu usage

Installed versions of packages are documented in /logs/log_install_R.txt, /logs/log_install_pip.txt and /logs/log_install_conda.txt.

For instructions on how to launch RStudio in docker please read: https://ropenscilabs.github.io/r-docker-tutorial/02-Launching-Docker.html.
