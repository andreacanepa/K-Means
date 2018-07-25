function new_labels = closestCentroids(X, centroids)
  K = size(centroids, 1);
  new_labels = zeros(size(X,1), 1);
  a = size(X,1);
  for i=1:a
    k = 1;
    min_dist = sum((X(i,:) - centroids(1,:)) .^ 2);
    for j=2:K
        dist = sum((X(i,:) - centroids(j,:)) .^ 2);
        if(dist < min_dist)
          min_dist = dist;
          k = j;
        end
    end
    new_labels(i) = k;
  end
end
