% Copyright 2025, All Rights Reserved
% Code by Lloyd Fung

clear all, close all, clc
addpath(genpath('./'));

rng(130);

% Set the parameters of the Rossler system
param.alpha = 0.66;
param.beta = -1.25;
param.gamma = -1; 
param.delta = 1;

%% generate Data
x0= [3,0.5];  % Initial condition

% Integrate in time using ode89
t_final=32; 
dt=0.02;
tspan=0:dt:t_final; 
N = length(tspan);
ODEoptions = odeset('RelTol',1e-12,'AbsTol',1e-12);
[t,x]=ode89(@(t,x) lotkavolterra(t,x,param),tspan,x0,ODEoptions);

%% Add noise
eps_x = rms(x(:))*0.1; % 20 % Noise to signal ratio

Data = x + eps_x*randn(size(x));

%% Save Data
save LotkaVolterra.mat Data eps_x dt;