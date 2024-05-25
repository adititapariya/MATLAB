clc;
clear all;
close all;
G=zpk([-1],[-1,-5],50)
bode(G)
grid on
[gm,Pm,Wcg,Wcp] = margin(G)