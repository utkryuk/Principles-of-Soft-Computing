[input, targets] = thyroid_dataset;

%Create a Pattern Recognition Network
hiddenLayerSize = 10;
net = perceptron;
net = patternnet(hiddenLayerSize)
 
% Set up Division
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
 
%Train the Network
[net, tr] = train(net,inputs, targets)
 
%Test the Network
outputs = net(inputs);
errors = gsubstract(targets,outputs);
performance = perform(net,targets,outputs);

%View the network
view(net);
tInd = tr.testInd;
tstOutputs = net(inputs(tInd));
tstPerform = perform(net,targets(:,tInd),tstOutputs);
figure, plotconfusion(targets,Outputs);