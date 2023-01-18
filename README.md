# PCAWGmutations

R package for loading PCAWG data into R as MAF objects

Heavily inspired by the [**TCGAmutations**](https://github.com/PoisonAlien/TCGAmutations) package

Consider using the [**PCAWGmutations**](https://github.com/PoisonAlien/PCAWGmutations) package instead, which streams the mafs into your R environment from github, meaning you don't need waste space downloading the data.


## Installation

```
install.packages("remotes")
remotes::install_github("selkamand/PCAWGmutationsDB")
```

## Usage

### List available datasets

```
library(PCAWGmutations)
pcawg_available()
```

| Abbreviation     	| Full name                             	| Samples 	|
|------------------	|---------------------------------------	|---------	|
| Biliary-AdenoCA  	| Biliary Adenocarcinoma                	| 34      	|
| Bone-Cart        	| Bone, Cartilaginous neoplasm          	| 9       	|
| Bone-Epith       	| Bone neoplasm, epithelioid            	| 11      	|
| Bone-Osteosarc   	| Bone, Osteosarcoma                    	| 44      	|
| Breast-AdenoCa   	| Breast, Adenocarcinoma                	| 113     	|
| Breast-DCIS      	| Breast, Duct micropapillary carcinoma 	| 3       	|
| Breast-LobularCa 	| Breast, Lobular carcinoma             	| 7       	|
| CNS-Medullo      	| CNS, Medulloblastoma                  	| 146     	|
| CNS-PiloAstro    	| CNS, Pilocytic astrocytoma            	| 89      	|
| Eso-AdenoCa      	| Esophagus, Adenocarcinoma             	| 98      	|
| Head-SCC         	| Head/Neck Squamous cell carcinoma     	| 13      	|
| Kidney-RCC       	| Kidney Renal cell carcinoma           	| 74      	|
| Liver-HCC        	| Hepatocellular carcinoma              	| 273     	|
| Lymph-BNHL       	| Mature B-cell lymphoma                	| 98      	|
| Lymph-CLL        	| Chronic lymphocytic leukemia          	| 95      	|
| Lymph-NOS        	| Lymphoma, Not Otherwise Specified     	| 2       	|
| Myeloid-AML      	| Acute myeloid leukemia                	| 16      	|
| Myeloid-MDS      	| Myelodysplastic syndrome              	| 3       	|
| Myeloid-MPN      	| Myelodysplastic syndrome              	| 51      	|
| Ovary-AdenoCA    	| Ovary, Adenocarcinoma                 	| 71      	|
| Panc-AdenoCA     	| Pancreas, Adenocarcinoma              	| 241     	|
| Panc-Endocrine   	| Pancreas, Neuroendocrine tumor        	| 85      	|
| Prost-AdenoCA    	| Prostate, Adenocarcinoma              	| 267     	|
| Skin-Melanoma    	| Melanoma                              	| 70      	|
| Stomach-AdenoCA  	| Stomach, Adenocarcinoma               	| 37      	|


### Load datasets
Load the dataset of interest using `pcawg_load`.
The resulting MAF object can be analysed / visualised using the `maftools` R package

```
library(PCAWGmutationsDB)
library(maftools)

maf = pcawg_load("Biliary-AdenoCA")
plotmafSummary(maf)
```

![maftools plot](../../blob/main/inst/images/Biliary-AdenoCA_summary.png)

## Data preprocessing
![Preparing PCAWG data](inst/markdowns/prep_PCAWG_mafs.Rmd)
