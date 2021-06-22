%{
            ELECTRIC MACHINERY FUNDAMENTALS
---------------------------------------------------------------------
            TRANSFORMER
The magnetization curve for this transformer is available electronically in
a file called mag_curve_1.dat. This file can be used by MATLAB to translate
the flux values into corresponding mmf values, and equation (2-102) can be
used to find the required magnetization current values. Finally, the rms
value of the magnetization current can be calculated from the equation.
i_rms=sqrt(1/T.\int_0^T i^2 dt)
PAGE NO:136
N-FILE:mag_current.m
M-file to calculate and plot the magnetization current of a 230/115
transformer operating at 230 volts and 50/60Hz. This program also
calculates the rms value of the mag. current.
%}
%{
load the magnetization curve. It is in two columns, with the first column
being mmf and the second column being flux.
%}
% load mag_curve_1.dat;
mmf_data=mag_curve_1(:,1);
flux_data=mag_curve_1(:,2);
% Initialize value
VM=325; %Maximum voltage (V)
NP=850;%Primary turns
%Calculate angular velocity for 60Hz
freq=60; %Freq(Hz)
w=2*pi*freq;
% calcuate flux versus time
time=0:1/3000:1/30; %0 to 1/30sec
flux=-VM/(w*NP)*cos(w.*time);
%{
                calculate the mmf corresponding to a given flux using the
                flux's interpolation function.
%}
mmf=interp1(flux_data,mmf_data,flux);
% calculate the magnetization current
im=mmf/NP;
% calculate the rms value of the current
irms=sqrt(sum(im.^2)/length(im));
disp(['The rms current at 60 Hz is', num2str(irms)]);
% Plot the magnetization current.
figure(1)
subplot(2,1,1);
plot(time,im);
title('\bfMagnetization current at 60 Hz');
xlabel('\bfTime(s)');
ylabel('\bf\itI_{m} \rm(A)');
axis([0 0.04 -2 2]);
grid on;
% calculate angular velocity for 50Hz
freq=50; %frequency (Hz)
w=2*pi*freq;
% calculate flux versus time
time=0:1/2500:1/25; %0 to 1/25 sec
flux=-VM/(w*NP)*cos(w.*time);
%{
        calculate the mmf corresponding to a given flux using the flux's
        interpolation function.
%}
mmf=interp1(flux_data,mmf_data,flux);
% calculate the magnetization current
im=mmf/NP;
% calculate the rms value of the current
irms=sqrt(sum(im.^2)/length(im));
disp(['The rms current at 50 Hz is',num2str(irms)]);
% plot the magnetization current
subplot(2,1,2);
plot(time,im);
title('\bfMagnetization current at 50 Hz');
xlabel('\bfTime (s)');
ylabel('\bf\itI_{m} \rm(A)');
axis([0 0.04-2 2]);
grid on;