function F = zsolver(z,b)
F(1) =(2*z(2)^2-z(1)^2-z(2)^2*z(1)-z(1)^2*z(2))*b-z(1)*z(2) %%4th term added
F(2) = 2*(z(2)+z(1)+z(1)*z(2)-z(2)^2*b)-z(1)^2*z(2)-z(1)*z(2)^2
end

