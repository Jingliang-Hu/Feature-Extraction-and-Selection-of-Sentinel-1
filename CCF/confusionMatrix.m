function [ M,oa,pa,ua,kappa ] = confusionMatrix( label, claMap )
%This function calculate the evaluating indices for classification
%   input:
%       - label         -- known ground truth
%       - claMap        -- predicted label
%
%   output:
%       - M             -- confusion matrix
%       - oa            -- overall accuracy
%       - pa            -- producer accuracy
%       - ua            -- user accuracy
%       - kappa         -- kappa coefficient



[M,order] = confusionmat(label,claMap);


% overall accuracy
oa = sum(diag(M))./sum(M(:));

% producer accuracy(accuracy for each class)
pa = diag(M)./sum(M,2);

% user accuracy(in each classified class, the percentage of correct classified)
ua = diag(M)./sum(M,1)';
ua(isnan(ua)) = 0;
% kappa coefficient
po = oa;
pe = sum(sum(M,1).*sum(M,2)')/sum(M(:))^2;
kappa = (po-pe)/(1-pe);




end

