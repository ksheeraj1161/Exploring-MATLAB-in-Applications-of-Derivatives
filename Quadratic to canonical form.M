close all
clear all
clc 
syms y1 y2 y3
F=input('enter the coffecients of the form[x^2,y^2,z^2,xy,yz,zx]:') 
A=[F(1),(F(4)/2),F(6)/2;F(4)/2,F(2),F(5)/2;F(6)/2,F(5)/2,F(3)];
[P D]=eig(A); 
NP=normc(P); 
B=NP'*A*NP; 
disp('Transformed matrix is')
disp(B) 
r=rank(B); 
disp('rank :') 
disp(r) 
s=0; 
for i=1:3 
 if B(i,i)>0 
 s=s+1; 
 end
end
disp('index :')
disp(s) 
signature=2*s-r; 
disp('signature')
  disp(signature)
if r==3 
 if s==r 
 disp('Positive definite form') 
 elseif s==0 
 disp('Negative definite form') 
 else
 disp('Indefinite form') 
 end
elseif r<3 
 if r==s 
 disp('Semipositve definite form') 
 elseif s==0 
 disp('Seminegative definite form') 
 else
 disp('Indefinite form') 
 end
end
