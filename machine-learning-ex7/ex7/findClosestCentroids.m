function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% Each row(i) in distances will be the distance from example(i) to centroid(j).
distances = zeros(size(X,1), K);

% Compute the squared distance between each example and each centroid.
for i = 1:K
    dist = bsxfun(@minus, X, centroids(i, :));
    distSquared = sum(dist.^2,2);
    
    distances(:,i) = distSquared;
end
% idx(i) is example(i).
% Assign the idx(i) to centroid example(i) is closest to.
for i = 1:size(X,1)
    [val,index] = min(distances(i,:));
    idx(i) = index;
end

% =============================================================

end

