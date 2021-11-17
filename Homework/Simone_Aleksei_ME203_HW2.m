% Simone Aleksei 
% ME203 1001
% HW2 10/3/21

clear all, clc, format compact, clc;

%% Problem 1

% Given: With the given array x=[1:0.2:5], 

% a) find y=7sin(4x)

x=[1:0.2:5];      %array x   
y=7*sin(4*x)      %array y in radians

% b) The number of elements

a=length(y) %lenth of array y
%21

% c) The third value of y

b=y(3) %indexing the third element of array y
%-4.4189

%% Problem 2

% Given: array x

% a) Number of elements in array x

x=[sin(-pi/2):0.05:cos(0)]; %array x in radians
y=length(x) %number of elements in array x
%41

% b) 10th element of array x

z=x(10) %the 10th element of array x
%-0.5500

%% Problem 3 

% Given: The euation 0=13*x^2+182*x^2-184*x+2503

% a) solve for x

x=[13 182 -184 2503]; %convert the polynomial to a vector
y=roots(x) %use the roots function to find the roots
% -15.6850 + 0.0000i
% 0.8425 + 3.4008i
% 0.8425 - 3.4008i

%% Problem 4 

% Given: calculate

% a) 6pi(tan^-1(12.5))+4

x=12.5; % define x
y=6*pi; % define y
z=y*atan(x)+4 % define a function of x and y in radians
%32.1041

% b) 5tan[3sin^1(13/5)]

a=13/5; % define a
b=asin(a); % define b in radians
c=3*b; % define c
d=tan(c); % define d
e=5*d % calculate the entire equation as a system of equations
%0.0000 - 5.0006i

%% Problem 5

% Given: The curve is described in parametric form by the equations:
% x= r[φ–sin(φ)]
% y= r[1 –cos(φ)]

% a) Plot the cycloid for r= 10 in. and 0 ≤ φ≤ 4π.

r=10;
phi=[0:0.1:4*pi]; 
x=r*(phi-sin(phi));
y=r*(1-cos(phi)); %define variables x and y from phi and r

figure(1)
plot(x,y)
xlabel('x')
ylabel('y')
grid on
title('Cyloid') %plot vairables and label correctly

%% Problem 6

% Given: The function T = 6 ln(t –7 e0.2t) over the interval 1 ≤ t≤ 3
% a) Plot T over the given interval with the correct labels

t=1:0.1:3;
T=6*log(t)-[7*exp(0.2*t)]; %define t and T 

figure(2)
plot(t,T)
grid on
xlabel('minutes')
ylabel('temperature')
title('Temp vs. time') %plot using correct labeling

%% Problem 7 

% Given: pV = mRT

% a) Create a plot having three curves of the gas pressure in N/m2 
% versus the container volume V in m3 for 20 ≤ V≤ 100. The three curves
% correspond to three possible masses of the air in the container: 
% m = 1 kg, 3 kg, and 7 kg.

V=20:100; %m^3
R=286.7; %Nm/kg*K
T=293; %K
m1=1; %kg
m2=3; %kg
m3=7; %kg
p1=(m1*R*T)./V;
p2=(m2*R*T)./V; 
p3=(m3*R*T)./V; %solve for all 3 densities

figure(3)
plot(p1,V)
title('Gas Law')
xlabel('pressure')
ylabel('volume')
hold on
plot(p2,V)
plot(p3,V)
legend('m1=1kg','m2=3kg','m3=7kg') %plot with respect to each mass then 
                                    %then label correctly

%% Problem 8 

% Given: The function y(t)
% a) plot y vs t for multiple instances of b to find how long it takes to
% to reach 98% of it's steady state value

t=0.1:0.01:5; %seconds
b1=1;
b2=2;
b3=3;
y1=1-exp(-b1*t);
y2=1-exp(-b2*t);
y3=1-exp(-b3*t); %find y(t) for multiple b's from 1 to 5 seconds (t)

figure(4)
plot(y1,t)
xlabel('y(t)')
ylabel('t')
title('y(t) vs t')
hold on
plot(y2,t)
plot(y3,t) %plot all three instances of b
legend('b1=1','b2=2','b3=3')

% 98% of steady state 

%steady-state is when y(t)=1 so 98% of steady state is 0.98
%find the t value of 0.98

B1=find(y1>0.98);
B_1=y1(383); %0.9802
t(383); %3.92
B2=find(y2>0.98);
B_2=y2(187); %0.9802
t(187); %1.96
B3=find(y3>0.98);
B_3=y3(122); %0.9804
t(122); %1.31

% The steady state value for y(t) is 1 and it takes an exponential amount
% of time to reach, by a factor of b, at b=1 it takes 3.92 seconds and at
% b=3 it takes 1.31 seconds increasing the value of b only decreases the
% time t to reach the steady state value of 1.

%% Problem 9 

% Given: Volume V and surface area A and radius r
% a)plot V and A vs r in sublots and choose axes that result in a straight
% line.

r=0.1:100; %define radius
V=(4*pi*r.^3)/3; %volume
A=(4*pi*r.^2); %surface area

figure(5)
subplot(1,2,1)
loglog(V,r) %subplot 1 on a logrithmic scale on both axes
xlabel('Volume')
ylabel('Radius')
title('Volume vs radius')
subplot(1,2,2)
loglog(A,r) %subplot 2 on a logrithmic scale on both axes
xlabel('Surface Area')
ylabel('Radius')
title('Surface Area vs radius')



