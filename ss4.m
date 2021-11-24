%  theta = pi/(1+2.6) %length in radians
%  b = (tan(theta))^2
%  fun = @(z) z4solve(z,b);
%  x0 = [0.7,1.2,1,2];
%  x = fsolve(fun,x0)
%  m(1,1) = 2.6
% 
% 
% 
% 
% theta = pi/(1+3) %length in radians
% b = (tan(theta))^2
% fun = @(z) z4solve(z,b);
% x0 = [0.7,1.2,1,2];
% x(2,:) = fsolve(fun,x0)
% 
% m(1,2) = 3
% 
% 
% 
% 
% theta = pi/(1+4) %length in radians
% b = (tan(theta))^2
% fun = @(z) z4solve(z,b);
% x0 = [0.7,1.2,1,2];
% x(3,:) = fsolve(fun,x0)


m = linspace(2,5,21)
 
%m(1,3) = 4;
s = 5;
x = zeros(4)
for i= 1:length(m)
 theta = pi/(1+m(1,i)) %length in radians
 b = (tan(theta))^2
 fun = @(z) z4solve(z,b);
 x0 = [0.7,1.2,1,2];
x(i,:) = fsolve(fun,x0)
 %m(1,i) = i
end
    


x= transpose(x)

plot(m,x(1,:),m,x(2,:),m,x(3,:),m,x(4,:))
xlabel('f2/f1')
ylabel('Normalized Impedance Z/Z0')
legend('Z1','Z2','Z3','R')