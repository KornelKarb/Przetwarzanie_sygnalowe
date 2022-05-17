clear
clc
pkg load signal;

h1=[ 1 2 3 2 1]
h2=[1 1 1 1 -1 -1 2 -1 -1 1 1 1 1]

h12 = fir_parallel(h2, h1);