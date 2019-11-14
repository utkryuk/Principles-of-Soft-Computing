%Subtraction of 2 sets: A - B
x = 0:0.1:10;
a = 1;
c = 5;
A = 1./(1+exp((-a*(x-c))));
sig = std(x);
C = mean(x);
B = 1 - exp(-1*(x-C).^2/(2*sig*sig));
u = min(A,B');
plot(x,y)
grid on