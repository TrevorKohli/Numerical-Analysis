function [val, computedError] = compTrap(a,b,f,n)

% this function computes and approximation to the
% integral of f(x) over [a,b] using n nodal points


xvals = linspace(a,b,n);

h = (b-a)/(n-1);

val = h/2*(f(a)+f(b));

for i = 2:n-1
    val = val + h*f(xvals(i));
end

% vectorized version

% fvals = f(xvals);
% val = h*sum(fvals);
% val = val - h/2*fval(1) -h/2*fval(n);

%computedError = abs(val - integral(f,a,b));
