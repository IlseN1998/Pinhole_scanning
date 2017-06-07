%% Quiver box plot
close all;
figure(1);

hold on
quiver3(rpin(:,1),rpin(:,2),rpin(:,3),normpin(:,1),normpin(:,2),normpin(:,3));

size = [Lx Ly 20];
origin = [-Lx/2 -Ly/2 -20/2];
x=([0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0]-0.5)*size(1)+origin(1)+size(1)/2;
y=([0 0 1 1 0 0;0 1 1 0 0 0;0 1 1 0 1 1;0 0 1 1 1 1]-0.5)*size(2)+origin(2)+size(2)/2;
z=([0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1]-0.5)*size(3)+origin(3)+size(3)/2;
for i=1:6
    h=patch(x(:,i),y(:,i),z(:,i),'w');
    set(h,'edgecolor','k')
end 

axis image
xlabel('x-axis (mm)'); ylabel('y-axis (mm)'); zlabel('z-axis (mm)')

hold off

%% Image generation
figure(2);

a1 = -Lx/2:dx:Lx/2;
a2 = -Ly/2:dy:Ly/2;
h = pcolor(a1,a2,squeeze(quality(:,:,10)));
axis image
xlabel('x-axis (mm)'); ylabel('y-axis (mm)'); zlabel('z-axis (mm)')
colorbar('EastOutside');
set(h, 'EdgeColor', 'none');