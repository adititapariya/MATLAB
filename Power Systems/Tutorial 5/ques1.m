clc
clear all

%Single phase 2 wire

V=input("enter the rms voltage in V: ");
L=input("enter length in m: ");
P1=input("enter power in VA: ");
pf=input("enter power factor: ");
N=input("enter the efficiency for system: ");
r=input("enter the resistivity in ohm m: ");

P=P1*pf;
loss= (100-N)*P/100;
Vm=sqrt(2)*V;
I=sqrt(2)*P/(pf*Vm);
a=r*L*I^2*2/loss;
Volume_required=2*a*L

%3 phase 3 wire

P=P1*pf;
loss= (100-N)*P/100;
Vm=sqrt(2)*V;
I=sqrt(2)*P/(pf*Vm*sqrt(3));
a=r*L*I^2*3/loss;
Volume_required=3*a*L