function [MP_feat] = sen1_morphological_profile(tiffSARPath)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[polFeat,~] = geotiffread(tiffSARPath);
r = [1,3,5];
VH_MP = Make_Morphology_profile(polFeat(:,:,1), r, r, 'MP');
dd = size(VH_MP,3);
VH_MP(:,:,ceil(dd/2)) = [];
VV_MP = Make_Morphology_profile(polFeat(:,:,4), r, r, 'MP');
dd = size(VV_MP,3);
VV_MP(:,:,ceil(dd/2)) = [];
MP_feat = cat(3,VH_MP,VV_MP);
clear VH_MP VV_MP
end

