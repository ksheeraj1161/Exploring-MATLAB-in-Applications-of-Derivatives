x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y)
  
x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y)
 
plot(x,y,'r--')

x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y)
hold on
y2 = cos(x);
plot(x,y2,':')
legend('sin','cos')
hold off
