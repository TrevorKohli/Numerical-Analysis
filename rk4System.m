function yapprox = rk4System(dy,t,y1)

% t0 = tinterval(1);
% T = tinterval(2);

% find the time steps and initialize arrays 
tvals = t(:);
n = length(tvals);
yapprox = zeros(n,length(y1));
for i = 1:length(y1)
    yapprox(1,i) = y1(i);
end
                                                                                                                    
for i = 1:n-1                                                                                                       
    % generate the approximation using Runge-Kutta 4
    ti = tvals(i);
    dt = tvals(i+1) - tvals(i);
    yi = yapprox(i,:);
    k1 = feval(dy, ti, yi);
    k2 = feval(dy, ti+dt/2, yi+dt*k1/2);
    k3 = feval(dy, ti+dt/2, yi+dt*k2/2);
    k4 = feval(dy, ti+dt, yi+dt*k3);
    yapprox(i+1,:) = yapprox(i,:) + dt*(k1/6 + k2/3 + k3/3 + k4/6);                                                 
end   