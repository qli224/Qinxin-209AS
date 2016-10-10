rr = 25; % length of the front arm.

%% FK
% the angle that human arm can normally reach
theta = -pi/2:0.1:pi;
alpha = -pi:0.1:pi;

% aa = [1 0 0 0; 0 1 0 0; 0 0 1 d; 0 0 0 1];
[THETA,ALPHA] = meshgrid(theta, alpha); % creat grid of alpha and theta

% coordinates of the second joint
xx = 25.*cos(THETA).*cos(ALPHA);
yy = 25*sin(THETA).*cos(ALPHA);
zz = 25*sin(ALPHA);
% T = [xx,yy,D]; % trans matrix
% R = [cos(THETA) -sin(THETA).*cos(ALPHA) sin(THETA).*sin(ALPHA); sin(THETA) cos(THETA).*cos(ALPHA) -cos(THETA).*sin(ALPHA)]; % ZERO sin(ALPHA) cos(ALPHA)];

data1 = [xx(:) yy(:) zz(:) THETA(:)];% create x-y-theta dataset
data2 = [xx(:) yy(:) zz(:) ALPHA(:)];% create x-y-alpha dataset

comet3(xx(:), yy(:), zz(:));
axis equal;

%% IK

% Assuming the orientation is (0,0,0) in the coordinate

% experiment 
% Assuming the end-effector is (2,4,6)
% the result is in rads [alpha theta]
ik1([2 4 6 3; 0 0 0 1])





