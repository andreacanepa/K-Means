threshold = 0.01;

kmeans_centroids = initCentroids(X, K);
kmeans_iter = 0;
kmeans_labels = zeros(size(X,1),K);
kmeans_labels_prec = ones(size(X,1),K);

while ((kmeans_iter < N_MAX) && (norm(kmeans_labels - kmeans_labels_prec) > threshold))
  kmeans_labels_prec = kmeans_labels;
  kmeans_labels = closestCentroids(X, kmeans_centroids);
  kmeans_centroids = recomputeCentroids(X, kmeans_labels, K);
  kmeans_iter = kmeans_iter + 1;
end
