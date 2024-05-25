clc
clear all

R=0.125;
L=0.01;
w=377;
XL=w*L;
Vm=151;
Z=sqrt(R.^2+(w*L).^2);
theta=atand(XL/R);
t=0:0.00001:1;
%i=(-Vm*exp((-R/L)*(t))*sind(alpha-theta));

%for no dc offset
%sind(alpha-theta)=0
alpha=theta;
i1=(Vm/Z)*sin(w*t+alpha-theta)-(Vm*exp((-R/L)*(t))*sin(alpha-theta)/Z);

%for max dc offset
%sind(alpha-theta)=-90
alpha=-1.57 +theta;
i2=(Vm/Z)*sin(w*t+alpha-theta)-(Vm*exp((-R/L)*(t))*sin(alpha-theta)/Z);

%if alpha=0
alpha=0;
i3=(Vm/Z)*sin(w*t+alpha-theta)-(Vm*exp((-R/L)*(t))*sin(alpha-theta)/Z);

%if alpha=pi
alpha=3.14;
i4=(Vm/Z)*sin(w*t+alpha-theta)-(Vm*exp((-R/L)*(t))*sin(alpha-theta)/Z);

subplot(4,1,1)
plot(t,i1)
title('Subplot 1: NO DC OFFSET');
xlabel('Time (sec)');
ylabel('Current (A)');

subplot(4,1,2)
plot(t,i2)
title('Subplot 2: MAXIMUM DC OFFSET');
xlabel('Time (sec)');
ylabel('Current (A)');

subplot(4,1,3)
plot(t,i3)
title('Subplot 3: WHEN ALPHA=0');
xlabel('Time (sec)');
ylabel('Current (A)');

subplot(4,1,4)
plot(t,i4)
title('Subplot 3: WHEN APLHA=PI');
xlabel('Time (sec)');
ylabel('Current (A)');

