clc
close all
n=100;   % Number of terms in the series
P=2;    % Period
sum=0;   % First term, y offset
t=[-5: 0.01 : 5]; % x array/range
figure(1)
for i_ser=1:n
    sum=sum+-0.5*cos(sqrt(5)*t)+(1/sqrt(5)+(1/sqrt(5))*((1-cos(i_ser*pi))/(5-i_ser^2*pi^2)))*sin(sqrt(5)*t);%((1/(i_ser*pi))*(1-cos(i_ser*pi)))*sin(pi*t*i_ser);
    plot(t,sum)
    xlabel('t')
    ylabel('ft')
    title('Homogeneous solution')
    set(gca,'FontSize',18)
    set(gca,'LineWidth',3)
    
    %pause(0.1)
end
%% 

figure(2)
f= cos(sqrt(5)*t)+sin(sqrt(5)*t)
plot(t, f)