% Model equations

function [V_fc,P_fc_stack,P_fc_sys,np_h2,np_h2_kg] = fc_model(params,I_a,I)
  % Voltage
  V_fc = params.n_c*(params.V_0 - params.b*log(I_a) - params.R*I_a ...
    - params.m*exp(params.n*I_a)); % [V]
    
  % Stack and system power
  P_fc_stack = V_fc*I; % [W]
  P_fc_sys = params.syseff*V_fc*I; % [W]
    
  % Hydrogen consumption
  np_h2 = params.n_c*I/(params.n_e*params.F); % [mol/s]
  np_h2_kg = np_h2*2/1e3*3600; % [kg/h]
  np_h2_m3 = np_h2*3600*0.08206*293.15/1e3; % [Nm^3/h]
end
