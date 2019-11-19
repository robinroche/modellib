% *** MODEL ***
% Component: fuel cell
% Type: PEM, voltage-curent
% Input: current
% Output: voltage, power, hydrogen consumption
% Parameters: see load_parameters.m

% *** FILES ***
% README.m: this document
% fc_model.m: the model itself 
% load_parameters.m: to load the parameters of the model
% validation.m: a test to validate the model

% *** CONTRIBUTORS ***
% Name: Robin Roche
% Affiliation: UBFC / UTBM, FEMTO-ST / FCLAB

% *** REFERENCES ***

% For the fuel cell model itself:
% [1] Larminie, James, Andrew Dicks, and Maurice S. McDonald. 
% Fuel cell systems explained. Vol. 2. Chichester, UK: J. Wiley, 2003.

% [2] Chien-Hsing Lee, Jian-Ting Yang, Modeling of the Ballard-Mark-V 
% proton exchange membrane fuel cell with power converters for applications 
% in autonomous underwater vehicles, Journal of Power Sources, Volume 196, 
% Issue 8, 15 April 2011, Pages 3810-3823

% For the parameters:
% [3] Larminie, James, Andrew Dicks, and Maurice S. McDonald. 
% Fuel cell systems explained. Vol. 2. Chichester, UK: J. Wiley, 2003.

% [4] Chien-Hsing Lee, Jian-Ting Yang, Modeling of the Ballard-Mark-V 
% proton exchange membrane fuel cell with power converters for applications 
% in autonomous underwater vehicles, Journal of Power Sources, Volume 196, 
% Issue 8, 15 April 2011, Pages 3810-3823

% TODO
% - Improve the system model, currently very basic (a simple efficiency vs. the stack)