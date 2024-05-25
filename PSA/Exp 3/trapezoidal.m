clc
clear all

R=0.0001;
L=0.1;
C=0.5;
g=0:0.01:10;
Vn=1;
Vm=1;
tf=10;
I= sqrt(C/L)*Vn*sin(g/sqrt(L*C));

A=[-R/L -1/L; 1/C 0];
B=[1/L; 0];
id=[1 0;0 1];
h=0.01; 
nos1 = round(tf/h);
I1(1)=0;   %for t =1
VC(1)=0;   %for t =1

for i=1:nos1
    M = [I1(i); VC(i)];
    D = (inv(id-A*h/2))*(((id+(A*h/2))*M) + (h*B*(Vn+Vm)/2));
    I1(i+1) = D(1, 1);
    VC(i+1) = D(2, 1);
end

h1=0.001;
g1=0:0.001:10;
nos2 = round(tf/h1);
I2(1)=0;   %for t =1
VC2(1)=0;   %for t =1

for j=1:nos2
    M1 = [I2(j); VC2(j)];
    D1 = (inv(id-A*h1/2))*(((id+(A*h1/2))*M1) + (h1*B*(Vn+Vm)/2));
    I2(j+1) = D1(1, 1);
    VC2(j+1) = D1(2, 1);
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