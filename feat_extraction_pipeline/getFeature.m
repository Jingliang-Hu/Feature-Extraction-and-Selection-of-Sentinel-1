function [feat] = getFeature(feat,rw,cl)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
sz = size(feat);
ind = sub2ind([sz(1),sz(2)], rw, cl);
feat = reshape(feat, sz(1)*sz(2),sz(3));
feat = feat(ind,:);
end

