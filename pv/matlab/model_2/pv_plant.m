% PV plant model (combination of modules)

function [I_pv,P_pv] = pv_plant(params,solar_rad,T_amb,v_wind,V_pv,Nm_s,Nm_p)
  % Inputs:
  % params: module parameters
  % solar_rad: solar radiation [W/m^2]
  % T_amb: ambient temperature [degC]
  % v_wind: wind speed [m/s]
  % V_pv: plant voltage [V]
  % Nm_s: number of modules in series
  % Nm_p: number of modules in parallel
  % Outputs:
  % I_pv: plant current [A]
  % P_pv: plant power output [W]
  
  % Cell temperature estimate [K]
  % Source: A.M. Muzathik, Photovoltaic modules operating temperature 
  % estimation using a simple correlation. 
  % International Journal of Energy Engineering. 2014 Aug 1;4(4):151.
  T_c = (0.943*T_amb+0.0195*solar_rad-1.528*v_wind+0.3529)+273.15;
  
  % Extract module values
  V_mod = V_pv/Nm_s;

  % Determine module output  
  [I_mod,P_mod] = pv_module(params,solar_rad,T_c,V_mod);
  
  % Determine plant output
  I_pv = Nm_p*I_mod;
  P_pv = V_pv*I_pv;
end
