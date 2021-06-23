function [stat_feat] = local_statistics(feat)
%This function calculates mean, standard deviation, max, min, and median of
%a local 10 by 10 window for all channels.
%   Detailed explanation goes here

[rw,cl,cn] = size(feat);
stat_feat = zeros(rw,cl,cn*5);

for i = 1:cn
    data_chl = feat(:,:,i);
    data_chl = padarray(data_chl,[5 5],'symmetric');
    data_tmp = zeros(rw+10,cl+10,121);
    count = 1;
    for m = -5:5
        for n = -5:5
            data_tmp(:,:,count) = circshift(data_chl,[m n]);
            count = count+1;
        end
    end
    clear data_chl
    tmp = mean(data_tmp,3);
    stat_feat(:,:,(i-1)*5+1) = tmp(6:end-5,6:end-5);
    tmp = max(data_tmp,[],3);
    stat_feat(:,:,(i-1)*5+2) = tmp(6:end-5,6:end-5);
    tmp = min(data_tmp,[],3);
    stat_feat(:,:,(i-1)*5+3) = tmp(6:end-5,6:end-5);
    tmp = median(data_tmp,3);
    stat_feat(:,:,(i-1)*5+4) = tmp(6:end-5,6:end-5);
    tmp = std(data_tmp,[],3);
    stat_feat(:,:,(i-1)*5+5) = tmp(6:end-5,6:end-5);
    clear tmp
end


end




