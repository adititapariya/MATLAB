clc 
clear all

% Aim:
% To find additional load that can be supplied for different supply system using MATLAB

%3)A SINGLE PHASE AC SYSTEM SUPPLIES A LOAD OF 200KW AND IF THIS SYSTEM IS
%CONVERTED TO 3-PHASE , 3 WIRE AC SYSTEM BY RUNNING A THIRD SIMILAR
%CONDUCTOR.

%pf = 1 and percentage power loss and voltage between wires is same and same cross section
%i.e. r =same
%assuming unity power factor
syms I1 I2 V R
P1=V*I1;%power supplied by 1 phase ac system
W1=2*I1^2*R;    %power loss in 1 phase ac system
W1_per=W1/P1*100;   %percentage power loss in 1 phase ac system
P2=sqrt(3)*V*I2;     %power supplied by 3 phase 3 wire ac system
W2=3*I2^2*R;       %power loss in 3 phase 3- wire ac system
W2_per=W2/P2*100;    %percentage power loss in 3 phase 3- wire ac system
eq1= W1_per==W2_per;
I22=solve(eq1,I2);
P22=sqrt(3)*V*I22;
supply_load=((P22-P1)/P1)*100
p1=input("enter P1 value in kW: ");
p2_additional=((supply_load)/100)*p1
p2_total=((supply_load)/100 +1)*p1