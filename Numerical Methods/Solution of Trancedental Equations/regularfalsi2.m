clc
clear all

syms x;

a=input("enter lower limit: ");
b=input("enter upper limit: ");
e=input("tolerable error: ");
y=input("enter non-linear equation: ");

fa=eval(subs(y,x,a));
fb=eval(subs(y,x,b));

if fa*fb>0
    disp("ERROR!")
else
    c=a-(a-b)*fa/(fa-fb);
    fc=eval(subs(y,x,c));
    fprintf('\n\na\t\t\tb\t\t\tc\t\t\tf(c)\n');
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\n',a,b,c,fc);
        if fa*fc<0
            b=c;
            fb=eval(subs(y,x,b));
        else
            a=c;
            fa=eval(subs(y,x,a));
        end
        c=a-(a-b)*fa/(fa-fb);
        fc=eval(subs(y,x,c));
    end
    fprintf('\nRoot is: %f\n',c);        
end   

