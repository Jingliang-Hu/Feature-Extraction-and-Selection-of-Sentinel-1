function [ output ] = convertlabelrepre( label_vector )
%convertlabelrepre Summary of this function goes here
%   Detailed explanation goes here
% This functions aims to convert label representation from a vector
% containing zeros(unlabeled data) into the matrix, where rows represent
% for each pixel data, and cols represent for each class, and it keeps the
% class that does not contain in this label ! 
%output is original one with the same rows with label_vector

length_input = length(label_vector);

output = zeros(length_input,17);
% assume we have 17 classes
for i = 1:length_input
    if label_vector(i) == 0
        % do nothing
    end
    if label_vector(i) ~= 0
        output(i,label_vector(i)) = 1;
    end
end

end

