function [X,Y,Z] = Bed_Pos_helix(phantom_size,R_transaxial,N_Pos_rev,N_Pos_tot)

Z_step = (phantom_size(3))/(N_Pos_tot-1);

X=[];Y=[];Z=-phantom_size(3)/2;
for l=1:N_Pos_tot
    X = [X,R_transaxial*cos(2*pi/N_Pos_rev*(l-1))];
    Y = [Y,R_transaxial*sin(2*pi/N_Pos_rev*(l-1))];
    Z = [Z,Z(end)+Z_step];
end
Z = Z(1:end-1);

for i=1:size(Z,2)
    if abs(Z(i))>abs(phantom_size(3)/2)-3 && Z(i)<0
        Z(i)=-phantom_size(3)/2+3;
    elseif abs(Z(i))>abs(phantom_size(3)/2)-3 && Z(i)>0
        Z(i)=phantom_size(3)/2-3;
    end
end

figure();
plot3(X,Y,Z,'-');axis('equal');








