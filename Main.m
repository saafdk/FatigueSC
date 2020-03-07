%% Clear all - Initial phase

clear
clc
close all

%% indlæser data fra statisk udtrætning af m. flexor carpi radialis (FCR).
% Signalet er klippet til

load('Sigi040320.mat')

x = Data{1,1};

%% Plotting

plot(x)

%% Frekvensanalyse. Beregning af middel-, medianfrekvens, RMS amplituden og 
% spektra (impf, imedi, iamp ispect) for epoker af 1 sek.

Fs = 3000;

[impf, imedi, iamp, iff, ispect]=fatig(x,Fs);

figure
plot(iamp);title('Middelamplitude'); %y-værdi i mV

figure
plot(imedi);title('Medianfrekvens'); %y-værdi Hz

figure
plot(impf); title('Middelfrekvens'); %y-værdi Hz

%% Definerer ny middelfrekvens

nyimpf = impf(3:end-3);
t = 1:length(nyimpf);



