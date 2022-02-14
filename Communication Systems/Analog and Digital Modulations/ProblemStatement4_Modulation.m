clear all;
clf;
fc=5000;
t=linspace(0,1/5000,50);
ec=sin(2*pi*fc*t);
b=mod(randperm(8),2)
n=['The binary data is\t' num2str(b)];
n1=num2str(b)
ook=[];
bin=[];
for i=1:length(b)
    ook=[ook, b(i)*ec];
    bin=[bin, b(i)*ones(1,50)];
end
tm=[0:length(ook)-1];
plot(tm,bin,'b--');
axis([-5 length(bin)+10 0 2]);
hold on;
plot(tm,ook,'r');
axis([-5 length(tm)+10 -2 2]);
text(150,-1.5,n1);
hold off;
xlabel('Time index');
ylabel('Amplitude');

legend('Random binary','OOK output');
title('Simulation of On-Off keying');
