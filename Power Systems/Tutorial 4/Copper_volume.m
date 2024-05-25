clc
clear all

%to calculate the percentage saving in feeder copper if the line voltage
%in a 2-wire dc system is raised from 200V to 400V for the same power
%transmitted over the same distance and having the same power loss.
%200V ---->  400V

V1=input('Enter voltage 1: ');
V2=input('Enter voltage 2: ');

% P1=P2;
% P1=V1I1;
% P2=V2I2;
x=V2/V1;    %1/x = I2/I1

%W1=W2;
%2*((I1)^2)*R1=2*((I2)^2)*R2;
C=(1/x)^2;  % this is R1/R2=(I2/I1)^2

%since R is inversely proportinal to area when resistivity and length are
%constant

% A2/A1=C

%Considering length as constant , volume ratio is same as area ratio
% v2/v1= C

%Saving=(1-(V2/V1))*100
Saving=(1-C)*100

