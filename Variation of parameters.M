% Variation of parameters to solve second order differential equations
clear all
close all
clc
syms c1 c2 x m
F=input('Enter the coefficients [a,b,c]: ');
f=input('Enter the RHS function f(x): ');
a=F(1);b=F(2);c=F(3);
AE=a*m^2+b*m+c; % Auxilliary Equation
m=solve(AE);
m1=m(1); m2=m(2);
D=b^2-4*a*c;
if(D>0) % Roots are real and different
y1=exp(m1*x);y2=exp(m2*x);
elseif (D==0)% Roots are real and equal
 y1=exp(m1*x);y2=x*exp(m1*x);
else % Roots are complex
alfa=real(m1);beta=imag(m1);
y1=exp(alfa*x)*cos(beta*x);
y2=exp(alfa*x)*sin(beta*x);
end
yc=c1*y1+c2*y2; % Complimentary Solution
%%% Particular Integral by Method of variation of parameters.
fx=f/a;
W=y1*diff(y2,x)-y2*diff(y1,x); %%% Wronskian%%%
u=int(-y2*fx/W,x);
v=int(y1*fx/W,x);
yp=y1*u+y2*v; %%%Particular Integral%%%
y_gen=yc+yp; %%%General Solution%%%
check=input('If the problem has initial conditions then enter 
1 else enter 2: ');
if(check==1)
cn=input('Enter the initial conditions [x0, y(x0), Dy(x0)]:');
dy_gen=diff(y_gen);
eq1=(subs(y_gen,x,cn(1))-cn(2));
eq2=(subs(dy_gen,x,cn(1))-cn(3));
[c1 c2]=solve(eq1,eq2);
y=simplify(subs(y_gen));
disp('The complete solution is');
disp(y);
ezplot(y, [cn(1),cn(1)+2]);
else
y=simplify(y_gen);
disp('The General Solution is ');
disp(y);
end
