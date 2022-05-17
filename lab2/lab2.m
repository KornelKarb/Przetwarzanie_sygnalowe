#Lab nr2
#G³ówny skrypt wywo³uj¹cy

##Czas
clear all;
close all;
N= 30;
fs= 50;
time=gen_time(N,fs); #odwo³anie do funkcji
disp(time); #Wypisanie w command window

##Sinus i delta

fsin = 45
A = 5;
fi = 0;
signal1 = gen_sin(time,fsin,A,fi); #odwo³anie do funkcji
disp(signal1); #Wypisanie w command window
##figure(1); #Tworzenie okna
##plot(time,signal1); # Tworzenie wykresu

signal2 = gen_delta(time);

disp(signal2);
##figure(2);
##plot(time,signal2);

##Trójk¹t

tr = 0.2;
tf = 0.25;
signal3 = gen_triangle (time, A, tr, tf)
disp(signal3);
##figure(3)
##plot(time,signal3);

##Gauss

u = 0.2;
s = 0.05;
signal4 = gen_gauss (time, u, s);
disp(signal4);
##figure(4) #Tworzenie okna
##plot(time,signal4);

##OpóŸnienie

Nd=3;
y1 = sig_delay(signal1, Nd)
disp(y1);
##figure(5)
##plot(time,signal1, time, y1);

###Arytmetyka
s1 = signal1;
s2 = signal3;
arithmetic (time, s1, s2);

#splot
x = [3, 4, 5, 6]
y = [3, 4, 2, 7]
conv = sig_conv(x,y);
disp(conv);
figure(8);
plot(conv);