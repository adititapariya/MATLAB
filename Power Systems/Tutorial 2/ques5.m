clc
clear all

z1=3+4i;
z2=5+2i;
theta = pi/3;
z3=2*exp(i*theta);
z4=3+6i;
z5=1+2i;

z=(z1*z2*z3)/(z4*z5)   %rectamgular form
magnitude = abs(z)       %polar value
angle = angle(z)
