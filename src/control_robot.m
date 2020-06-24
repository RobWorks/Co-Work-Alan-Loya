function control_robot(tspan,x0,Pd)

global Jv Ke d a alpha temp A B C index Yref dYref ddYref col Xarm
temp = 0;
%Parametros del sistema
d = [0.2703 0 0.3644 0 0.3743 0 0.2295]; %metros
a = [0.069 0 0.069 0 0.01 0 0]; %metros
alpha = [-pi/2 pi/2 -pi/2 pi/2 -pi/2 pi/2 0]; %radianes

%Limites
lim = [1.047 -2.147;2.618 -0.05;2.094 -1.5707;1.7016 -1.7016;...
    3.0541 -3.0541;3.059 -3.059; 3.059 -3.059];

for i=1:7
    % create links using D-H parameters
    L(i) = Link([x0(i) d(i) a(i) alpha(i)]); 
    %L(i).qlim = [lim(i,2) lim(i,1)];
end
% create the robot model
Robot = SerialLink(L);
Robot.name = 'Robot';

T = D_H(x0(1:7),a,alpha,d,0,7);
J = jacobiano(T);
Jv = J(4:6,:);

%MATRICES DEL MOTOR
Ra = 11.24;
La = 2.713e-3;
Kb = 14.87e-3;
Kt = Kb;
bm = 2.01e-6;
Jm = 2779.56e-9;

A = [-Ra/La -Kb/La;Kt/Jm -bm/Jm];
B = [1/La;0];
C = [0 1];

%CALCULAMOS GANANCIAS DE CONTROL
Ke = Pd;

%RESOLVER ECUACIONES DIFERENCIALES ORDINARIAS
[t,Xarm] = ode45(@SegRef_sys,tspan,x0);

%Graficar trayectoria del robot
figure;
subplot(3,1,1); plot(t,Xarm(:,8));title('ESTADO 8'); grid;
subplot(3,1,2); plot(t,Xarm(:,9));title('ESTADO 9'); grid;
subplot(3,1,3); plot(t,Xarm(:,10));title('ESTADO 10'); grid;
figure;
subplot(7,1,1); plot(t,Xarm(:,1));title('ESTADO 1'); grid;
subplot(7,1,2); plot(t,Xarm(:,2));title('ESTADO 2'); grid;
subplot(7,1,3); plot(t,Xarm(:,3));title('ESTADO 3'); grid;
subplot(7,1,4); plot(t,Xarm(:,4));title('ESTADO 4'); grid;
subplot(7,1,5); plot(t,Xarm(:,5));title('ESTADO 5'); grid;
subplot(7,1,6); plot(t,Xarm(:,6));title('ESTADO 6'); grid;
subplot(7,1,7); plot(t,Xarm(:,7));title('ESTADO 7'); grid;
figure;
plot(Xarm(:,8),Xarm(:,10));
figure;
traj_xyz = Xarm(:,(1:7));
Robot.plot(traj_xyz)
end

function dX = SegRef_sys(t,X)

global Jv Ke d a alpha temp
    
yref = [.3*cos(t);.6;.5+.3*sin(t)];
dYref = [-.3*sin(t);0;.3*cos(t)];
%yref = [.5;.5;.5];
%dYref = [0;0;0];
if(t - temp >= 1e-15)
    T = D_H(X(1:7),a,alpha,d,0,7);
    J = jacobiano(T);
    Jv = J(4:6,:);
    temp = t;
end
e = yref - X(8:10);
U = pinv(Jv)*(dYref - Ke*e);
    
%ODE's
dX = [U;Jv*U];

end