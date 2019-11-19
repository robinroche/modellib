% Validation of the model
% Tested with Octave 4.4.1: OK

clear all
clc

% Load parameters
params = load_parameters();

% Compute voltage
I_a_max = 1200; % [mA/cm^2]
I_a = 0:1:I_a_max; % [mA/cm^2]
I = I_a*params.A_f/1e3; % [A]
for i=1:length(I_a)
    [V_fc(i),P_fc_stack(i),P_fc_sys(i),np_h2(i),np_h2_kg(i)] = fc_model(params,I_a(i),I(i));
end

% Plot output
figure
subplot(2,1,1)
plot(I,V_fc)
hold on
xlabel('Current (A)')
ylabel('Voltage (V)')
title('Fuel cell stack voltage')
xlim([0 max(I)])
ylim([0.9*min(V_fc) 1.1*max(V_fc)])
grid on

subplot(2,1,2)
plot(I,P_fc_stack/1e3, I,P_fc_sys/1e3)
hold on
xlabel('Current (A)')
ylabel('Power (kW)')
title('Fuel cell power')
xlim([0 max(I)])
ylim([0 1.1*max(P_fc_stack/1e3)])
legend('Stack power','System power')
grid on

figure
plot(I,np_h2)
xlabel('Current (A)')
ylabel('H_2 flow (mol/s)')
title('Hydrogen consumption')
xlim([0 max(I)])
ylim([0 1.1*max(np_h2)])
grid on