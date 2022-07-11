% this function generates approximate solutions to y'=f(t,y)
% y(t0) = y0 using the forward Euler method
function [yapprox, tvals] = forwardEuler(dy, y1, tinterval, h)                                                     

% this function computes approximations to y'=f(t,y) given 
% dy = the right-hand side of the ODE as a function of t and y
% y1 = initial condition 
% tinterval = a time interval [t0, T]
% h = size of the time step, or the distance between discrete time points


% set the starting and ending points for the approximation
t0 = tinterval(1);
T = tinterval(2);

% create an array of time values with a distance
% of h between points
tvals = t0:h:T;
% change tvals from a row vector to a column vector
tvals = tvals(:);
% find the number of discrete time points
n = length(tvals);
% initialize the approximation array
yapprox = zeros(n, length(y1));

% set the initial data as the first row of the array
for i = 1:length(y1)
    yapprox(1,i) = y1(i);  
end
                                                                                                                    
for i = 1:n-1                                                                                                      
    % generate the approximation using forward Euler  
    % the new approximate solution is the old approximation solution
    % plus h times f(t,y).
    yapprox(i+1,:) = yapprox(i,:) + h*dy(tvals(i,1), yapprox(i,:));                                                 
end   