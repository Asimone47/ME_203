% Aleksei Simone
% ME203 1001
% HW4 11/8/21

clc;clear all;format compact;

%% Problem 1

% Given: A=[3 5 -4; -8 -1 33; -17 6 -9]

% Find:
% Write a program that computes array B by computing the natural log
% of A whose values is no less than 1 and add 20 to each value that is
% equal to or greater than 1

% Solution
% a) with loop
A=[3 5 -4; -8 -1 33; -17 6 -9]
for i=1:size(A,1) % row number changes from 1:3
    for j=1:size(A,2) % column number changes from 1:3
        if (A(i,j)>=1) % if value in Matrix A is greater than equal to 1
           B(i,j)=log(A(i,j)); % value from A goes to log(A) in matrix B
        else 
            B(i,j)=A(i,j)+20; % the other values in A just go to A+20 in B
        end
    end
end
B(1:3,:)

% b) without loop
A=[3 5 -4; -8 -1 33; -17 6 -9]
x=(A>=1);
B1=log(A(x));
i=find(x);
y=(A<1);
B2=A(y)+20;
j=find(y);
B1
B2
%% Problem 2

% Given
% Consider the following script.
% k = 1; b = -2; x = -1; y = -2;
% while k <= 3 k,
% b, x, y
% y = x^2 - 3;
% if y < b
% b = y;
% end
% x = x + 1;
% k = k + 1;
% end

% Find 
% Fill in the lines of the following table with the values that would be 
% displayed immediately after the while statement if you ran the script. 
% Write in the values the variables have each time the while statement is 
% executed. You might need more or fewer lines in the table. Then type in 
% the script file and run it to check your answers.

% Solution:

k=1; b=-2; x=-1; y=-2;
while k<=5 k,b,x,y 
y=x^2-3;
if y<b
b=y;
end
x=x+1;
k=k+1;
end
img=imread('tablehw4.png'); % Converts file to bits
image(img) % Displays the table I created


%% Problem 3

% Given: 
           % Coefficient of Friction
% Materials: Metal on Metal: .2
            %Wood on Wood: .35
            %Metal on Wood: .4
            %Rubber on Concrete: .7
% Find:
% Write a switch program that uses input from W and the type of material to
% show the friction force using the coef of friction from various materials

% Solution:
W=25  % W is in Newtons
type='Wood on Wood';
switch type
    case('Metal on metal')
        F=W*0.20
    case('Wood on Wood')
        F=W*0.35
    case('Metal on Wood')
        F=W*0.40
    case('Rubber on Concrete')
        F=W*0.70
    otherwise
        disp('Unknown Material')
end

%% Problem 4

% Given: Suppose it is known that the graph of the function passes 
% through𝑦=𝑎𝑥3+𝑏𝑥2+𝑐𝑥+𝑑 four given points (xi,yi), i = 1,2,3,4.
 
% Find: 
% Ask the user to input four points and computes the coefficient a,b,c, 
% and d. The function should solve four linear euqations in terms of the
% four unknown a,b,c and d. Test your function for the case where (xi,yi)=
% (-2, -20), (0, 4), (2, 68), and (4, 508), whose answer is
% a = 7, b = 5, c = -6 and d = 4.

% Solution:

fprintf('Inputs\n');

x1=input('x1='); y1=input('y1=');
x2=input('x2='); y2=input('y2=');
x3=input('x3='); y3=input('y3=');
x4=input('x4='); y4=input('y4=');

xi_yi=[x1 y1;x2 y2; x3 y3; x4 y4];
xcord=xi_yi(:,1);
ycord=xi_yi(:,2);
A=[xcord.^3 xcord.^2 xcord ones(4,1)];
B=A\ycord;
a=B(1)
b=B(2)
c=B(3)
d=B(4)

%% Problem 5

t=0:0.0001:4;
for i=1,length(t)
    x(i)=5*t(i)-10
    y(i)=25*t(i)^2-120*t(i)+144
    d(i)=sqrt(x(i)^2+y(i)^2)
end

Min_dist=min(d)
i=find(d==Min_dist)
Time=(i-1)*0.0001

%% Problem 5

% Given: (x,y) coordinates and 0<=t<=4

% Find: The minimum distance and time closest to origin (0,0)

% Solution
t=0:0.0001:4;
x=5*t-10;
y=25*t.^2-120*t+144;
d=sqrt(x.^2+y.^2);
Min_Dist=min(d)
a=find(d==Min_Dist);
T_at_orig=(a-1)*0.0001





