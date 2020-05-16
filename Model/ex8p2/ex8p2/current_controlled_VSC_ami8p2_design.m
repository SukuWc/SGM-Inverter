
current_controlled_VSC_ami8p2_init

Ts = 2e-5;
%Amirnaser PLL
addpath('../../pll');
[PLL_H,PLL_wmin,PLL_wmax]=ami_PLLdesign(omega0, 200, Vs, 60,Ts);

%feedforward mérés
Gff = tf(1,[8e-6 1]);
Gff = c2d(Gff,Ts);

taui = 2e-3;

kp = (L+Lz)/taui;
ki = (R+Rz+ron)/taui;
%kp = 2;
%ki = 32.6;

%C = c2d(tf([kp ki],[1 0]),Ts)
