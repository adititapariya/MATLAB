clc 
clear all

f=@(x,y) -2.2067*10^-12*(y^4-81*10^8);
x0=0;
y0=1200;
xC=480;
h=120;   %interval taken
y1=0;

%euler's formula
while x0<xC
    y1=y0+h*f(x0,y0)
    x0=x0+h;
    y0=y1;
end








