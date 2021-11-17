% Aleksei Simone
% ME 203
% lec 13

clc, clear all, format compact

%% Nested for and if

%calculate k
for n=1:5
    k(n)=2*n-3;
    if (k(n)<0)
        disp('k is negative at')
        n
    end
end
k

%% Fibonacci

F(1)=0
F(2)=1

for i=3:30
    F(i)=F(i-1)+F(i-2)
end
F

%% while loops

loop_var=1;
while loop_var<=2
    fprintf('Iteration number %d\n', loop_var)
    loop_var=loop_var+1
end
    
    


%% While loops
% 
% n=-2 
% while n<10
%     n=n*2
% end
% Ctrl C is to kill the infinite loop

%% Ex 2

j=1
while j<10
    a=j*j;
    disp(a)
    j=j+1;
end

%% Break Statement

n=0
while n<=10
    n=n+1;
    y(n)=cos(n*pi/10)
    if y(n) <=10
        break
    end
    z(n)=log(y(n))
end
y

%% Break 2

balance=1000;
interest=1.06;
for years=1:1000
    balance=balance*interest
    if balance>=2000
        break
    end
end
years 
balance

%% continue

% while n<=10
%     n=n+1;
%     y(n)=cos(n*pi/10);
%     continue

%% switch 

x=6.1
to_units='in'
switch to_units
    case {'meters', 'm'}
        y=x
    case {'centimeters', 'cm'}
        y=x*100
    case {'millimeters', 'mm'}
        y=x*1000
    case {'inches', 'in'}
        y=x*39.3701
    otherwise
        disp('Unkown Units', to_units)
        y=NaN
end











