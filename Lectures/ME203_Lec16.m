% Aleksei Simone
% ME203
% Lecture 16

clc; clear all; format compact;

%% Function Handles
fh1=@f1
I=integral(fh1,0,2)

%% anonymous function one variable
fh2=@(x)(x+2*exp(-x)-3)
fh2(3)

%% anonymous function two variable
fh3=@(x,y)(3*x+6*y.^2)
fh3(3,7)

%% anonymous function two outputs
fh4=@(x)deal(x-3,3*x+6*(x-3).^2)
[z,w]=fh4(5)

%% Data Analysis

R1=randfloat(0,1,1,500)+randi([1,10]);
R2=randfloat(0,1,1,500)+randi([1,10]);
figure(1)
subplot(2,1,1)
plot(R1)
subplot(2,1,2)
plot(R2)
m1=mean(R1)
m2=mean(R2)
max1=max(R1)
max2=max(R2)
d1=std(R1)
d2=std(R2)

out1=find(R1<(m1-d1)|R1>(m1+d1))
O=R1(out1)

%% Mean Matrix
A=[1 2 3;3 3 6;4 6 8;4 7 7]
mean(A)
mean(A,1)
mean(A,2)
mean(mean(A))

%% Max Matrix

A=[2 8 4;7 3 9]
B=[0 4 5;6 2 1]
[C1,I]=max(A)
C2=max(A,B)
C3=max(A,[],1)
C4=max(A,[],2)

%% Min Matrix

A=[2 8 4;7 3 9]
B=[0 4 5;6 2 1]
[C1,I]=min(A)
C2=min(A,B)
C3=min(A,[],1)
C4=min(A,[],2)

%% median standard deviation and sort

A=[1 2 3 3 3 6 4 6 8 4 7 7]
M=median(A)
d=std(A)
s1-sort(A)
s2=sort(A,'descend')

%% Rounding

A=[-1.9 -.2 3.4 5.6 7.0]
B=round(A)
C=ceil(A)
D=fix(A)
F=floor(A)

% Sums and Product
x=[2 8 4 7 3 9]
y1=sum(x)
y2=prod(x)
y3=cumsum(x)
y4=cumprod(x)
f=factorial(6)










