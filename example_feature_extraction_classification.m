addpath(genpath('.'));

%%%
%%% Feture extraction
%%%
%% directory to Sentinel-2 data
Sen1_tiff = 'data/zurich/S1B_IW_SLC__1SDV_20170602T053407_20170602T053434_005867_00A499_A351_Orb_Cal_Deb_Spk_TC_SUB.tif';
GLCM_tiff = 'data/zurich/S1B_IW_SLC__1SDV_20170602T053407_20170602T053434_005867_00A499_A351_Orb_Cal_Deb_Spk_TC_SUB_glcm.tif';
%% 1. Feature extraction
[polFeat] = polarimetric_feat_extraction(Sen1_tiff);
%% 2. Statstical feature
[stat_feat] = local_statistics(polFeat);
%% 3. Load GLCM feature
[GLCM_feat] = geotiffread(GLCM_tiff);
%% 4. Morphological profile 
[MP_feat] = sen1_morphological_profile(Sen1_tiff);


%% save the features
save('data/zurich/features.mat','polFeat','stat_feat','GLCM_feat','MP_feat','-v7.3')


%%
%%% Classification
%%%
%% Load training and testing label
train_tif = 'data/zurich/zurich_lcz_GT_train.tif';
test_tif  = 'data/zurich/zurich_lcz_GT_test.tif';
[dat_rw_train, dat_cl_train,lab_train] = labelAndDatCoorid(train_tif,Sen1_tiff);
[dat_rw_test,  dat_cl_test, lab_test ] = labelAndDatCoorid(test_tif ,Sen1_tiff);


%% Feature combination
feat = cat(3, stat_feat, MP_feat);
clear polFeat stat_feat GLCM_feat MP_feat
% get train and test features
feat_train = getFeature(feat,dat_rw_train,dat_cl_train);
feat_test  = getFeature(feat,dat_rw_test ,dat_cl_test );

%% Train a ccf
disp('---------------------------------------------------------');
disp(' CCF TRAINING ');
nb_trees = 40;
[ccf] = genCCF(nb_trees,double(feat_train),double(lab_train));
[predLab, ~, ~] = predictFromCCF(ccf,double(feat_test));
[ M,oa,pa,ua,kappa ] = confusionMatrix(double(lab_test),predLab);
disp(['Overall accuracy on testing: ', num2str(round(oa*1e4)/1e2),'%'])

