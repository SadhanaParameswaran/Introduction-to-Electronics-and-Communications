%%% MATLAB script to simulate ASK :Qn 1
%%% Vc = 2
clear all; close all; clf;
Vc = 2;
fc = 2000;
t = linspace (0, 1/2000, 50);
ec = Vc * sin(2*pi*fc*t);
b = [0, 0, 1, 0, 1, 1, 0, 1, 0, 0];
n = ['The Binary data is: ',num2str(b)];
ask = []; bin = [];
for i = 1 : length(b)
    ask = [ask, b(i)*ec];
    bin = [bin, b(i)*ones(1,50)];
end

tm = [0 : length(ask)-1];
plot(tm, bin, 'b--'); axis([0 length(bin) 0 2]); hold on;
plot(tm, ask, 'r'); axis([0 length(tm) -4 4]); hold off;
xlabel('Time index'); ylabel('Amplitude');
legend('Binary data', 'ASK output');
title('Simulation of Amplitude Shift keying');
gtext(n); %Display the random binary string..
%%% end of simul
