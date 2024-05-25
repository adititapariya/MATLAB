clc 
clear all

% Aim:
% To find additional load that can be supplied for different supply system using MATLAB

%1)A DC 2-WIRE SYSTEM IS TO BE CONVERTED INTO AC 3 PHASE , 3 WIRE SYSTEM BY
%THE ADDITION OF THIRD CONDUCTOR OF THE SAME CROSS SECTION.

%pf = 1 and percentage power loss and voltage between wires is same and same cross section
%i.e. r =same

syms I1 I2 V R
P1=V*I1;     %power supplied by 2 wire dc system
W1=2*I1^2*R;    %power loss in 2- wire dc system
W1_per=W1/P1*100;    %percentage power loss in 2- wire dc system
P2=sqrt(3)*V*I2;     %power supplied by 3 phase 3 wire ac system
W2=3*I2^2*R;       %power loss in 3 phase 3- wire ac system
W2_per=W2/P2*100;    %percentage power loss in 3 phase 3- wire ac system
eq1= W1_per==W2_per;
I22=solve(eq1,I2);
P22=sqrt(3)*V*I22;
supply_load=((P22-P1)/P1)*100


