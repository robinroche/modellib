% Validation of the model
% Tested with Octave 4.4.1: OK

clear all
clc

% Load parameters
params = load_parameters();


%% Plot of power curves

% Compute output power
v = 0:0.1:(params.v_co+5); % [m/s] - Input wind speed
for i=1:length(v)
  Pwt_curve(i) = wt_model(params,v(i));
end

% For comparison, data from https://en.wind-turbine-models.com/turbines/16-vestas-v90
v_ref = 0:1:16;
P_ref = 1e3*[0 0 0 0 93.3 211.3 390.9 601.1 884.5 1247.1 1594.3 1861.2 ...
  1993.2 2007 2007.3 2007 2006.7];

% Plot power curve
figure
plot(v,Pwt_curve/1e6,v_ref,P_ref/1e6)
xlabel('Wind speed [m/s]')
ylabel('Output power [MW]')
title('Power curve')
legend('Model','Reference')
ylim([-0.5 max(Pwt_curve/1e6)+0.5])
grid


%% Plot of power profile

% Load input data
% Data resolution: 1 min, unit: m/s, height: 80 m
load('v_data.mat');
tmax = length(v_data);
time = 1:tmax;

% Compute output power
for i=1:tmax
  Pwt_profile(i) = wt_model(params,v_data(i));
end

% Plot output
figure
subplot(2,1,1)
plot(time,v_data)
xlabel('Time [min]')
ylabel('Wind speed [m/s]')
xlim([0 tmax])
grid

subplot(2,1,2)
plot(time,Pwt_profile/1e6)
xlabel('Time [min]')
ylabel('Power output [MW]')
title('Wind turbine output')
xlim([0 tmax])
ylim([-0.5 max(Pwt_profile/1e6)+0.5])
grid

