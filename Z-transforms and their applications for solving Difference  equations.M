clc
clear all
syms z Y n positive
syms y(n)
F=input('Input the coefficients [a,b,c]: ');
a=F(1);
b=F(2);
c=F(3);
LHS=ztrans(a*y(n+2)+b*y(n+1)+c*y(n),n,z);
nh=input('enter the non homogeneous part f(n): ');
RHS=ztrans(nh,n,z);
IC=input('enter the initial conditions in the form [y0,y1]: 
');
y0=IC(1);
y1=IC(2);
newLHS=subs(LHS,{ztrans(y(n),n,z),y(0),y(1)},{Y,y0,y1});
Y=solve(newLHS -RHS,Y);
yn=iztrans(Y,z,n)
nrange=0:20;
Y=real(subs(yn,n,nrange));
stem(nrange,Y)
