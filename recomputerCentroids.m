function centroids = recomputeCentroids(X, id, K)
  [a b] = size(X);
  centroids = zeros(K, b); 
  for i=1:K
    xi = X(id==i,:);
    ck = size(xi,1);
    centroids(i, :) = (1/ck) * sum(xi);
  end
end
