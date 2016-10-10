function m = ik1 (K)
a1=0;         % [m]
a2=0;         % [m]
a3=0;         % [m]

dk=K;          % Direct kinematics matrix

% Inverse Kinematic
pw_x=dk(1,1);   % Vector's components that representes the end-effector position
pw_y=dk(1,2);
pw_z=dk(1,3);

aa = asin((pw_z-a3)/25);
bb = acos(pw_x/(25*cos(aa)));

m = [aa bb];
end
