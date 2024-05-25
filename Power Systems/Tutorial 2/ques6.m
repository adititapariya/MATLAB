clc
clear all

r=0;
res=1;
for i=2:20
    for j=1:i
        r=r+j^3;
    end
    res = res * r;
end
res

        
    