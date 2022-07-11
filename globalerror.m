function error = globalerror(yapp,y,t)
n=length(t);
for i = 1:n
%     m=abs(yapp(i)-y(i));
    m=norm(yapp(i)-y(i), inf);
    error(i)=m;
end
end