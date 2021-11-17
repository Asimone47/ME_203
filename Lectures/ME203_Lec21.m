% Aleksei Simone
% ME203
% Lecture 21

clc; clear all; format compact

%% Differentiation

% Given
x= 0:10;
y=[5 4 2 3 4 7 9 7 6 5 4];
% Calculations
dx=diff(x)
dy=diff(y)

% Calculate slope
dy_dx=dy./dx


%% Example 2

x=linspace(0,pi,50);
y=sin(x);

n=length(x);
% calculate differences
dy=y(3:n)-y(1:n-2);
dx=x(3:n)-x(1:n-2);
% slope
dy_dx=dy./dx
plot(x,y,x(2:n-1),dy_dx)

%% ode45

x=[0 0.5]
y=2
[x,y]=ode45(@odeexample1,x,y);
figure(1)
plot(x,y)

%% ode45 ex 2

x=[6 24];
y=-3;
[x,y]=ode45(@odeexample2,x,y)
figure(2)
plot(x,y)

%% ex 3
t_start=0
t_final=5
t_range=[t_start t_final]
xo=0.05
dxo_dt=0
initial=[xo dxo_dt]
% solve the diff eq
[t s]=ode45('second_order_odes',t_range,initial)
figure(3)
subplot(1,2,1)
plot(t,s(:,1))
subplot(1,2,2)
plot(t,s(:,2))

%% ex4 

t_start=0
t_final=2
t_range=[t_start t_final]
xo=0
dxo_dt=0
initial=[xo dxo_dt]
% solve the diff eq
[t s]=ode45('second_order_odes2',t_range,initial)
figure(3)
subplot(1,2,1)
plot(t,s(:,1))
subplot(1,2,2)
plot(t,s(:,2))






