% Load parameters of the model
% PV panel model: SPR-435NE-WHT-D from SunPower
% See datasheet

function params = load_parameters()
  params.N_s = 128; % number of cells in series in a module
  params.N_p = 1; % number of cells in parallel in a module
  params.I_sc = 6.43; % short circuit current [A]
  params.V_oc = 85.6; % open circuit voltage [V]
  params.V_max = 110; % [V]
  params.A = 1.3; % ideal factor
  params.E_g = 1.11; % band gap energy of semiconductor
  params.K_i = 0.0035; % temperature coeff. of SC current [A/K]
end