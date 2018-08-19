clear all;
close all;
clc;
%% Chris May
% Lasers and Nonlinear Optics
% This script plots the theoretical intensity profile for N slits
% for Fraunhofer Diffraction

%% Theoretical
screen_location = 10; % mm
dx = 1e-5;
alpha = (-5000*dx:dx:5000*dx); % mm
% sorry about the units here, it just makes it look near unity
lambda = 1; % microns
k = 2*pi/lambda;
d = 10; % Slit Width microns
a = 100; % Slit Separation microns
N = 2;

I21 = sin(N*k*a*sin(alpha)/2).^2;
I22 = sin(k*a*sin(alpha)/2).^2;
I2 = I21./I22/N;

I11 = sin(k*d*sin(alpha)/2).^2;
I12 = (k*d*sin(alpha)/2).^2;
I1 = I11./I12/N;

string = strcat('Slits: ',num2str(N),', Slit Width: ',num2str(d),'\mum, Slit Separation: ',num2str(a),'\mum ,\lambda: ',num2str(lambda),'\mum');
plot(screen_location*alpha,I1.*I2)
xlabel('x [mm]')
ylabel('Reduced Irrandiance I(\alpha)/I(0)')
grid()
title(string)