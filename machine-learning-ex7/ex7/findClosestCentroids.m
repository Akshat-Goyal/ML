function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
k = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

for i=1:size(X,1),
	min = -1;
	for j=1:k,
		y=0;
		for l=1:size(X,2),
			y=y+(X(i,l)-centroids(j,l))^2;
		end;
		if(min == -1),
			idx(i) = j;
			min = y;
		else,
			if(min>y),
				min=y;
				idx(i) = j;
			endif;
		endif;
	end;
end;


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%







% =============================================================

end

