% Program 2.2 Jacobi Method Modified for SOR
% Inputs: full or sparse matrix a, r.h.s. b,
% number of iterations, k, tol
% Output: solution x
function [x, be, its] = sor(a, b, k, tol)
n=size(a,1);% find n
i=1;
w=1.2;
its=0;

d=diag(diag(a)); % extract diagonal of a
L=tril(-a,-1);
U=triu(-a,1);
Sw = inv(d-w*L)*((1-w)*d+w*U); %SOR iteration matrix
cw = w*inv(d-w*L)*b;
x = zeros(n,1); % initialize vector x

while i <= k % loop for SOR iteration
    x(:,i+1) = Sw*x(:,i) + cw;
    if norm(x(:,i+1)-x(:,i)) < tol
        x=x(:,i+1);
        break
    end
    i = i+1;
    its=its+1;
end % End of SOR iteration loop

%code to find backward error
be=norm(b-a*x, inf);

end