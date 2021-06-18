function [Icbr]=closingbyreconstruction(I,se)
Id = imdilate(I, se);
Icbr = imreconstruct(imcomplement(Id), imcomplement(I));
Icbr = imcomplement(Icbr);
