x = 0:0.1:10;
c = mean(x);
sig = std(x);
y = exp(-((x-c).^2)/(2*sig.^2));
plot(x,y);