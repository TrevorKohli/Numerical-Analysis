function [integral, computedError] = compSimp(a,b,f,n)

% this function computes and approximation to the
% integral of f(x) over [a,b] using n nodal points


h = (b-a)/(n);

val = h/2*(f(a)+f(b));

for i = 1:n/2-1
    x(i)=a+2*i*h;
    val = val + f(x(i));
end

val2 = h/2*(f(a)+f(b));

for i = 1:n/2
    x(i)=a+(2*i-1)*h;
    val2 = val2 + f(x(i));
end

integral = h*(f(a)+2*val+4*val2+f(b))/3;
% vectorized version

% fvals = f(xvals);
% val = h*sum(fvals);
% val = val - h/2*fval(1) -h/2*fval(n);

%computedError = abs(val - integral(f,a,b));