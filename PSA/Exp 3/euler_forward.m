clc
clear all

R=0.0001;
L=0.1;
C=0.5;
g=0:0.01:10;
Vn=1;
tf=10;
I= sqrt(C/L)*Vn*sin(g/sqrt(L*C));
A=[-R/L -1/L; 1/C 0];
B=[1/L ; 0];

h=0.01; 
nos1 = round(tf/h);
I1(1)=0;   %for t =1
vc(1)=0;   %for t =1

for i=1:nos1
    I1(i+1)= I1(i)+h*(I(i)*A(1,1) +A(1,2)*vc(i)+B(1)*Vn);
    vc(i+1)=vc(i)+(A(2,1)*h*I1(i));
end

h1=0.001;
g1=0:0.001:10;
nos2 = round(tf/h1);
I2(1)=0;   %for t =1
vc2(1)=0;   %for t =1

for j=1:nos2
    I2(j+1)= I2(j)+h1*(I2(j)*A(1,1) +A(1,2)*vc2(j)+B(1)*Vn);
    vc2(j+1)=vc2(j)+(A(2,1)*h1*I2(j));
end

subplot(3,1,1)
plot(g,I)
title('Subplot 1:Original Signal');
xlabel('Time (sec)');
ylabel('Current (A)');

subplot(3,1,2)
plot(g,I1)
title('Subplot 2: Step size =0.01');
xlabel('Time (sec)');
ylabel('Current (A)');

subplot(3,1,3)
plot(g1,I2)
title('Subplot 3: Step size =0.001');
xlabel('Time (sec)');
ylabel('Current (A)');