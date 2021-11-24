theta = pi/(1+3) %length in radians
%f1 = 1e9 %frequency of 1GHz
%z3 =50
%b = (tan(theta))^2
%z1 = 38.6/50
%z2 =72.41/50
%theta = atan(sqrt(z1*z2/(2*z2^2-z1^2-z2^2*z1)))
%theta = 180*theta/pi
b = (tan(theta))^2
[Z1,Z2] = meshgrid(-3:0.01: 2,-3 :0.01 :2);
e1 =@(z1,z2) (2.*z2.^2-z1.^2-z2.^2.*z1).*b-z1.*z2 
e2 = @(z1,z2) 2.*(z2+z1+z1.*z2-z2.^2.*b)-z1.^2.*z2-z1.*z2.^2
f = @(z1,z2) e1(z1,z2)-e2(z1,z2)
E1 = e1(Z1,Z2);
F = f(Z1,Z2);
E2 =e2(Z1,Z2);
hold
contour(Z1,Z2,E1,[0,0])
contour(Z1,Z2,E2,[0,0])
%contour(Z1,Z2,F,[0,0])
%surf(Z1,Z2,F)
aa = e1(0.772,1.448)