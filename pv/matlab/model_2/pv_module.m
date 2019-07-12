% PV module model
% Source: Tsai, Huan-Liang, Ci-Siang Tu, and Yi-Jie Su, 
% Development of generalized photovoltaic model using MATLAB/SIMULINK,
% In Proceedings of the world congress on Engineering and computer science, 
% pp. 1-6. 2008.

function [I_mod,P_mod] = pv_module(params,solar_rad,T_c,V_mod)
  % Inputs:
  % params: module parameters
  % solar_rad: solar radiation [W/m^2]
  % T_c: cell temperature [K]
  % V_mod: module voltage [V]
 % Outputs:
  % I_mod: module current [A]
  % P_mod: module power output [W]
  
  % Constants
  k = 1.38e-23; % Boltzmann constant [J/K]
  q = 1.602e-19; % electronic charge [C]
  T_ref = 25 + 273.15; % [K]
  
  % Equations
  I_rs = params.I_sc/(exp(q*params.V_oc/(params.N_s*k*params.A*T_c))-1);
  I_s = I_rs*(T_c/T_ref)^3*exp(q*params.E_g*(1/T_ref-1/T_c)/(k*params.A));
  I_ph = (params.I_sc + params.K_i*(T_c-T_ref))*solar_rad/1e3;
  I_mod = params.N_p*I_ph - params.N_p*I_s*(min(exp(q*V_mod/(params.N_s*params.A*k*T_c)),realmax)-1);
  P_mod = V_mod*I_mod;
end
