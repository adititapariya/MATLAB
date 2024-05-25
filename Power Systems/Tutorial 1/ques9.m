clc 
clear all

i=0:2:10;   %current value increased from 0 to 10 A
r=10;       %resistance of 10 ohms
i           %current printed
v=i*r       %according to ohm's law,voltage id linear multiplication of current and resistance
p=(i.^2)*r  %power dissipated
