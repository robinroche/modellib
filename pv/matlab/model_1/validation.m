% Validation of the model
% Tested with Octave 4.4.1: OK

clear all
clc

% Load parameters
params = load_parameters();

% Load input data
load('radiation_20150408.mat');

% Compute output power
tmax = 3*60*24; % take 3 days from the full profile
for i=1:tmax
  Ppv(i) = pv_model(params,radiation(i));
end

% Plot output
plot(1:tmax,Ppv)
xlabel('Index')
ylabel('Power output [W]')
title('PV plant output')
grid

