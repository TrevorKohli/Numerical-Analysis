function val = compMid(f,a,b,n)

xQuad = linspace(a,b,n+1);

val = 0;

for i = 1:n
    val = val + myMidpt(f,xQuad(i),xQuad(i+1));
%     val = val + myTrap(f, xQuad(i), xQuad(i+1));
end


