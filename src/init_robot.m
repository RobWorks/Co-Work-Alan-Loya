%robot parameters
q = [0 0 0 0 0 0 0];
d = [0.2703 0 0.3644 0 0.3743 0 0.2295]; %metros
a = [0.069 0 0.069 0 0.01 0 0]; %matros
alpha = [-pi/2 pi/2 -pi/2 pi/2 -pi/2 pi/2 0]; %radianes
m = [5.70044 3.22698 4.31272 2.07206 2.24665 1.60879]; %kg

for i=1:7
    % create links using D-H parameters
    L(i) = Link([q(i) d(i) a(i) alpha(i)]); 
end

% create the robot model
Robot = SerialLink(L);
coder.extrinsic('get_param');
coder.extrinsic('getVariable');
mdlWks = get_param('robot_model','ModelWorkspace');