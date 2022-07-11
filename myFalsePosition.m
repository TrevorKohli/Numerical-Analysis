function [c,histArray] = myFalsePosition(f,a,b,tol, maxIt)

iterations = 0;
histArray = [];

fa = feval(f, a);
fb = feval(f, b);
error = abs(b-a);

if fa*fb>0
    disp('Did not bracket root')
    c = -1000;
    return
end

while error > tol && iterations < maxIt
    iterations = iterations + 1; 
    c = (b*fa - a*fb)/(fa - fb);
    fc = feval(f,c);
    if abs(fc) < 1e-16
        histArray = [histArray;iterations, c,fc,error];
        return
    end
    if fa*fc < 0
        b = c;
        fb = feval(f,c);
    else
        a = c;
        fa = feval(f,a);
    end
    error = abs(b - a);
    histArray = [histArray;iterations, c, fc, error];
end

