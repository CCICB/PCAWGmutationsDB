# PCAWGmutations
R package for loading PCAWG data into R as MAF objects

Heavily inspired by the [**TCGAmutations**](https://github.com/PoisonAlien/TCGAmutations) package

## Installation

```
devtools::install_github("selkamand/PCAWGmutations")
```

## Usage

List available datasets

```
library(PCAWGmutations)
pcawg_available()
```

| Abbreviation     	| Full name                             	|
|------------------	|---------------------------------------	|
| Biliary-AdenoCA  	| Biliary Adenocarcinoma                	|
| Bone-Cart        	| Bone, Cartilaginous neoplasm          	|
| Bone-Epith       	| Bone neoplasm, epithelioid            	|
| Bone-Osteosarc   	| Bone, Osteosarcoma                    	|
| Breast-AdenoCa   	| Breast, Adenocarcinoma                	|
| Breast-DCIS      	| Breast, Duct micropapillary carcinoma 	|
| Breast-LobularCa 	| Breast, Lobular carcinoma             	|
| CNS-Medullo      	| CNS, Medulloblastoma                  	|
| CNS-PiloAstro    	| CNS, Pilocytic astrocytoma            	|
| Eso-AdenoCa      	| Esophagus, Adenocarcinoma             	|
| Head-SCC         	| Head/Neck Squamous cell carcinoma     	|
| Kidney-RCC       	| Kidney Renal cell carcinoma           	|
| Liver-HCC        	| Hepatocellular carcinoma              	|
| Lymph-BNHL       	| Mature B-cell lymphoma                	|
| Lymph-CLL        	| Chronic lymphocytic leukemia          	|
| Lymph-NOS        	| Lymphoma, Not Otherwise Specified     	|
| Myeloid-AML      	| Acute myeloid leukemia                	|
| Myeloid-MDS      	| Myelodysplastic syndrome              	|
| Myeloid-MPN      	| Myelodysplastic syndrome              	|
| Ovary-AdenoCA    	| Ovary, Adenocarcinoma                 	|
| Panc-AdenoCA     	| Pancreas, Adenocarcinoma              	|
| Panc-Endocrine   	| Pancreas, Neuroendocrine tumor        	|
| Prost-AdenoCA    	| Prostate, Adenocarcinoma              	|
| Skin-Melanoma    	| Melanoma                              	|
| Stomach-AdenoCA  	| Stomach, Adenocarcinoma               	|


Load the dataset of interest using `pcawg_load`. 
The resulting MAF object can be analysed / visualised using the `maftools` R package

```
library(TCGAmutations)
library(maftools)

maf = pcawg_load("Biliary-AdenoCA")
maftools::plotmafSummary(maf)
```

![maftools plot](../../blob/main/inst/images/Biliary-AdenoCA_summary.png)
