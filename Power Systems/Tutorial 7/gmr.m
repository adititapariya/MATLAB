function [GMRL,GMRC] = gmr(r)
%GMR Summary of this function goes here
D12 = 2*r;   %D16 and D17
D14 = 4*r;     
D15 = 2*sqrt(3)*r;  %D13

%   Detailed explanation goes here
GMRC = ((((D12)^3*(D15)^2*(D14)*r)^6)*r*(D12)^6)^(1/49) ;
GMRL = ((((D12)^3*(D15)^2*(D14)*0.7788*r)^6)*0.7788*r*(D12)^6)^(1/49);
end

