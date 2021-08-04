[X,Y] = meshgrid(-2:.2:2); 
Z = X .* exp(-X.^2 - Y.^2);
Then, create a surface plot.
surf(X,Y,Z)
