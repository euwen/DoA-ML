% script for Jet's qualifying exam
clear all;

% ============= global setting ==================
doaDeg = [-30 5.1 50.2]
DoA       = doaDeg*pi/180; %DOA�s of signals in rad.
P          = [1 1 1];
K          = 5;
d          = 0.5;  % attenna spacing
N          = 100;
noise_var  = 1;
RESOLUTION = 0.1;
isCorrelated = 1;

% ============= signal ==================

X = ULASig( DoA,P ,K ,d , N , noise_var, isCorrelated  );
% ============= MUSIC ==================

r = length(DoA);
DoA_hat = myMusic(X, r, RESOLUTION, d)