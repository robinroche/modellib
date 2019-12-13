% Model equations

function [V_el,P_el_stack,np_h2,np_h2_kg,np_h2_m3] = el_model(params,I_e,I)
  % Voltage
  V_el = params.n_c*(params.V_rev + (params.r1 + params.r2*params.T_e)*I_e/params.A_e...
    + (params.s1 + params.s2*params.T_e + params.s3*params.T_e^2) * log(1 + ...
    (params.t1 + params.t2/params.T_e + params.t3/params.T_e^2)*I_e/params.A_e)); % [V]
        
  % Current efficiency
  eta_f = (I_e/params.A_e)^2/(params.f1 + (I_e/params.A_e)^2)*params.f2;
        
  % Hydrogen production rate
  np_h2 = eta_f*params.n_c*I_e/(params.n_e*params.F);  % [mol/s]
  np_h2_kg = np_h2*2/1e3*3600; % [kg/h]
  np_h2_m3 = np_h2*3600*0.08206*293.15/1e3; % [Nm^3/h]
        
  % Power
  P_el_stack = V_el*I_e;
end
