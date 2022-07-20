clc
close all
n=1000;   % Number of terms in the series
P=2;    % Period
sum1=1.5;   % First term, y offset
t=[-5: 0.01 : 5]; % x array/range
sum2=0; 
sum3=3/10;

figure(1)
for i_ser=1:n
    sum1=sum1+((1/(i_ser*pi))*(1-cos(i_ser*pi)))*sin(pi*t*i_ser);
    sum2=sum2+-0.5*cos(sqrt(5)*t)+(1/sqrt(5)+(1/sqrt(5))*((1-cos(i_ser*pi))/(5-i_ser^2*pi^2)))*sin(sqrt(5)*t);
    sum3=sum3+(((1-cos(i_ser*pi)))/(5*i_ser*pi-i_ser^3*pi^3))*sin(pi*t*i_ser);
end
plot(t,sum1,t,sum2,t,sum3)
%% 

figure(2)
for i_ser=1:2:n
    sum1=sum1+((2/(i_ser*pi)))*sin(pi*t*i_ser);
    plot(t,sum1)
    xlabel('t')
    ylabel('ft')
    title('Input Function')
    set(gca,'FontSize',18)
    set(gca,'LineWidth',3)
    
    pause(0.1)
end

n=100;   % Number of terms in the series
P=2;    % Period
sum2=0;   % First term, y offset
t=[-5: 0.01 : 5]; % x array/range
%% 

figure(3)
for i_ser=1:n
    sum2=sum2+-0.5*cos(sqrt(5)*t)+(1/sqrt(5)+(1/sqrt(5))*((1-cos(i_ser*pi))/(5-i_ser^2*pi^2)))*sin(sqrt(5)*t);%((1/(i_ser*pi))*(1-cos(i_ser*pi)))*sin(pi*t*i_ser);
    plot(t,sum2)
    xlabel('t')
    ylabel('ft')
    title('Homogeneous solution')
    set(gca,'FontSize',18)
    set(gca,'LineWidth',3)
    
    pause(0.1)
end

n=100;   % Number of terms in the series
P=2;    % Period
sum3=3/10;   % First term, y offset
t=[-5: 0.01 : 5]; % x array/range

figure(4)
for i_ser=1:n
    sum3=sum3+(((1-cos(i_ser*pi)))/(5*i_ser*pi-i_ser^3*pi^3))*sin(pi*t*i_ser);
    plot(t,sum3)
    xlabel('t')
    ylabel('ft')
    title('Particular Solution')
    set(gca,'FontSize',18)
    set(gca,'LineWidth',3)
    
    pause(0.1)
end