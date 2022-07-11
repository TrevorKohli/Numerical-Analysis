function [xstar, its, fres] = cgSauer(A, b, x0, tol)
dold = b - A*x0;
rold = dold;
xold = x0;
rnew = rold;
xnew = xold;
its = 0;% for i = 1:50
while norm(rnew,2)/norm(b,2) > tol   
    its = its + 1;    
    if norm(rold,2) == 0       
        disp('Solution reached')       
        break    
    end
    alpha = (rold'*rold)/(dold'*A*dold);
    xnew = xold + alpha*dold;    
    rnew = rold - alpha*A*dold;    
    beta = (rnew'*rnew)/(rold'*rold);    
    dnew = rnew + beta*dold;   
    dold = dnew;    
    rold = rnew;   
    xold = xnew;
end
xstar = xnew;
fres = norm((b-A*xnew),inf);