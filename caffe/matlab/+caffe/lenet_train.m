%configure caffe
clear all;

if exist('./+caffe', 'dir')
  addpath('..');
end

% Set caffe mode
%if exist('use_gpu', 'var') && use_gpu
  caffe.set_mode_gpu();
  gpu_id = 0;  % we will use the first gpu in this demo
  caffe.set_device(gpu_id);
% else
%   caffe.set_mode_cpu();
% end


fid=fopen('/data1/shiv/svhn/train_mnist.txt','r');
flist=textscan(fid,'%s %d');
train_imlist=flist{1};
labels=flist{2};
fclose(fid);
clear flist;

%shuffle images
idx=randperm(max(size(labels)));
train_imlist=train_imlist{idx};
labels=labels(idx);
clear idx;


