function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%


% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
% 

% X (size m x 1) i.e. here its 12
% p (size 1 x 1) i.e here its 8
% X_poly (size num elements in X x p)  i.e. here its 12 x 8
% Return an m x p sized array i.e. here we want 12 x 8

% param1 is a function
% param2 is the vector X of feature values
% param3 is the row vector of powers to be applied to X
X_poly = bsxfun(@power, X, [1 : p]);



% =========================================================================

end
