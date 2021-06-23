# Feature-Extraction-and-Selection-of-Sentinel-1
This repo contains codes and methods used in "Feature Extraction and Selection of Sentinel-1 Dual-Pol Data for Global-Scale Local Climate Zone Classification". 
> Jingliang Hu, Pedram Ghamisi, Xiao Zhu (2018). Feature Extraction and Selection of Sentinel-1 Dual-Pol Data for Global-Scale Local Climate Zone Classification. ISPRS International Journal of Geo-Information, 7(9), pp. 379.
> 
```bibtex
@article{hu2018feature,
  title={Feature extraction and selection of sentinel-1 dual-pol data for global-scale local climate zone classification},
  author={Hu, Jingliang and Ghamisi, Pedram and Zhu, Xiao Xiang},
  journal={ISPRS International Journal of Geo-Information},
  volume={7},
  number={9},
  pages={379},
  year={2018},
  publisher={Multidisciplinary Digital Publishing Institute}
}
```
Due to the size of data is too large, this repo works with one city for an example.

## Softwares
The data processing relies on ESA toolbox [SNAP](https://step.esa.int/main/download/snap-download/). Experiments uses Matlab

## Data processing
The data processing relies on SNAP. The following flowchart demonstrates the data processing scheme.
![workflow](https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_workflow.JPG)
<!---
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_workflow.JPG" width="400" height="100">
--->

Data processing workflow in practice, step by step with SNAP
> Step 1: Start SNAP and graph builder
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_1.JPG" width="600">
> Step 2: Load GPT graph
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_2.JPG" width="600">
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_3.JPG" width="600">
> Step 3: Browse the marked tabs to modify input, output, and parameters if necessary; Then start RUN
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_4.JPG" width="600">
> Step 4: Finished the data processing workflow. The following image is the processed S1 data of Munich.
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_5.JPG" width="600">

One can utilize SNAP graph processing tool to realize batch processing. One of our solution is [here](https://github.com/zhu-xlab/So2Sat-LCZ-Classification-Demo/tree/master/Modules/2_preprocessing). 

## Feature extraction
### Polarimetric features

### Statistical features

### GLCM
We apply SNAP toolbox to extract GLCM features

<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/snap_glcm_1.JPG" width="600">
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/snap_glcm_2.JPG" width="600">

### Morphological profile

## Classification with Canonical Correlation Forests

