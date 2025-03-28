% Copyright 2025, All Rights Reserved
% Code by Lloyd Fung

clear all, close all, clc
addpath(genpath('./'));

rng(129);

% Set the parameters of the Lorentz system
param.sigma = 10;  % Lorenz's parameters (chaotic)
param.beta = 8/3;
param.rho = 28;

%% generate Data
x0= [-8,8,27]; % Initial condition

% Integrate in time using ode89
t_final=8; 
dt=t_final/800;
tspan=0:dt:t_final;
N = length(tspan);
ODEoptions = odeset('RelTol',1e-12,'AbsTol',1e-12);
[t,x]=ode89(@(t,x) lorenz(t,x,param),tspan,x0,ODEoptions);

%% Add noise
eps_x = rms(x(:))*0.2; % 20 % Noise to signal ratio

Data = x + eps_x*randn(size(x));

%% Save Data
save Lorenz.mat Data eps_x dt;