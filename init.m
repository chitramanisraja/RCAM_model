%Initialize constants
clc
close all

%%
%Init
x0=[85;0;0;0;0;0;0;0.1;0];%u=85m/s 
u = [0;-0.1;0;0.08;0.08];
sim('RCAM_simulation.slx')

%%
%Plot
t=out.simX.Time;
u1=out.simU.Data(:,1);
u2=out.simU.Data(:,2);
u3=out.simU.Data(:,3);
u4=out.simU.Data(:,4);
u5=out.simU.Data(:,5);

x1=out.simX.Data(:,1);
x2=out.simX.Data(:,2);
x3=out.simX.Data(:,3);
x4=out.simX.Data(:,4);
x5=out.simX.Data(:,5);
x6=out.simX.Data(:,6);
x7=out.simX.Data(:,7);
x8=out.simX.Data(:,8);
x9=out.simX.Data(:,9);

%%figures
figure
subplot(5,1,1)
plot(t,u1)
legend('u1 aileron deviation')
grid on

subplot(5,1,2)
plot(t,u2)
legend('u2 Elevator deviation')
grid on

subplot(5,1,3)
plot(t,u3)
legend('u3 Rudder deviation')
grid on

subplot(5,1,4)
plot(t,u4)
legend('u4 throttle1')
grid on

subplot(5,1,5)
plot(t,u5)
legend('u5 throttle2')
grid on

%state_figures
figure
subplot(3,3,1)
plot(t,x1)
legend('x_1 translational velocity along x axis')
grid on

subplot(3,3,4)
plot(t,x2)
legend('x_2 translational velocity along y axis')
grid on

subplot(3,3,7)
plot(t,x3)
legend('x_3 translational velocity along z axis')
grid on

subplot(3,3,2)
plot(t,x4)
legend('x_4 roll rate')
grid on

subplot(3,3,5)
plot(t,x5)
legend('x_5 pitch rate')
grid on

subplot(3,3,8)
plot(t,x6)
legend('x_6 roll rate')
grid on

subplot(3,3,3)
plot(t,x7)
legend('x_7 roll angle')
grid on

subplot(3,3,6)
plot(t,x8)
legend('x_8 pitch angle')
grid on

subplot(3,3,9)
plot(t,x9)
legend('x_9 heading angle')
grid on

