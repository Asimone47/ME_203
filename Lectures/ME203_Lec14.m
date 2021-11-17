% Aleksei Simone
% ME 203
% lec 14

clc, clear all, format compact


%% 

x=0:0.5:1;
y=2:2:6;
% z=x.*exp(-x.^2-y.^2);

for i=1:length(x);
    for j=1:length(y);
        z(i,j)=x(i)*exp(-x(i)^2-y(j)^2)
    end
end
z

format short


%% 


x=-2:0.2:2;
y=-2:0.2:2;

for i=1:length(x);
    for j=1:length(y);
        z(i,j)=x(i)*exp(-x(i)^2-y(j)^2)
        u(i,j)=x(i)*exp(-x(i)^-2)
        v(i,j)=x(i)*exp(-y(j)^2)
    end
end

% Question A
figure(1)
plot3(x,y,z)
% b
figure(2)
quiver(x,y,u,v)
%c
figure(3)
surf(z)
%d
figure(4)
contour(z)

%% Input into

x=input('enter an x value:')

%% Input Example

clc; clear all, format compact;

m=input('No of rows in the matrix')
n=input('No of columns in the matrix')
A=zeros(m,n)


fprintf('Enter the array elements for a %d x %d\n',m,n)
for i=1:m
    for j=1:n
        fprintf('row number %d\n',i)
        fprintf('column number %d\n',j)
        A(i,j)=input(i,j)
    end
end
A



%% Inporting data

data=xlsread('name of file')
time=data(:,1);
position = data(:,2)
plot(time, position)






