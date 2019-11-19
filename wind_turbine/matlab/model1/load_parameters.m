% Load parameters of the model

% Modeled turbine: Vestas V90 2 MW
% https://www.vestas.com/en/products/2-mw-platform/v90-2_0_mw
function params = load_parameters()
  params.Pmax = 2e6; % [W] - Max. power output
  params.v_ci = 4; % cut-in speed [m/s]
  params.v_r = 12; % rated speed [m/s]
  params.v_co = 25; % cut-out speed [m/s]
end