clear all
clc

% Constant
M = 2; % g/mol

% Parameters
params = load_parameters();

% Input data
m = 4.2e3; % g

% Pressure model
n = m/M; % mol
p = pressure_model(n,params) % Pa
p_bar = p/1e5 % bar

% Validation with example from:
% https://www.mahytec.com/en/products/compressed-hydrogen-storage/
% 60 bar