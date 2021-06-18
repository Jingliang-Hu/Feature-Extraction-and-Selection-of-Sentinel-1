function Y1=Make_Morphology_profile(Image,r1,r2,options)
% Making Morphology profile
% Usage
% Y1=Make_Morphology_profile(Image,np,npr,r1,r2,options)
% Inputs
% Image: 2D or 3D image
% r1: A vector contains the radius of the disk for MP using closing and openning  
% r2: A vector contains the radius of the disk for MP using closing and openning by reconstruction
% options: 
%          'MP': Morphology profile using closing and openning  
%          'MPr': Morphology profile using closing and openning by
%          reconstruction
%          'MPboth': Morphology profile contains 'MP' and 'MPr'
% Output
% Morphology Profile
%  
% see imclose, imopen, closingbyreconstruction, openingbyreconstruction
% 
% (c) 2013 Written by Behnood Rasti
Y1=[];
np=length(r1);
npr=length(r2);
[r,c,p]=size(Image);
IMc=zeros(r,c,np);
IMo=IMc;
IMcr=zeros(r,c,npr);
IMor=IMcr;
for j=1:p
    switch options
        case 'MP'
            for i=1:np
                se1 = strel('disk',r1(i));
                IMc(:,:,i) = imclose(Image(:,:,j),se1);
                IMo(:,:,i) = imopen(Image(:,:,j),se1);
            end
            Y=cat(3,IMc,Image(:,:,j),IMo);
            Y1=cat(3,Y1,Y);
        case 'MPr'
            for i=1:npr
                se2 = strel('disk',r2(i));
                IMcr(:,:,i) = closingbyreconstruction(Image(:,:,j),se2);
                IMor(:,:,i) = openingbyreconstruction(Image(:,:,j),se2);
            end
            Y=cat(3,IMcr,Image(:,:,j),IMor);
            Y1=cat(3,Y1,Y);
        case 'MPboth'
            for i=1:np
                se1 = strel('disk',r1(i));
                IMc(:,:,i) = imclose(Image(:,:,j),se1);
                IMo(:,:,i) = imopen(Image(:,:,j),se1);
            end
            for i=1:npr
                se2 = strel('disk',r2(i));
                IMcr(:,:,i) = closingbyreconstruction(Image(:,:,j),se2);
                IMor(:,:,i) = openingbyreconstruction(Image(:,:,j),se2);
            end
            Y=cat(3,IMcr,IMc,Image(:,:,j),IMo,IMor);
            Y1=cat(3,Y1,Y);
        otherwise
            error('Please check out the help')
    end
end