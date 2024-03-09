clc;
clear;
close all;
f1 = 10;
range=1:50;
for f = range
    pre_emphasis(f)=1/sqrt(1+(f1/f)^2);
end
de_emphasis=1./pre_emphasis;
subplot(2,1,1);
plot(range,pre_emphasis);
title('Pre-Emphasis Circuit Frequency Response');
xlabel('Frequency(Hz)');
ylabel('Magnitude');
subplot(2,1,2);
plot(range,de_emphasis);
title('De-Emphasis Circuit Frequency Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude');