function [x,e] = regularfalsi(f,a,b,n)
% a=1
% b=2
% n=20
% function [x,e] = regularfalsi(f,a,b,n)
% does n iterations of bisection method 
% Inputs: f -- an inline function
% a,b --left and right edges
% n -- no. of iterations
% Outputs: x-- the estimated solution of f(x)
% e -- an upper bound error

%if want to enter value manually
% a=input("enter lower limit: ");
% b=input("enter upper limit: ");
% n=input("enter number of iterations: ");
% f=@(x) (x^3+4*x^2-10);

c = f(a); d= f(b);
if c*d>0.0
    error('Function has same sign at both ends');
    disp('  x    y  ')
    A=[x y];
    disp(A)
else
    for i = 1:n
        x=a+((a-b)/(d-c))*c;
        y=f(x);
        e=(b-a)/2;
        if c*y<0
            b=x;
        end 
        if d*y<0
            a=x;
        end 
        if e==0  %or y*c==0 || y*d==0
            break;
        end
        disp('     x                 y                 e     ')
        A=[x y e];
        disp(A)  
    end
 end
 
