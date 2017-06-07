%% Quiver box plot
clc; 
figure(1); 

hold on
quiver3(rpin(:,1),rpin(:,2),rpin(:,3),normpin3(1,:)',normpin3(2,:)',normpin3(3,:)');

size = [Lx Ly Lz];
origin = [-Lx/2 -Ly/2 0];
x=([0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0]-0.5)*size(1)+origin(1)+size(1)/2;
y=([0 0 1 1 0 0;0 1 1 0 0 0;0 1 1 0 1 1;0 0 1 1 1 1]-0.5)*size(2)+origin(2)+size(2)/2;
z=([0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1]-0.5)*size(3)+origin(3)+size(3)/2;
for i=1:6
    h=patch(x(:,i),y(:,i),z(:,i),'w');
    set(h,'edgecolor','k')
end 

%hh=patch([);

axis image
xlabel('x-axis (mm)'); ylabel('y-axis (mm)'); zlabel('z-axis (mm)')
view(3);

hold off

%% Image generation
figure(4); %image inbetween 2 pinholes

a1 = -Lx/2:dx:Lx/2;
a2 = -Ly/2:dy:Ly/2;

%all different z-coordinates of rph
uniquerph_z=unique(rph(3,:)); 
%f_qual_rph is de omrekeningsfactor van rph naar quality
%zz1 is the height of the middle pinhole (as index for quality)
%zz2 is the height of the mid-1 pinhole (as index for quality)
f_qual_rph=(length(quality(:,3))/max(unique(rph(3,:))));
zz1= uniquerph_z(round(length(uniquerph_z)/2))*f_qual_rph;
zz2= uniquerph_z(round(length(uniquerph_z)/2-1))*f_qual_rph;

h1=imagesc(squeeze(quality(:,:,62)'));
%h = pcolor(a1,a2,squeeze(quality(:,:,10))');
axis image
xlabel('x-axis (mm)'); ylabel('y-axis (mm)'); %zlabel('z-axis (mm)')
colorbar('EastOutside');
% set(h, 'EdgeColor', 'none');


figure(5); %image on pinhole

a1 = -Lx/2:dx:Lx/2;
a2 = -Ly/2:dy:Ly/2;

h2=imagesc(squeeze(quality(:,:,72)'));
%h = pcolor(a1,a2,squeeze(quality(:,:,10))');
axis image
xlabel('x-axis (mm)'); ylabel('y-axis (mm)'); %zlabel('z-axis (mm)')
colorbar('EastOutside');
% set(h, 'EdgeColor', 'none');