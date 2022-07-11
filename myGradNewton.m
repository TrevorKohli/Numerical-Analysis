function val = myGradNewton(x)

% this function defines the Jacobian of the
% system of equations defined in myFunNewton

% the first row contains the partial derivatives
% for the first equation with respect to each of the
% independent variables
%
% note the first index is always 1, indicating these
% values are on the first row of the matrix
%

% this is the first row of the Jacobian for
% 16x^4 + 16y^4 + z^4 - 16 = 0
% x^2 + y^2 + z^2 - 3 = 0
% x^3 - y = 0

%  val(1,1) = 64*x(1,1)^3;
%  val(1,2) = 64*x(2,1)^3;
%  val(1,3) = 4*x(3,1)^3;


val(1,1) = -1;
val(1,2) = -1;
val(1,3) = -1;

val(2,1) = x(2,1) + x(3,1);
val(2,2) = x(1,1) + x(3,1);
val(2,3) = x(2,1) + x(1,1);

val(3,1) = -x(2,1)*x(3,1);
val(3,2) = -x(1,1)*x(3,1);
val(3,3) = -x(1,1)*x(2,1);

% this is the first row of the Jacobian for
% x^2 - y^2 = 0
% 2xy = 0

%val(1,1) = 2*x(1,1);
%val(1,2) = -2*x(2,1);

% this is the first row of the Jacobian for
% x^3 - y^2 = 0
% x + x^2y^2 = 2

% val(1,1) = 3*x(1,1)^2;
% val(1,2) = -2*x(2,1);

% the second row contains the partial derivatives
% for the second equation with respect to each of the
% independent variables
%
% note the first index is always 2, indicating these
% values are on the second row of the matrix
%

% this is the second row of the Jacobian for
% 16x^4 + 16y^4 + z^4 - 16 = 0
% x^2 + y^2 + z^2 - 3 = 0
% x^3 - y = 0

 %val(2,1) = 3*x(1,1);
 %val(2,2) = 2*x(2,1);
 %val(2,3) = 2*x(3,1);
 
 

% this is the second row of the Jacobian for
% x^2 - y^2 = 0
% 2xy = 0

%val(2,1) = 2*x(2,1);
%val(2,2) = 2*x(1,1);

% this is the second row of the Jacobian for
% x^3 - y^2 = 0
% x + x^2y^2 = 2

% val(2,1) = 1 + 2*x(1,1)*x(2,1)^2;
% val(2,2) = 2*x(1,1)^2*x(2,1);

% the third row contains the partial derivatives
% for the third equation with respect to each of the
% independent variables
%
% note the first index is always 3, indicating these
% values are on the third row of the matrix
%
% this is the third row of the Jacobian for
% 16x^4 + 16y^4 + z^4 - 16 = 0
% x^2 + y^2 + z^2 - 3 = 0
% x^3 - y = 0

 %val(3,1) = 3*x(1,1)^2;
% val(3,2) = -1;
 %val(3,3) = 0;
