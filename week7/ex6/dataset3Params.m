function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
% array of c and sigma to try
cVec = [0.01 0.03 0.1 0.3 1 3 10 30];
sigVec = [0.01 0.03 0.1 0.3 1 3 10 30];
nC = length( cVec );
nSig = length( sigVec );
precision = zeros( nC, nSig );
% loop over all combos
for ii = 1:length(cVec)
  for jj = 1:length(sigVec)
    cTemp = cVec(ii);
    sigTemp = sigVec(jj);
    % train
    model= svmTrain(X, y, cTemp, @(x1, x2) gaussianKernel(x1, x2, sigTemp)); 
    % predict on CV
    pred = svmPredict(model, Xval);
    % see how well you did
    precision(ii,jj) = mean( pred == yval );
  end
end
% keep the best one
[~, indBest] = max( precision(:) );
[cBestInd, sigBestInd] = ind2sub( [nC, nSig], indBest );
C = cVec( cBestInd );
sigma =  sigVec( sigBestInd );
% =========================================================================

end
