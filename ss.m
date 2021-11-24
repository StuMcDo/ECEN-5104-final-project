





m = linspace(2,5,11)
 
%m(1,3) = 4;
s = 5;
x = zeros(2)
for i= 1:length(m)
 theta = pi/(1+m(1,i)) %length in radians
 b = (tan(theta))^2
 fun = @(z) zsolver(z,b);

 x0 = [0.78,1.44];

x(i,:) = fsolve(fun,x0)
 %m(1,i) = i
end
    


x= transpose(x)

plot(m,x(1,:),m,x(2,:))
xlabel('f2/f1')
ylabel('Normalized Impedance Z/Z0')
legend('Z1','Z2')