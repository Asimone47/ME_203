% Simone Aleksei 
% ME203 1001
% Lecture 10/4/21
% 

clc; clear all; format compact; 

%% true-false

%ex 1
A=1:9 %Array A
tf1=A<=4 %values less than equal to 4 in a "logical array"
%ex 2
B=7:-1:-1
tf2=A>B 
%ex 3 is equal to exaclty
tf3=(A==B)
%ex 4 math with logical array
tf4=B-(A>2)

%% Logical operators

%ex 5 not ~
tf5=~(A>4)
%ex 6 and &
tf6=(A>2)&(A<6)

%% Test Example
pass=50;
score=[90 72 57 48 20 75];
pass_fail=score>=50

%% If Statements

x=2;
if x>0  % if statment
    y=log(x) % command
end         % end

%% If Statments ex2
z=-3; %given
if z<=0 %if
    z=10; %command
end %end
z=z+1

%% If else Statments

x=-2; 
if x>0
    y=log(x);
else
    y=NaN; 
    disp('input to log fn must be positive')
end
y

%% If else elseif
t=85;
if t>100 
    disp('Too Hot')
elseif t>=90
    disp('Normal Range')
elseif t>50
    disp('Below Range')
else
    disp('Too Cold')
end

%% Loops

for loop_var=1:10
    fprintf('Iteration number %d\n',loop_var) %shows all numbers 1:10
    if loop_var==5 %shows numbers until it hits 5
        break %stops loop
    end
end

%% Loop Ex

for k=5:10:35
    x=k^2
end

%% Loop Ex 2

k=5:10:35;
L=length(k);
for i=1:L
    x(i)=k(i)^2
end
x

%% Nested if


