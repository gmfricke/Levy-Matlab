% Calculates the consecutive distances between rows of coordinates
% Rows of input M are spatial coordinate vectors. Columns are the
% componenets of those vectors.
function [ dists ] = distances(M)

dists = sqrt(sum(diff(M).^2,2));

end

