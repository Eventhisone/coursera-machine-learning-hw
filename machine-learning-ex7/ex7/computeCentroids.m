function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);
% X: m x 2
% idx: n x 1
% K: 1 x 1
% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% idx(i) tells which centroid example(i) is assigned to
% sum the x for each example assigned to centroid k
% sum the y for each example assigned to centroid k
% divide each by the number c of examples assigned to centroid k


% =============================================================
for i = 1:K
    % find gives us a n x 1 matrix of the indices in idx with values of i
    sel = find(idx == i);
    % Use the values of sel to index into X
    centroids(i, :) = mean(X(sel, :));
end


end

