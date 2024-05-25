clc
clear all

%combined code for all three problems

a=input('enter\n 1 FOR CASE 1\n 2 FOR CASE 2\n 3 FOR CASE 3\n');
syms I1 I2 V R

if a==1
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
 
elseif a==2
    P1=2*V*I1;     %power supplied by 3 wire dc system
    W1=2*I1^2*R;    %power loss in 3- wire dc system
    W1_per=W1/P1*100;   %percentage power loss in 2- wire dc system
    P2=3*V*I2;     %power supplied by 3 phase 4 wire ac system
    W2=3*I2^2*R;       %power loss in 3 phase 4- wire ac system
    W2_per=W2/P2*100;    %percentage power loss in 3 phase 4- wire ac system
    eq1= W1_per==W2_per;
    I22=solve(eq1,I2);
    P22=3*V*I22;
    supply_load=((P22-P1)/P1)*100
    
elseif a==3
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
    
end
    
    
 