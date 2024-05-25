clc
clear all

n= input('enter number of rows= ');
for i = 1:n
    for j = 1:i
        fprintf('*');
    end
    fprintf('\n');
end