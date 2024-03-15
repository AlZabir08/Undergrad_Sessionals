clc;
clear all;
close all;
% Input
x = [1 2 3 4 5 6 7 6 5 4 3 2 1];
n = -2:10;
% Subplot 1: Plot of x(n)
subplot(4,1,1);
stem(n, x);
title('Plot of x(n)');
xlabel('n');
ylabel('x(n)');
axis([-4,17,0,10]);
grid on;
% First shifting of x(n)
n1 = n+5;% x(n-5)
% Subplot 2: Plot of 2x(n-5)
subplot(4,1,2);
x1=2*x;
stem(n1, x1);
title('Plot of 2x(n-5)');
xlabel('n');
ylabel('x(n-5)');
axis([-4,17,0,16]);
grid on;
% Second shifting of x(n)
n2 = n-4; %x(n-(-4))
% Subplot 3: Plot of 3x(n+4)
subplot(4,1,3);x2=3*x;
stem(n2, x2);
title('Plot of 3x(n+4)');
xlabel('n');
ylabel('x(n+4)');
axis([-7,17,0,23]);
grid on;
% Compute y(n) using the given formula
m = min(min(n1), min(n2)): max(max(n1), max(n2));
y1 = zeros(1, length(m));
temp = 1;
for i = 1:length(m)
    if(m(i) < min(n1) || m(i) > max(n1))
        y1(i) = 0;
    else
        y1(i) = x(temp);
        temp = temp+1;
    end
end
y2 = zeros(1, length(m));
temp = 1;
for i = 1:length(m)
    if(m(i) < min(n2) || m(i) > max(n2))
        y2(i) = 0;
    else
        y2(i) = x(temp);
        temp = temp+1;
    end
end
y = 2.*y1 - 3.*y2;
% Subplot 4: Plot of y(n)
subplot(4,1,4);
stem(m, y);
title('Plot of y(n)=2x(n-5)-3x(n+4)');
xlabel('n');ylabel('y(n)');
axis([-7,16,-26,25]);
grid on;