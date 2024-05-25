clc 
clear all

A=[1,2,3;4,5,6;7,8,9]   %created 3*3 matrix A

%a)
A(2:3,2:3)       %gives row from 2 to 3 and column from 2 to 3

%b)
A(3,:)=[]       %deletes third row and prints all columns

%c)
size(A)         %find the size of the matrix

%d)
A(:)            %prints all the elements of the array 

%e)
A(end,:)       %prints last row using end

%f)
Diag = diag(A)   %gives diagonal elements of a matrix

