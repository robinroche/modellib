% Load parameters of the model

function params = load_parameters(n)
  % Electrolyzer configuration
  params.n_c = 31; % number of cells in series

  % Constant parameters
  params.r1 = 7.331e-5; % resistance coeff. [Ohm/m^2]
  params.r2 = -1.107e-7; % resistance coeff. [Ohm/°C-m^2]
  params.s1 = 1.586e-1; % overvoltage coeff. [V]
  params.s2 = 1.378e-3; % overvoltage coeff. [V/°C]
  params.s3 = -1.606e-5; % overvoltage coeff. [V/°C^2]
  params.t1 = 1.559e-2; % overvoltage coeff. [m^2/A]
  params.t2 = -1.302; % overvoltage coeff. [m^2-°C/A]
  params.t3 = 4.213e2; % overvoltage coeff. [m^2-C^2/A]
  params.A_e = 0.25; % electrode area [m^2]
  params.f1 = 250; % efficiency coeff.
  params.f2 = 0.96; % efficiency coeff.
  params.n_e = 2; % constant
  params.F = 96485; % Faraday constant
  params.deltaH = 286e3; % enthalpy for splitting water [kJ/mol]

  % Parameters dependent on temperature
  if(n==1) % T=20°C
    params.T_e = 20; % [°C]
    params.V_rev = 1.229; % resersible voltage [V]
  end
  if(n==2) % T=80°C
    params.T_e = 80; % [°C]
    params.V_rev = 1.184; % resersible voltage [V]
  end  
end