%Initialize constants
clc
close all

%Init
x0=[85;0;0;0;0;0;0;0.1;0];%u=85m/s 
u = [0;-0.1;0;0.08;0.08];
sim('RCAM_simulation.slx')
