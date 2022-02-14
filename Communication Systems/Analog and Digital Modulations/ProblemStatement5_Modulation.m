clc;clear all;
fm=1000;
fc=10000;
Am=3;
Ac=10;
b=10; %modulation index
t=0:0.000001:0.01; 

ms=3*cos(2*fm*pi*t); %modulating
cs=10*sin(2*fc*pi*t); %carrier
modulated=Ac*sin(2*pi*fc*t + b*sin(2*pi*fm*t));%modulated

subplot(3,1,1)
plot(ms);
title('modulating Signal')
xlabel('Time');
ylabel('Amplitude')
subplot(3,1,2)
plot(cs);
title('carrier signal')
xlabel('Time');
ylabel('Amplitude')
subplot(3,1,3)
plot(modulated);
title('modulated signal')
xlabel('Time');
ylabel('Amplitude')
