function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
% ar = [0.01;0.03;0.1;0.3;1;3;10;30];
% go = zeros(64,1);
% for i=1:8,
% 	for j=1:8,
% 		C = ar(i);
% 		sigma = ar(j);
% 		model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
% 		predictions = svmPredict(model, Xval);
% 		go(8*(i-1)+j) = mean(double(predictions ~= yval));
% 	end;
% end;
% 
% [a,b] = min(go);
% 
% if (rem(b,8)==0),
% 	C = ar((b-8)/8+1)
% 	sigma = ar(8)
% else,
% 	C = ar((b-rem(b,8))/8+1)
% 	sigma = ar(rem(b,8))
% endif;
C = 0.3;
sigma = 0.1;

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







% =========================================================================

end
