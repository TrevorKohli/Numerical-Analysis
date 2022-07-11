% Program 6.2  Vector version of Euler Method 
% Input: interval inter, initial vector y0, number of steps n 
% Output: time steps t, solution y 
% Example usage: euler2([0 1],[0 1],10); 

function [t,x,y]=euler2(inter,y0,n) 

t(1)=inter(1); y(1,:)=y0; 
h=(inter(2)-inter(1))/n; 

for i=1:11
    a(i)=0;ye1(i)=0;ye2(2)=0;
end

for i=0:10
    a(i+1)=i/10;
    ye1(i+1)=3*exp(-a(i+1))+2*exp(4*a(i+1));
    ye2(i+1)=-2*exp(-a(i+1))+2*exp(4*a(i+1));
    x=[num2str(ye1(i+1)),' ',num2str(ye2(i+1))];
end

for i=1:n 
    t(i+1)=t(i)+h; 
    y(i+1,:)=eulerstep(t(i),y(i,:), h); 
end

plot(t,y(:,1),t,y(:,2));hold on
plot(a,ye1,a,ye2);
% plot(t,y)

function y=eulerstep(t,y,h) 
%one step of the Euler Method 
%Input: current time t, current vector y, step size h 
%Output: the approximate solution vector at time t+h 
y=y+h*ydot(t,y);

function z=ydot(t,y) 
%right-hand side of differential equation 
z(1)=y(1)+3*y(2);
z(2) =2*y(1)+2*y(2);
% z=y^2-y^3;