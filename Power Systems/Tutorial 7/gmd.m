function [GMD, GMRL, GMRC] = gmd(r)

nc = -1;
while nc ~=1 & nc ~= 2
    nc = input('Select number of menu ');
    if nc ~= 1 & nc ~= 2 
        disp('Enter 1 or 2')
    end
end
fprintf(' \n')

if nc == 1
    unit ='z';
    while strcmp(unit,'m')~=1 & strcmp(unit,'M') ~=1 & strcmp(unit,'ft')~=1 & strcmp(unit,'FT') ~=1
        unit = input('Enter spacing unit within quotes ''m'' or ''ft''-> ');
        if strcmp(unit,'m')~=1 & strcmp(unit,'M') ~=1 & strcmp(unit,'ft')~=1 & strcmp(unit,'FT') ~=1
            disp('Incorrect spacing unit, try again')
        end
    end
    space = 0;
    while length(space) ~= 3
        space = input('Enter row vector [D12, D23, D13] = ');
        if length(space) ~= 3
            disp(' Values of D12, D23, D13 must be entered within brackets, try again.')
        end
    end
D12 = space(1); D23 = space(2);D13=space(3);
GMD = (D12*D23*D13)^(1/3);
GMRL = 0.7788*r; 
GMRC = r;
    
elseif nc == 2
    nph = 0;
    while nph ~= 1 & nph ~= 2
        nph = input('Enter (1 or 2) -> ');
    end
    fprintf(' \n')
    unit = 0;
    while strcmp(unit,'m')~=1 & strcmp(unit,'M') ~=1 & strcmp(unit,'ft')~=1 & strcmp(unit,'FT') ~=1
        unit = input('Enter spacing unit within quotes ''m'' or ''ft''-> ');
        if strcmp(unit,'m')~=1 & strcmp(unit,'M') ~=1 & strcmp(unit,'ft')~=1 & strcmp(unit,'FT') ~=1
            disp('Incorrect spacing unit, try again')
        end
    end
    S = 0;
    while length(S) ~= 3
        S = input('Enter row vector [S11, S22, S33] = ');
        if length(S) ~= 3
        disp(' Values of S11, S22, S33 must be entered within brackets, try again.')
        end
    end
    H = 0;
    while length(H) ~= 2
        H = input('Enter row vector [H12, H23] = ');
        if length(H) ~= 2
            disp('Values of H12, H23 must be entered within brackets, try again.')
        end
    end
        
    S11 = S(1); S22 = S(2); S33 = S(3); H12 = H(1); H23 = H(2);
    a1 = -S11/2 + j*H12;
    b1 = -S22/2 + j*0;
    c1 = -S33/2 - j*H23;
    if nph == 1
        a2 = S33/2 - j*H23;
        b2 = S22/2 + j*0;
        c2 = S11/2 + j*H12;
    elseif nph == 2
        a2 = S11/2 + j*H12;
        b2 = S22/2 + j*0;
        c2 = S33/2 - j*H23;
    end
Da1b1 = abs(a1 - b1); 
Da1b2 = abs(a1 - b2);
Da1c1 = abs(a1 - c1); 
Da1c2 = abs(a1 - c2);
Db1c1 = abs(b1 - c1); 
Db1c2 = abs(b1 - c2);
Da2b1 = abs(a2 - b1); 
Da2b2 = abs(a2 - b2);
Da2c1 = abs(a2 - c1); 
Da2c2 = abs(a2 - c2);
Db2c1 = abs(b2 - c1); 
Db2c2 = abs(b2 - c2);
Da1a2 = abs(a1 - a2);
Db1b2 = abs(b1 - b2);
Dc1c2 = abs(c1 - c2);
DAB=(Da1b1*Da1b2* Da2b1*Da2b2)^0.25;
DBC=(Db1c1*Db1c2*Db2c1*Db2c2)^.25;
DCA=(Da1c1*Da1c2*Da2c1*Da2c2)^.25;
GMD=(DAB*DBC*DCA)^(1/3);
DSA=sqrt(0.7788*r*Da1a2); 
DSB=sqrt(0.7788*r*Db1b2); 
DSC=sqrt(0.7788*r*Dc1c2);
rA = sqrt(r*Da1a2);
rB = sqrt(r*Db1b2);
rC = sqrt(r*Dc1c2);
GMRL=(DSA*DSB*DSC)^(1/3); 
GMRC = (rA*rB*rC)^(1/3);

end