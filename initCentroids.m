function centroids = initCentroids(X, K) 
    centroids = zeros(K,size(X,2));
    mins = min(X);
    maxs = max(X);
    for index=1:size(centroids,1)
        centroids(index,:)=maxs.*rand(1,size(centroids,2))+mins;
    end
end
