clc
clear all

% Aim:
% To find additional load that can be supplied for different supply system using MATLAB

%1)A DC 2-WIRE SYSTEM IS TO BE COVERTED INTO AC 3 PHASE , 3 WIRE SYSTEM BY
%THE ADDITION OF THIRD CONDUCTOR OF THE SAME CROSS SECTION.

%pf = 1 and percentage power loss and voltage between wires is same and same cross section
%i.e. r =same

%P1=V*I1
%W1=2*((I1)^2)*R
%P2=sqrt(3)V*I2
%W2=3*((I2)^2)*R
V=10;  %let
r=11;  %let
%loss 1 = 2*I1^2*R/V*I1
%loss 2 = 3*I2^2*R/V*I2*sqrt(3)
%I1/I2=a
%loss 1 = loss 2
a=(3*r*V)/(sqrt(3)*V*2*r);

%P2/P1=C
C=(V*sqrt(3))/(V*a);
fprintf('The ratio of P2 to P1 is %f.\n',C)



