close all;
clear;

% addpath('../../evaluation');
% addpath('../colorSegmentation');
% addpath('../../colorspace');
global nBins
nBins = 100;

%%Compute validation set histogram back-projection model

dataset = 'train';
root = fileparts(fileparts(fileparts(pwd)));
trainPath = fullfile(root, 'datasets', 'trafficsigns', dataset);
[aModels, bModels] = generateHistogramModel(trainPath, nBins);
save('models', 'aModels' ,'bModels');