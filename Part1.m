clear
clc
%Define what we're working with
TE=24.5;
T0=93.5;

%bring in data
CoffeeData1;

%get the time and T_experimental

time=CoffeeData(:,1);
T_exp= CoffeeData(:,2);

%% 
%make initial conditions into vectors for second part
for i= 1:151
T0v(i)= 24.5;
TEv(i)= 93.5; 
end

T0v= T0v.';
TEv= TEv.';
%that aparently weren't actually needed
%% 

% iteration through k on the outside
figure(1); 
hold on;

i=1;
ks= 0.01:0.000045:0.1;
for k= ks
    
%get the T sub i (k) by running through coffeemodel
temp = coffeemodel(k,T0,TE,time);
J(i) = (norm(temp - T_exp)).^2 ;
%plot to see whats going on
i=i+1;

end
plot(ks, J, 'bo')
title('PLot of k vs J(k)')
xlabel('k')
ylabel('J(k)')
hold off;
%% 


i=1;
for k= ks
 %part c
%J_k = derv_J(k,T0v,TEv,time, T_exp)
J_k = derv_J(k,93.5,24.5,time, T_exp);


Prime(i) = sum(J_k);
i=i+1;

end

figure(2)
hold on;
plot(ks, Prime, '-p')
title('PLot of k vs J prime')
xlabel('k')
ylabel('J prime')

%slope is problemmatic because it goes to zero, and that means when using
%certain methods you may stop moving or taking too large of steps and may
%skip things but it doesn;t seem to be a problem until after the optimal
%value of k
%% 

%part d
%find the best k using Newton's Method (keep track in a vector of iteration
%counter, k value, J and J')
kc = 30 ;%doesn't have to actually be this value, just has to be large enough that the while loop will be entered, but kn will have to be the value we actually want to start at because of the way I wrote this loop
kn=  .03; 

i=1;

while  norm(kn-kc) > 10.^-12 
kc= kn;

%Newton
f= TE + (T0 - TE)*exp(-kc .*time);
fprime= -(T0- TE).*time .*exp(-kc .*time).*(TE -(T0-TE).*exp(-kc.*time) - T_exp);
f2prime= (T0- TE).*time.^2 .* exp(-kc .*time).*(TE -2.*(T0-TE)*exp(-kc.*time) + T_exp);
sfp = sum(fprime);
sf2p= sum(f2prime);
m= sfp./ sf2p;


kn= kc - m ;

k_value(i)= kc;
temp = coffeemodel(kc,T0,TE,time);
J(i) = (norm(temp - T_exp)).^2 ;
J_prime(i)= sfp;

i=i+1 ;  
end
k_value(i-1)
%% 

iteration= [1:i-1];
%newton's method
%make a table showing: iteration counter, k value, J and J'
format shortE

T = table(iteration.',k_value.',J.',J_prime.')




