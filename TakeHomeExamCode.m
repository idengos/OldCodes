b= 1;
g= 0.5;
a= 1;

f = @(t,x) [x(2);sin(x(1))*(x(3)*cos(x(1))-1)-g*x(2);b*cos(x(1))-b*g];

[t,xa] = ode45(f,[0 90],[1 .1 1]);


%x plot
figure(1)
plot(t,xa(:,1))
title('x(t)')
xlabel('t'), ylabel('x')

%y plot
figure(2)
plot(t,xa(:,2))
title('y(t)')
xlabel('t'), ylabel('y')

%z plot
figure(3)
plot(t,xa(:,3))
title('z(t)')
xlabel('t'), ylabel('z')


%3d plot
figure(4)
plot3(xa(:,1),xa(:,2),xa(:,3))
grid on
title('Solution curve')

