clc
close all
n=100;   % Number of terms in the series
P=2;    % Period
sum=3/10;   % First term, y offset
t=[-5: 0.01 : 5]; % x array/range

for i_ser=1:n
    sum=sum+(((1-cos(i_ser*pi)))/(5*i_ser*pi-i_ser^3*pi^3))*sin(pi*t*i_ser);
    plot(t,sum)
    xlabel('t')
    ylabel('ft')
    title('Particular Solution')
    set(gca,'FontSize',18)
    set(gca,'LineWidth',3)
    
    %pause(0.1)
end