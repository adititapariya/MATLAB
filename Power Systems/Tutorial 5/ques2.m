clc 
clear all

%Single phase 2 wire

V=input("enter the rms voltage in V: ");
L=input("enter length in m: ");
P=input("enter power in Watts: ");
pf=input("enter power factor: ");
N=input("enter the efficiency for system: ");
r=input("enter the resistivity in ohm cm: ");
specific_gravity=input("enter specific_gravity: ");

loss= (100-N)*P/100;
Vm=sqrt(2)*V;
I=sqrt(2)*P/(pf*Vm);
a=r*L*I^2*2/loss;
Volume_required1=2*a*L
weight1=Volume_required1*specific_gravity

%3 phase 3 wire
loss= (100-N)*P/100;
Vm=sqrt(2)*V;
I=sqrt(2)*P/(pf*Vm*sqrt(3));
a=r*L*I^2*3/loss;
Volume_required2=3*a*L
weight2=Volume_required2*specific_gravity