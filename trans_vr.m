%{
    ELECTRIC MACHINERY FUNDAMENTALS
CHAPTER 2
PAGE 106
M-FILE, TRANS_VER.M
M-file to calculate and plot the voltage regulation of a transformer
as a function of load for power factor of 0.8 lagging, 1.0, and 0.8 leading
%}
VS=230;%secondary voltage (V)
amps=0:6.52:65.2;%current values (A)
Req=0.0445;%Equivalent R (ohms)
Xeq=0.06545;% Equivalent X (ohms)
j=sqrt(-1);
%{
    calculate the current values for the three power factors. The first row
    of I contains the unity currents, and the third row contains the
    leading currents.
%}
I(1,:)=amps.*(0.8-j*0.6);%Lagging
I(2,:)=amps.*(1.0);%Unity
I(3,:)=amps.*(0.8+j*0.6);%Leading
%Calculate VP/a.
VPa=VS+Req.*I+j.*Xeq.*I;
%Calculate voltage regulation
VR=(abs(VPa)-VS)./VS.*100;
%Polt the voltage regulation
plot(amps,VR(1,:),'b-');
hold on;
plot(amps,VR(2,:),'k-');
plot(amps,VR(3,:),'r-');
title('voltage regulation versus load');
xlabel('Load (A)');
ylabel('voltage Regulation (%)');
legend('0.8 PF lagging','1.0 PF','0.8 PF leading');
hold off;