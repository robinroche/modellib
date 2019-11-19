% Load parameters of the model

function params = load_parameters()
  params.A_f = 232; % cell active surface area [cm^2]
  params.n_c = 35; % number of cells in series
  params.n_e = 2; % number of moles of electrons per mole of water
  params.F = 96485; % Faraday constant [As/mol]
  params.V_0 = 1.031; % [V]
  params.b = 0.03; % [V]
  params.R = 0.000245; 
  params.m = 2.11e-5; 
  params.n = 0.008; 
  params.syseff = 0.8; % system efficiency (vs. stack)
end