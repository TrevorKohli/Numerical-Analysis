% function for solving f(x)=0, f(x) scalar, using secant method
% Input:  function  f(x)
%         initial iterates x0, x1
%         error tolerance tol
%         maximum number of iterations maxits
% Output:  approximate solution  root
%          array containing history of iterations  xdata
function [root, xdata] = secant(fun, x0, x1, tol, maxits)

% initialize the data
% make xold large enough to enter loop
xoldold = x0;
xold = x1;
errorEst = 3*tol;
numits = 0;

% start the history array
xdata = [x1, fun(x1)];

while errorEst > tol && numits < maxits
    % evaluate the function at the current iterates
    fxnew1 = fun(xoldold);
    fxnew2 = fun(xold);
    % increase the iteration count
    numits = numits + 1;
    % generate the new iterate
    xnew = xold - fxnew2*(xold - xoldold)/(fxnew2 - fxnew1);
    % generate the error estimate
    errorEst = abs(xnew - xold);
    % store the old iterates to get ready for next iteration
    xoldold = xold;
    xold = xnew;
    % store the history information
    xdata = [xdata; xnew, fun(xnew)];
end

root = xnew;
end