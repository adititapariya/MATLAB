function [x,e] = mybisect(f,a,b,n)
% a=1
% b=2
% n=13
% function [x,e] = mybisect(f,a,b,n)
% x^3+4*x^2-10
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
end

 for i = 1:n
    x=(a+b)/2;
    y=f(x);
    e=(b-a)/2;
    if c*y<0
        b=x;
    end 
    if d*y<0
        a=x;
    end 
    if y*c==0 || y*d==0  %or e==0
        break;
    end
    disp('     x                 y                 e     ')
    A=[x y e];
    disp(A)
    disp(i)
    
 end



