clc;clear all;close all;
%% AÇIK ÇEVRİM CEVABI
s = tf('s');
P_pitch = (1.151*s+0.1774)/(s^3+0.739*s^2+0.921*s);
t = [0:0.01:10];
step(0.2*P_pitch,t);
axis([0 10 0 0.8]);
ylabel('pitch açısı (rad)');
title('Açık çevrim birim basamak cevabı');
pole(P_pitch)
%% KAPALI ÇEVRİM CEVABI
sys_cl = feedback(P_pitch,1)
step(0.2*sys_cl);
ylabel('pitch angle (rad)');
title('Closed-loop Step Response');
poles = pole(sys_cl)
zeros = zero(sys_cl)
%% PID KONTROLÖR
s = tf('s');
P_pitch = (1.151*s+0.1774)/(s^3+0.739*s^2+0.921*s);
controlSystemDesigner(P_pitch)





