function [yapprox, tvals] = backwardEuler(dy, y0, tinterval, h)

% dy is the right-hand side of the ODE 
% y0 is the initial condition
% tinterval is the solution interval for t; this needs to
% be entered as [t0, tfinal]
% h is the spacing between discrete time points

t0 = tinterval(1);
T = tinterval(2);

% find the number of steps needed and initialize arrays 
tvals=t0:h:T;
tvals = tvals(:);
n = length(tvals);
yapprox = 0*tvals;

% Set options to suppress the iteration history from fsolve

options = optimset('Display', 'off');


% set the initial data as the first element in the array
yapprox(1,1) = y0;

for i = 1:n-1
    % generate the approximation using backward Euler and fsolve
    yi = yapprox(i,1);
    ti = tvals(i,1);
    
    % define the nonlinear equation needed to generate the next
    % approximation
    odeEqn = @(x) x - h*dy(ti+h, x) - yi;
    
    % use fsolve to generate approximate solution to the nonlinear
    % equation
    yapprox(i+1,1) = fsolve(odeEqn, yi, options);
end
