x = 250:100:1000;
c = mean(x);
a = std(x);
y = exp(-((x-c).^2)/(2*a.^2));
plot(x,y);
grid on