function [X,Y,Z] = Bed_Pos_plane
clear all
close all
clc

XYZ=[7 0 -37+14.8*0;0 7 -37+14.8*0;-7 0 -37+14.8*0;0 -7 -37+14.8*0;4.9497 4.9497 -37+14.8*1;4.9497 -4.9497 -37+14.8*1;-4.9497 4.9497 -37+14.8*1;-4.9497 -4.9497 -37+14.8*1;7 0 -37+14.8*2;0 7 -37+14.8*2;-7 0 -37+14.8*2;0 -7 -37+14.8*2;4.9497 4.9497 -37+14.8*3;4.9497 -4.9497 -37+14.8*3;-4.9497 4.9497 -37+14.8*3;-4.9497 -4.9497 -37+14.8*3;7 0 -37+14.8*4;0 7 -37+14.8*4;-7 0 -37+14.8*4;0 -7 -37+14.8*4;4.9497 4.9497 -37+14.8*5;4.9497 -4.9497 -37+14.8*5;-4.9497 4.9497 -37+14.8*5;-4.9497 -4.9497 -37+14.8*5];

X=XYZ(:,1)
Y=XYZ(:,2)
Z=XYZ(:,3)

%figure();
%plot3(X,Y,Z,'*');axis('equal');

end


