z1 = 38.6/50
z2 =72.41/50
theta = atan(sqrt(z1*z2/(2*z2^2-z1^2-z2^2*z1)))
%theta = 180*theta/pi
b = (tan(theta))^2
e1 =@(z1,z2) (2.*z2.^2-z1.^2-z2.^2.*z1).*b-z1.*z2 
e1(z1,z2)
e2 = @(z1,z2) 2.*(z2+z1+z1.*z2-z2.^2.*b)-z1.^2.*z2-z1.*z2.^2
e2(z1,z2)