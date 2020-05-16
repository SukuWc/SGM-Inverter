%Amirnaser 8p2
L = 100e-6; %soros tekercs induktivitása [H]
R = 0.75e-3; %soros tekercs ellenállás [ohm]

ron = 0.88e-3; %félvezetõk vezetési ellenállása
Vd = 1; %félvezetõk vezetési feszültségesése
VDC = 1250; %egyenfeszültség
fs = 3420; %kapcsolási frekvencia

Vn = 480; %váltakozó feszültség vonali effektív értéke
Vs = Vn/sqrt(3)*sqrt(2); %váltakozó feszültség fázis csúcsértéke

Sz = 600e6; % hálózat zárlati teljesítmény
X_R_ratio = 7; % hálózati X/R arány

omega0 = 2*pi*60;

TimeSample = 1e-6;

Zz = Vn^2/Sz;
Rz = Zz/sqrt(1+X_R_ratio^2);
Xz = Rz*X_R_ratio;
Lz = Xz/omega0;