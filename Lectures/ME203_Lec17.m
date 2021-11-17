% Aleksei Simone
% ME203
% Lecture 17
%% polyval
clc;clear all;format compact;
a=[2,-4,10];
P=polyval(a,2)
P=polyval(a,[1,3,5])

%% ployval ex2
a=[1 0 -4 0 -1 7];
P=polyval(a,4)
%% adding polynomials
p1=[3 15 0 -10 -3 15 -40];
p2=[3 0 -2 -6];
p=p1+[0 0 0 p2]
%% multiplying polynomials
p1=[3 15 0 -10 -3 15 -40];
p2=[3 0 -2 -6];
c=conv(p1,p2)
%% Dividing polynomials
num=[1 -4 2 -3];
den=[1 2];
[q,r]=deconv(num,den)
%% Linear regression
x=0:5;
y=[0 20 60 68 77 110];

y_hat=20*x;

figure(1)
plot(x,y,'o',x,y_hat)
title('Linear Estimate')
xlabel('time [s]')
ylabel('degrees F')
legend('measured','estimated')

% RMS
Error=y_hat-y;
RMS=sqrt(mean(Error.^2))
RMS2=rms(Error)

%% polly fit
x=0:5;
y=[0 20 60 68 77 110];
a=polyfit(x,y,1)
a5=polyval(a,5)

%% Linear regression example
x=0:5;
y=[0 20 60 68 77 110];
a=polyfit(x,y,1)
y_hat=polyval(a,x);

figure(2)
plot(x,y,'o',x,y_hat)
title('Linear Estimate')
xlabel('time [s]')
ylabel('degrees F')
legend('measured','estimated')
grid on

% b
error=y_hat-y;
RMS1=sqrt(mean(error.^2))
RMS2=rms(error)
%% polynomial integration
p=[3 15 -40];
q=polyint(p)
q2=polyint(p,10)
%% polynomial derivative
a=[1 -4 2 -3];
b=[1 2];
k=polyder(a,b)
[num,dem]=polyder(a,b)









