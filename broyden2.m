% Broyden function for computing an approximation to the inverse
% of the Jacobian matrix
% Code developed based on algorithms in Numerical Analysis by
% Timothy Sauer
function [xnew, its, errEst] = broyden2(f, x0, B, tol, maxit)
% function [xnew, its, errEst] = broyden2(x0, B, tol, maxit)


its = 1;
errEst = 1;
xold = x0;

while errEst > tol && its < maxit
    % compute new iterate
    xnew = xold - B*f(xold);
    % compute components for matrix update
    delta = xnew - xold;
    Delta = f(xnew) - f(xold);
    xold = xnew;
    % compute the matrix update
    denom = delta'*B*Delta;
    B = B + (delta - B*Delta)*delta'*B/denom;
    % increase the iteration count
    its = its + 1;
    % generate the new error estimate
    errEst = norm(delta, inf)/norm(xnew,inf);
    
end

% Note you can embed the definition of f(x) inside the 
% file defining the Broyden function or you can input it
% as an argument
%
% function out = f(x)
% 
% out = zeros(length(x),1);
% 
% % out(1,1) = x(1)^2 + x(2)^2 - 1;
% % out(2,1) = (x(1) - 1)^2 + x(2)^2 - 1;
% 
% % out(1,1) = x(1)^2 + 4*x(2)^2 - 4;
% % out(2,1) = 4*x(1)^2 + x(2)^2 - 4;
% 
% out(1,1) = x(1)^2 - 4*x(2)^2 - 4;
% out(2,1) = (x(1)-1)^2 + x(2)^2 - 4;