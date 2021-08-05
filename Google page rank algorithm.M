numsims = 2000; % Parameter controlling the number of simulations
% adjacency matrix of the network
G = [0 0 0 1 0 0; 1 0 0 0 0 0; 1 0 0 0 0 0; 0 1 1 0 1 0; 0 0 1 0 0 
1; 0 0 0 1 0 0];
n = length(G);
%% Power Method to find PageRank of network 
% given by adjacency matrix G
 
state = 1; % initial state of the system
M = zeros(n,n);
for i = 1:n;
 rowSum = sum(G(i,:));
 if (rowSum ~= 0)
 M(i,:) = 1/rowSum*G(i,:);
 end 
end
% Initialize vectors
vinit = zeros(1,n); vinit(1) = 1; 
vNew = vinit;
v = zeros(1,n); 
iterates = 0;
while max(abs(vNew-v)) > .001
 v = vNew;
 vNew = v*M;
 iterates = iterates + 1;
end
%% Give results in bar chart
bar(vNew)
convergence = max(abs(vNew - v));
text = sprintf('Power Method convergence to %4.2e in all entries in 
%d iterations.',convergence,iterates);
title(text);
axis tight
ranking = vNew;
[sortedRanking, indices] = sort(ranking,'descend');
fprintf('\n****************************\n')
fprintf(' PageRank results\n')
fprintf('****************************\n')
fprintf('Web Page PageRank\n')
fprintf('----------------------------\n')
for i=1:length(sortedRanking)
 fprintf('%5d %5.3f \n',indices(i),sortedRanking(i));
end
fprintf('\nNote your connectivity matrix was: ')
G
