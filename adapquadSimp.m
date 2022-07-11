% Program 5.2 from Sauer, Numerical Analysis
% Adaptive Quadrature function
% Inputs:  MATLAB function f, interval [a0,b0],
%    error tolerance tol0
% Output:  approximate definite integral

function [int, count] = adapquadSimp(f, a0, b0, tol0)

int = 0;
n = 1;
a(1) = a0;
b(1) = b0;
tol(1) = tol0;
app(1) = trap(f,a,b);
count = 1;

while n>0
    c = (a(n) + b(n))/2;
    oldapp = app(n);
    app(n) = trap(f, a(n), c);
    app(n+1) = trap(f, c, b(n));

    if abs(oldapp - (app(n) + app(n+1))) < 10*tol(n)
        int = int + app(n) + app(n+1);
        n = n-1;
        count = count + 1;
    else
        b(n+1) = b(n);
        b(n) = c;
        a(n+1) = c;
        tol(n) = tol(n)/2;
        tol(n+1) = tol(n);
        n = n+1;
    end
end

function s = trap(f, a, b)
 
% s = (f(a)+f(b))*(b-a)/2;

m = (a+b)/2;
s = (b-a)/6*(f(a) + f(b) + 4*f(m));