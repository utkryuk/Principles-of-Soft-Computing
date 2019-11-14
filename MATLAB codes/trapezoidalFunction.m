trapx = 0:0.1:10;
a = 1;
b = 5;
c = 7;
d = 8;
trapy = max(min(min((trapx - a)./(b-a),1),(d-trapx)./(d-c)),0);
plot(trapx,trapy);