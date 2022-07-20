clf
x= average_breaks(1:5001);
y1= operational_machines(1:5001);
y2= operational_machines(5002:10002);

title= ('Operational Machines vs Lambda')
xlabel('Lambda (# of breaks per year)')
ylabel('Number of Running Machines at 4yrs')

figure(1)
L(1)= plot(x,y1)


hold on
L(2)= plot(x,y2)
legend(L,'2 Initial Machines','3 Initial Machines')

figure(2)
i= average_breaks(1:5001);
z1= total_production(1:5001);
z2= total_production(5002:10002);

M(1)=plot(i,z1)

title= ('Total Production Output after 4 Years')
xlabel('Lambda (# of breaks per year)')
ylabel('Production Output (machine*year)')

hold on
M(2)= plot(i,z2)
legend(M,'2 Initial Machines','3 Initial Machines')

