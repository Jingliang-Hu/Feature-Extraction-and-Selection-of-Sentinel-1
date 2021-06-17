# Feature-Extraction-and-Selection-of-Sentinel-1
This repo contains codes and methods used in "Feature Extraction and Selection of Sentinel-1 Dual-Pol Data for Global-Scale Local Climate Zone Classification". Due to the size of data is too large, this repo works with one city for an example.

## Softwares
The data processing relies on ESA toolbox [SNAP](https://step.esa.int/main/download/snap-download/). Experiments uses Matlab

## Data processing
The data processing relies on SNAP. The following flowchart demonstrates the data processing scheme.
![workflow](https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_workflow.JPG)
<!---
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_workflow.JPG" width="400" height="100">
--->

Data processing workflow in practice, step by step in pictures
> Step 1: Start SNAP and graph builder
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_1.JPG" width="600">
> Step 2: Load GPT
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_2.JPG" width="600">
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_3.JPG" width="600">
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_4.JPG" width="600">
<img src="https://github.com/Jingliang-Hu/Feature-Extraction-and-Selection-of-Sentinel-1/blob/main/feat_extraction_pipeline/pictures/processing_5.JPG" width="600">

## Feature extraction
### Polarimetric features

### Statistical features

### GLCM

### Morphological profile

## Classification with Canonical Correlation Forests

