function val = myFunNewton(x)

% this function defines the system of equations
% 16x^4 + 16y^4 + z^4 - 16 = 0
% x^2 + y^2 + z^2 - 3 = 0
% x^3 - y = 0
%
% note how the values for x, y, and z are coded
% x = x(1,1)
% y = x(2,1)
% z = x(3,1)

 %val(1,1) = 16*x(1,1)^4 + 16*x(2,1)^4 + x(3,1)^4 - 16;
 %val(2,1) = x(1,1)^3 + x(2,1)^2 + x(3,1)^2 - 3;
 %val(3,1) = x(1,1)^3 - x(2,1);

%  val(1,1) = x(1,1)^3 - 8.7*x(2,1)^2 + 12*x(3,1) + 21.7;

val(1,1) = -x(1,1) - x(2,1) - x(3,1) + 8.7;
val(2,1) = x(1,1)*x(2,1) + x(2,1)*x(3,1) + x(1,1)*x(3,1) - 12;
val(3,1) = -x(1,1)*x(2,1)*x(3,1) - 21.7;
 
% using these equations defines the system
% x^2 - y^2 = 0
% 2xy = 0

%val(1,1) = x(1,1)^2 - x(2,1)^2;
%val(2,1) = 2*x(1,1)*x(2,1);

% using these equations defines the system
% x^3 - y^2 = 0
% x + x^2y^2 = 2

% val(1,1) = x(1,1)^3 - x(2,1)^2;
% val(2,1) = x(1,1) + x(1,1)^2*x(2,1)^2 - 2;

