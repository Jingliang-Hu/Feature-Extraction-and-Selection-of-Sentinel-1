addpath(genpath('.'));
%% directory to Sentinel-2 data
Sen1_tiff = 'data/munich/S1B_IW_SLC__1SDV_20170609T052529_20170609T052557_005969_00A798_1958_Orb_Cal_Deb_Spk_TC_SUB.tif';
GLCM_tiff = 'data/munich/S1B_IW_SLC__1SDV_20170609T052529_20170609T052557_005969_00A798_1958_Orb_Cal_Deb_Spk_TC_SUB_glcm.tif';
%% 1. Feature extraction
[polFeat] = polarimetric_feat_extraction(Sen1_tiff);
%% 2. Statstical feature
[stat_feat] = local_statistics(polFeat);
%% 3. Load GLCM feature
[GLCM_feat] = geotiffread(GLCM_tiff);
%% 4. Morphological profile 
[MP_feat] = sen1_morphological_profile(tiffSARPath);





