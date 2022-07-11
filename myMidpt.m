function val = myMidpt(f,a,b)
% midpoint approximation to a definite integral
% inputs are the integrand and the endpoint of
% the integration region

% the approximation is the product of the length 
% of the interval and the integrand evaluated at
% the midpoint of the interval
val = (b-a)*f((a+b)/2);
