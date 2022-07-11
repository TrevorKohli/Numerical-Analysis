function yr = realIVP(t)
n=length(t);
for i = 1:n
%     m=exp(t(i)*(t(i)+2));
%     m=3^(1/3)*(t(i) + 1/3)^(1/3);
    m=(2^(1/2)*(2/(t(i)^2 + 1))^(1/2))/2;
    yr(i)=m;
end
end
