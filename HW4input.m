clc
close all
n=500;   % Number of terms in the series
P=2;    % Period
sum=1.5;   % First term, y offset
t=[-5: 0.01 : 5]; % x array/range

for i_ser=1:n
    sum=sum+((1/(i_ser*pi))*(1-cos(i_ser*pi)))*sin(pi*t*i_ser);
    plot(t,sum)
    xlabel('t')
    ylabel('ft')
    title('Input Function')
    set(gca,'FontSize',18)
    set(gca,'LineWidth',3)
    
    %pause(0.1)
end