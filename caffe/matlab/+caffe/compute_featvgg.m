%configure caffe
clear all;

if exist('./+caffe', 'dir')
  addpath('..');
end

% Set caffe mode
%if exist('use_gpu', 'var') && use_gpu
  caffe.set_mode_gpu();
  gpu_id = 1;  % we will use the first gpu in this demo
  caffe.set_device(gpu_id);
% else
%   caffe.set_mode_cpu();
% end

 
 weightV='/home/babu/caffe/matlab/+caffe/alexswitchn3.caffemodel';
 modelV='/home/babu/caffe/matlab/+caffe/train_val1d.prototxt';
 netV = caffe.Net(modelV,weightV, 'test'); % create net and load weights
 
 % read images parsing the entire folder
 
sizeCr=256;


fid=fopen('/home/babu/caffe/matlab/Photo-Art-50/flist.txt','r');
flist=textscan(fid,'%s');
flist=flist{1};
fclose(fid);
featMat=zeros(max(size(flist)),1,'single');

for i=1:max(size(flist))
    i

    img=imread(flist{i});
    input_data = {caffe.prepare_image(img)};
    %forward pass
    feats = netV.forward(input_data);
    feats = feats{1};
    feats = mean(feats, 2);
    [M,I] = max(feats);
    featMat(i)=I-1;
    
end
%save('labelswitch.mat','featMat');




