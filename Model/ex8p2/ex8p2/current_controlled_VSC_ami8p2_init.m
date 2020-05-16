%Amirnaser 8p2
L = 100e-6; %soros tekercs induktivit�sa [H]
R = 0.75e-3; %soros tekercs ellen�ll�s [ohm]

ron = 0.88e-3; %f�lvezet�k vezet�si ellen�ll�sa
Vd = 1; %f�lvezet�k vezet�si fesz�lts�ges�se
VDC = 1250; %egyenfesz�lts�g
fs = 3420; %kapcsol�si frekvencia

Vn = 480; %v�ltakoz� fesz�lts�g vonali effekt�v �rt�ke
Vs = Vn/sqrt(3)*sqrt(2); %v�ltakoz� fesz�lts�g f�zis cs�cs�rt�ke

Sz = 600e6; % h�l�zat z�rlati teljes�tm�ny
X_R_ratio = 7; % h�l�zati X/R ar�ny

omega0 = 2*pi*60;

TimeSample = 1e-6;

Zz = Vn^2/Sz;
Rz = Zz/sqrt(1+X_R_ratio^2);
Xz = Rz*X_R_ratio;
Lz = Xz/omega0;