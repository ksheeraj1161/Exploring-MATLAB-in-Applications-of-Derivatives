clear all
close all
clc
syms x
f =input('Enter the function of x: '); 
I=input('Enter the interval of [a,b]: '); 
m=input('Enter the number of Harmonics required: ');
a=I(1); b=I(2); 
L=(b-a)/2; 
a0=(1/L)*int(f,a,b); 
Fx=a0/2; 
for n=1:m 
figure;
an(n)=(1/L)*int(f*cos(n*pi*x/L),a,b); 
bn(n)=(1/L)*int(f*sin(n*pi*x/L),a,b); 
Fx=Fx+an(n)*cos(n*pi*x/L)+bn(n)*sin(n*pi*x/L); 
Fx=vpa(Fx,4); 
ezplot(Fx,[a,b]);
hold on
ezplot(f,[a,b]); 
title(['Fourier Series with',num2str(n),'harmonics']); 
legend('Fourier Series', 'Function Plot'); 
hold off
end
disp(strcat('Fourier series 
with',num2str(n),'harmonics is:',char(Fx)))
