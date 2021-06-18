function [mpFeat] = sar_morphological_profile(tiffSARPath)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[polsar,~] = geotiffread(tiffSARPath);
radius = [1,3,5];
VH_MP = Make_Morphology_profile(polsar(:,:,1), radius, radius, 'MP');
dd = size(VH_MP,3);
VH_MP(:,:,ceil(dd/2)) = [];

VV_MP = Make_Morphology_profile(polsar(:,:,4), radius, radius, 'MP');
dd = size(VV_MP,3);
VV_MP(:,:,ceil(dd/2)) = [];

mpFeat = cat(3,VH_MP,VV_MP);
clear VH_MP VV_MP
end

