% Validation of the model
% Tested with Octave 4.4.1: OK

clear all
clc

% Load parameters
params = load_parameters();


%% VOLTAGE-CURRENT AND VOLTAGE-POWER CURVES

solar_rad = [0.2 0.5 0.8 1]*1e3; % solar radiation [W/m^2]
Nm_s = 10; % number of modules in series
Nm_p = 2; % number of modules in parallel
T_amb = 25; % ambient temperature [degC]
v_wind = 2; % wind speed [m/s]
V_max = 1.1*params.V_oc*Nm_s; % max. voltage to display

for j=1:length(solar_rad)
  % Compute plant current
  V = 0:0.01:V_max;
  for i=1:length(V)
    [I_pv(i),P_pv(i)]=pv_plant(params,solar_rad(j),T_amb,v_wind,V(i),Nm_s,Nm_p);
  end
  
  % Plot output
  subplot(2,1,1)
  plot(V,I_pv)
  hold on
  xlabel('Voltage (V)')
  ylabel('Current (A)')
  xlim([0 V_max])
  ylim([0 1.1*max(I_pv)])
  legend('400 W/m^2','600 W/m^2','800 W/m^2','1000 W/m^2','Location','southwest')
  title('I-V curves for different irradiance values')
  grid on
  
  subplot(2,1,2)
  plot(V,P_pv)
  hold on
  xlabel('Voltage (V)')
  ylabel('Power (W)')
  xlim([0 V_max])
  ylim([0 1.1*max(P_pv)])    
  legend('400 W/m^2','600 W/m^2','800 W/m^2','1000 W/m^2','Location','northwest')
  title('P-V curves for different irradiance values')
  grid on
end
