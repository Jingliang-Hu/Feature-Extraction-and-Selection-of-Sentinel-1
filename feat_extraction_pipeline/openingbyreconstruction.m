function [Iobr]=openingbyreconstruction(I,se)
Ie = imerode(I, se);
Iobr = imreconstruct(Ie, I);