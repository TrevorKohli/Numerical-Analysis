function [yapprox, tvals, error] = rk4(dy, y0, tinterval, dt)

t0 = tinterval(1);
T = tinterval(2);

% find the time steps and initialize arrays 
tvals = t0:dt:T;
tvals = tvals(:);
n = length(tvals);
% w=1;
yapprox = zeros(n,length(y0));
for i = 1:length(y0)
    yapprox(1,i) = y0(i);
end
                                                                                                                    
for i = 1:n-1                                                                                                       
    % generate the approximation using Runge-Kutta 4
    ti = tvals(i);
    yi = yapprox(i,:);
    k1 = feval(dy, ti, yi);
    k2 = feval(dy, ti+dt/2, yi+dt*k1/2);
    k3 = feval(dy, ti+dt/2, yi+dt*k2/2);
    k4 = feval(dy, ti+dt, yi+dt*k3);
    yapprox(i+1,:) = yapprox(i,:) + dt*(k1/6 + k2/3 + k3/3 + k4/6); 
%     w = w+(k1+2*k2+2*k3+k4)/6;
%     error = abs(w-(exp(tvals(i)*(tvals(i)+2))));
%     error=norm(yapprox(i)-(exp(tvals(i)*(tvals(i)+2))), inf);
end   