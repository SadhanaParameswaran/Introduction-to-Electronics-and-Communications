%Script to generate FM and PM
format long;
t = linspace(0,0.002,10000); %Time vector
fm=1000; kp=4; %Modulation index for PM
tau = 0.0001; %Time constant for the integrator
emp = 2*square(2*pi*fm*t);
emf(1) = 0; %first sample of integrated input
kf = kp;
for  i = 2:length(emp)
    emf(i) = trapz(t(1:i), emp(1:i))/tau; %Trapezoidal integration
end %of input (modulating signal)

epm = 8*sin(42000*pi*t + kp*emp);
efm = 8*sin(42000*pi*t + kp*emf);
subplot(411), plot(t,emp,'r'), axis([0 0.002 -10 10]);
xlabel('t'), ylabel('e_{mp}');
title('Modulating Signal for PM/FM');
subplot(412), plot(t,emf);
xlabel('t'), ylabel('e_{mf}');
title('Integrated Modulating Signal');
subplot(413), plot(t,epm,'r');
xlabel('t'), ylabel('e_{pm}');
title('PM_{out} for square wave input');
subplot(414), plot(t,efm,'b');
xlabel('t'), ylabel('e_{fm}');
title('FM_{out} for square wave input');
