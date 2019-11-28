% Validation of the model
% Tested with Octave 4.4.1: OK

clear all
clc

% Load parameters
params = load_parameters(2); % see function for meaning of n

% Model
I_max = 900; % [A]
I_e = 0:1:I_max;
for i=1:length(I_e)
  [V_el(i),P_el_stack(i),np_h2(i),np_h2_kg(i),np_h2_m3(i)] = el_model(params,I_e(i),I(i));
end
    
% Voltage curve
figure
plot(I_e/params.A_e*1e3/1e4,V_el/params.n_c)
hold on
xlabel('Current [mA/cm^2]')
ylabel('Voltage per cell [V]')
title('Electrolyzer voltage')
grid on

% Hydrogen production and stack power
figure
subplot(1,2,1)
plot(I_e,np_h2_m3)
xlabel('Current [A]')
ylabel('H_2 flow [Nm^3/h]')
title('Hydrogen production')
grid on

subplot(1,2,2)
plot(I_e,P_el_stack/1e3)
xlabel('Current [A]')
ylabel('Power [kW]')
title('Power consumption')
grid on


