disp('Enter weights');
w1=input('Weight w1=');
w2=input('weight w2=');
 
bias=input('bias=');
theta=0;
y=[0 0 0 0];
x1=[0 0 1 1];
x2=[0 1 0 1];
z=[0 0 0 1];
con=1;
while con
zin=x1*w1+x2*w2+bias;
for i=1:4
if zin(i)>=theta
y(i)=1;
else
y(i)=0;
end
end
disp('Output of Net');
disp(y);
if y==z
con=0;
else
disp('Net is not learning enter another set of weights and bias value');
w1=input('weight w1=');
w2=input('weight w2=');
bias=input('bias=');
end
end
disp('Perceptron model for AND function');