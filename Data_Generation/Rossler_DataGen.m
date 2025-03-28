% Copyright 2025, All Rights Reserved
% Code by Lloyd Fung

clear all, close all, clc
addpath(genpath('./'));

rng(130);

% Set the parameters of the Rossler system
param.a = 0.2;
param.b = 0.2;
param.c = 5.7;

%% generate Data
x0= [-6,5,0];  % Initial condition

% Integrate in time using ode89
t_final=35; 
dt=0.05;
tspan=0:dt:t_final; 
N = length(tspan);
ODEoptions = odeset('RelTol',1e-12,'AbsTol',1e-12);
[t,x]=ode89(@(t,x) Rossler(t,x,param),tspan,x0,ODEoptions);

%% Add noise
eps_x = rms(x(:))*0.2; % 20 % Noise to signal ratio

Data = x + eps_x*randn(size(x));

%% Save Data
save Rossler.mat Data eps_x dt;