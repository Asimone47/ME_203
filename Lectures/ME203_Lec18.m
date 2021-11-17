% Aleksei Simone
% ME203
% Lecture 18

clc; clear all; format compact

%% Interpolation

x=0:5;
y=[0 20 60 68 77 110];
x1=[2.6 4.9];
y1=interp1(x,y,x1)
 

%% Normal Distribution

A=[1 2 3 3 3 6 4 6 8 4 7 7];
d=std(A)
v1=var(A)
v2=d.^2

%% Uniformly Distributed Random Numbers
% Numbers on the interval (0,1)
rand
rand(2)
rand(2,3)
% Random number between 5 and 15
rand(1,3); % 0 to 1
10*rand(1,3); % 0 to 10
A=10*rand(1,3)+5 % 5 to 15

%% Normally Distributed Random Numbers
% Numbers on the interval (-1,1)
randn
randn(2)
randn(2,3)

% EX height
m=1.763;
s=0.0762;
h=s*randn(1,6)+m %std dev of (-1,1)*0.0762 making it the new std dev, 
                    % then add it to the mean

%% Head or Tails

flip1=round(rand(1,5))
flip2=round(rand(1,5))
flip3=randi([0,1],1,5)

%% Flip a coin 50 times
flip=round(rand(1,50))

xc=[0,1]
FLIP=randi(xc,1,50)
y=hist(flip,xc)
bar(xc,y)

%% Noisy Signal Simulation

t=linspace(0,10,512)
Amp=1
feq=2*pi/5
sig=Amp*sin(feq.*t)+randn(1,length(t))*0.1

figure(1)
plot(t,sig)

%% Trapz

x=linspace(0,pi,100);
y=sin(x);
z=trapz(x,y)

%% Cumtrapz 

x=linspace(0,pi,100);
y=sin(x);
z=cumtrapz(x,y)

figure(2)
plot(x,y,x,z)









