clear all
close all
clc
function [ns, seq] = collatz(n)
seq(1) = n;
i = 2; 
while seq(i-1) ~= 1
 if mod(seq(i-1), 2) == 0
 seq(i) = seq(i-1)/2;
 else
 seq(i) = 3*seq(i-1) + 1;
 end
 i = i+1;
end
ns = length(seq);
