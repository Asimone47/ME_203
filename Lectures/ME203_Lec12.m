% Simone Aleksei 
% ME203 1001
% Lecture 10/4/21
% 

clc; clear all; format compact; 

%% Ex

x=0:5;
for i=1:length(x)
    y(i)=x(i)^2
end
% use 1:length(x) or it wont show all 6 iterations 
%% Ex

W=0:100;
R=W.^(-1/2)*10;

tf=~(W<50)

%% Ex
% force applies
time=0:pi/100:2*pi;
P=sin(time); % units were in radians so use Sin instead of Sind
L=.5; %(m)
E=200*10^9 %Pa % =200 GPa 
b=5/100; % (m)
h=6/100; % (m)
I=b*h^3/12; %(m^4)
delta=P*L^3/(2*E*I)

figure(1)
plot(time,delta)

%% Ex 