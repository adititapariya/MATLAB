clc 
clear all

x = 0:0.1:2*pi;
p=sin(x); 
q=cos(x);
figure
p=plot(x,p,x,q);       %to plot graph  
p(1).LineWidth=5;
p(2).LineWidth=1;
xlabel('x values');       %labelling x axis
ylabel('p and q values');      % labelling y axis
title('First Graph');      %titling the graph
legend('p data','q data');     %to provide index
grid on;                      %display in grid mode
