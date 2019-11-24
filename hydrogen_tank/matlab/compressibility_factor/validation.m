clear all
clc

% Pressure vectors
p_psi = 0:1:3500; % PSI
p_bar = p_psi/14.504; % bar

% For T=60 K:
coeffs_60 = [1; -3.56359e-4; 2.17874e-7; 3.48354e-11; -3.10679e-14; 4.27166e-18];
z_60 = compressibility_model(coeffs_60,p_psi);

% For T=293.15 K:
coeffs_293 = [1; 3.66664e-5; 5.34991e-9; -1.66244e-12; 1.94641e-16; 0];
z_293 = compressibility_model(coeffs_293,p_psi);

% For T=313.15 K:
coeffs_313 = [1; 4.20779e-5; -4.61076e-9; 2.36176e-12; -3.24542e-16; 0];
z_313 = compressibility_model(coeffs_313,p_psi);

% Graphical validation
plot(p_bar,z_60,p_bar,z_293,p_bar,z_313)
ylabel('z')
xlabel('Pressure [bar]')
legend('60 K','293.15 K / 20°C','313.15 K / 40°C')
grid