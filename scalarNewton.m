% function for solving f(x)=0, f(x) scalar, using Newton's method
% Input:  function  f(x)
%         derivative f'(x)
%         initial iterate x0
%         error tolerance tol
%         maximum number of iterations maxits
% Output:  approximate solution  root
%          array containing history of iterations  xdata
function [root, xdata] = scalarNewton(fun, funderiv, x0, tol, maxits)

% initialize the data
% make xold large enough to enter loop
xold = x0+3*tol;
xnew = x0;
numits = 0;

% start the history array
xdata = [x0, fun(x0)];

while abs(xnew - xold) > tol && numits < maxits
    % evaluate the function at the current iterate
    fxnew = fun(xnew);
    % evaluate the derivative at the current iterate
    fprimexnew = funderiv(xnew);
    % increase the iteration count
    numits = numits + 1;
    % store the old iterate to get ready for next iteration
    xold = xnew;
    % generate the new iterate
    xnew = xnew - fxnew/fprimexnew;
    % store the history information
    xdata = [xdata; xnew, fun(xnew)];
end

root = xnew;
end