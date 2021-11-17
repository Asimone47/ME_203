% Aleksei Simone
% ME203
% Lecture 19

clc; clear all; format compact

%% Integration 

x=linspace(0,pi,100)

%function
y=sin(x)

%calc integral
z=cumtrapz(x,y)

%plot results
figure(1)
plot(x,y,x,z)
legend('sin(x)','\intsin(x)')
 
%% Example with trapz

for i=2:100
    z(i)=trapz(x(1:i),y(1:i))
end

figure(2)
plot(x,y,x,z)
xlabel('x')
legend('sin(x)','\intsin(x)')

%% Single Integration
xmin=0;
xmax=pi;
F=@(x) sin(x)+cos(x)
q=integral(F,xmin,xmax)

%% Double Integration

xmin=2;
xmax=4;
ymin=1;
ymax=2;
F=@(x,y)(6*x.*y.^2)
q=integral2(F,xmin,xmax,ymin,ymax)

%% Double integral EX 2

xmin=0; xmax=1;
ymin=0;
F=@(x,y)(1./((sqrt(x+y).*(1+x+y))))
ymax=@(x)(1-x);
q=integral2(F,xmin,xmax,ymin,ymax)

%% Triple Integral

xmin=pi; xmax=2*pi;
ymin=0; ymax=pi;
zmin=0; zmax=@(x,y) x+y;
F=@(x,y,z) z.*(sin(x)+x.*cos(y));

q=integral3(F,xmin,xmax,ymin,ymax,zmin,zmax)
