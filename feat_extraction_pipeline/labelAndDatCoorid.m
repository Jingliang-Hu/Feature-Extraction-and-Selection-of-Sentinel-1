function [rw,cl,lab_out] = labelAndDatCoorid(lab_tif,data_tif)
%This function find the labels and the image coordinate of their
%corresponding data
%   Input:
%       - lab_tif       -- directory to label tiff file
%       - data_tif      -- directory to data tiff file
%   Output:
%       - rw            -- image row of data that correspondes to the label
%       - cl            -- image col of data that correspondes to the label
%       - lab_out       -- labels

[lab,r] = geotiffread(lab_tif);
[row,col] = find(lab>0);

[xWorld,yWorld] = intrinsicToWorld(r,row,col);
[~,r] = geotiffread(data_tif);
[rw,cl] = worldToIntrinsic(r,xWorld,yWorld);
rw = round(rw);
cl = round(cl);

ind = sub2ind(size(lab),row,col);
lab_tmp = reshape(lab,numel(lab),1);
lab_out = lab_tmp(ind);


end

