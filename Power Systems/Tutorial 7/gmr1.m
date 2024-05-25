function [GMRL,GMRC] = gmr1(a,d,r)

if a==2  %2 conductors
    GMRC=(r*d);
    GMRL=(0.7788*r*d);
    
elseif a==3  % 3 conductors
    GMRC=(r*(d^2));
    GMRL=(0.7788*r*(d^2));
    
elseif a==4  % 4 conductors
    GMRC=(r*(d^3)*sqrt(2));
    GMRL=(0.7788*r*(d^3)*sqrt(2));

else
    disp('WARNING!')
end

