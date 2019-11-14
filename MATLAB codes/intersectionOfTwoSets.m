%Intersection of 2 sets
x=0:0.1:10;
c=mean(x);
s=std(x);
y=exp(-1*(x-c).^2/(2*s*s));
a=1;
c=5;
z=1./(1+exp(-(a*(x-c))));
 
u=min(y,z);
plot(x,u)
grid on