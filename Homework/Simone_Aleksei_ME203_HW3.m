% Aleksei Simone
% ME203 1001
% HW3 11/1/21

clear all, clc, format compact, clc;

%% Problem one

% Plot columns 2 and 3 vs column 1 in matrix A

A=[0 -7 6; 5 -4 3; 10 -1 9; 15 1 0; 20 2 -1] % Matrix A
B=A(:,2:3) % Creating a matrix of columns 2 and 3
C=A(:,1) % Creating a matrix of column 1
figure(1)
plot(C,B) % Plotting the two data sets I created
title('Force vs Time')
xlabel('Force (Newtons)')
ylabel('Time (Seconds)')
legend('Column 2', 'Column 3')

%% Problem 2

% Create multiple matrices from the original matrix A

A=[3 7 -4 12; -5 9 10 2; 6 13 8 11; 15 5 4 1]

% a) Create a 4x3 array B using the elements of columns 2-4

B=A(:,2:4)

% b) Create a 3x4 array C using the elements of rows 2-4

C=A(2:4,:)

% c) Create a 2x3 array D using the elements of columns 2-4 
% and rows 1-2

D=A(1:2,2:4)

%% Problem 3 

% Carry out matrix functions using matrix A and B

A=[56 32; 24 -16]
B=[14 -4; 6 -2]

% a) Find the result of A x B by array

C=A*B

% b) Find the result of A/B by array

A1=A/B

% c) Find B^3 by element

B1=B.^3

%% Problem 4

% Use Matlab to calculate the following equations

% a) 6pi*tan^-1(12.5)+4

a=6*pi;
b=12.5;
c=a*atan(b)+4

% ans: 32.1041

% b) 5*tan[3*sin^-1(13/5)]

a=13/5;
b=5*tan(3*asin(a))

% ans: 0.0000 - 5.0006i

%% Problem 5

% Use Matlab to solve the systems of equations

% a) -2x+y=-5 and -2x+y=3

A=[-2 1;-2 1];
B=[-5;3];
C=A\B % Use left division for matrices

% ans: inf

% b) -2x+y=3 and -8x+4y=12

A1=[-2 1;-8 4];
B1=[3;12];
C1=A1\B1

% ans: Not a Number

% c) -2x+y=-5 and -2x+y=-5.00001

A2=[-2 1;-2 1];
B2=[-5;-5.0001];
C2=A2\B2

% ans: -inf

% d) x1+5x2-x3+6x4=19
   % 2x1-x2+x3-2x4=7
   % -x1+4x2-x3+3x4=30
   % 3x1-7x2-2x3+x4=-75

A3=[1 5 -1 6;2 -1 2 -2;-1 4 -1 3;3 -7 -2 1];
B3=[19;7;30;-75];
C3=A3\B3

% ans: x1=18.8571 x2=23.2857 x3=-27.7143 x4=-24.0000

%% Problem 6

% Plot the given function

t=1:.01:3;
T=(6*log(t))-(7*exp(0.2*t));
figure(2)
plot(t,T)
xlabel('Time (minutes)')
ylabel('Temperature (Celsius)')
title('Temp vs. time')

%% Problem 7

% Check if 1 and 2 expressions are equivalent or not. Use matlab to check 
% your answer for specific values of a,b,c, and d.

a=2;
b=2;
c=3;
d1=(a==b)&((b==c)|(a==c))
d2=(a==b)|((a==c)&(a==c))

% Expression d1 and d2 are not equivalent when a=2 b=2 and c=3

%% Problem 8 

% Write programs that accepts a numerical value x from 0 to 100 as input 
% and computes and displays the corresponding letter grade given by the 
% following table. Solve by both (a) and (b) given below.


% a) Using Nested If's

grades='What is the score:'
x=input(grades);
if x>=90 
    grade=('A');
else 
    if (90>x)&(x>=80)
        grade=('B');
    else
        if (80>x)&(x>=70)
            grade=('C');
        else
            if (70>x)&(x>=60)
                grade=('D');
            else
                grade=('F');
            end
        end
    end
end
fprintf("Grade is %s\n", grade)


% b) Using only elseif's

grades='What is the score:'
x=input(grades);
if x>=90 
    grade=('A');
elseif (90>x)&(x>=80)
        grade=('B');
elseif (80>x)&(x>=70)
        grade=('C');
elseif (70>x)&(x>=60)
        grade=('D');
            else
                grade=('F');
end
fprintf("Grade is %s\n", grade)

















