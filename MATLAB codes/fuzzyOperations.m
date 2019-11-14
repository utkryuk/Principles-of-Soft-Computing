%Fuzzy Operations
x=-10:0.1:30;
A = max(min((x+1)./2,(3-x)./2),0);
B = max(min((x-1)./2,(5-x)./2),0);
Cprod = fuzarith(x, A, B, 'prod');
Csum = fuzarith(x, A, B, 'sum');
Csub = fuzarith(x, A, B, 'sub');
Cdiv = fuzarith(x, A, B, 'div');
subplot(4,1,1)
plot(x, A, x, B, x, Csum);
grid on
title('fuzzy addition A+B');
subplot(4,1,2)
plot(x, A, x, B, x, Csub);
title('fuzzy addition A-B');
subplot(4,1,3)
plot(x, A, x, B, x, Cprod);
title('fuzzy addition A*B');
subplot(4,1,4)
plot(x, A, x, B, x, Cdiv);
title('fuzzy addition A/B');