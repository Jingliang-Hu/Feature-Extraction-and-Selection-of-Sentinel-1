function [polFeat] = polarimetric_feat_extraction(tiffSARPath)
    % read
    % tiffSARPath = 'data/munich/S1B_IW_SLC__1SDV_20170609T052529_20170609T052557_005969_00A798_1958_Orb_Cal_Deb_Spk_TC_SUB.tif'
    [polsar,~] = geotiffread(tiffSARPath);
    polsar = double(cat(3,polsar(:,:,1),polsar(:,:,4),polsar(:,:,2),polsar(:,:,3)));

    % features
    coh = sqrt(polsar(:,:,3).^2+polsar(:,:,4).^2)./sqrt(polsar(:,:,1).*polsar(:,:,2));
    phase = atan2(polsar(:,:,4),polsar(:,:,3));
    polFeat = cat(3,polsar(:,:,1:2),coh,phase);
    polFeat(isnan(polFeat(:))) = 0;    
end
