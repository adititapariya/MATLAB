clc
clear all

V1=230;
P=10000;
Pf=.9;
f=50;
fprintf('Star\n');
I1=P/(sqrt(3)*V1*Pf);
Isph=I1;
Isl=I1;
Vsl=V1;
Vsph=V1/sqrt(3);
Zsph=Vsph/Isph;
Rsph=Zsph*Pf;
Xsph=Zsph*sin(acos(Pf));
Lsph=Xsph/(2*pi*f);
fprintf('The value of phase current is %f A.\n',Isph);
fprintf('The value of line current is %f A.\n',Isl);
fprintf('The value of phase voltage is %f V.\n',Vsph);
fprintf('The value of line voltage is %f V.\n',Vsl);

fprintf('The value of impedance is %f ohm.\n',Zsph);
fprintf('The value of resistance is %f ohm.\n',Rsph);
fprintf('The value of reactance is %f ohm.\n',Xsph);
fprintf('The value of inductance is %f Henry.\n',Lsph);

fprintf('\nDelta\n');
Vdph=V1;
Vdl=V1;
Idl=I1;
Idph=Idl/sqrt(3);
Zdph=Vdph/Idph;
Rdph=Zdph*Pf;
Xdph=Zdph*sin(acos(Pf));
Ldph=Xdph/(2*pi*f);
fprintf('The value of phase current is %f A.\n',Idph);
fprintf('The value of line current is %f A.\n',Idl);
fprintf('The value of phase voltage is %f v.\n',Vdph);
fprintf('The value of line voltage is %f v.\n',Vdl);
fprintf('The value of impedance is %f ohm.\n',Zdph);
fprintf('The value of resistance is %f ohm.\n',Rdph);
fprintf('The value of reactance is %f ohm.\n',Xdph);
fprintf('The value of inductance is %f Henry.\n',Ldph);

