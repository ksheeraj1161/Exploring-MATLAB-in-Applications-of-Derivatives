clear all
close all
clc
clear
syms t C1 C2 C3
A=input('Enter A: ');
[P,D]=eig(A);
L1=D(1);L2=D(5);L3=D(9);
y1=C1*exp(L1*t);y2=C2*exp(L2*t);y3=C3*exp(L3*t);
Y=[y1;y2;y3];
X=P*Y
