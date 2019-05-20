function [eqn, type, guess1, guess2, itmax, presicion] = part1Read(filename)
format longG
% 4*x^2 + e^x + 3*x
% bisection
% 1.1 2
% 0.001
clc
fid = fopen(filename,'r');
eqn = fgetl(fid);
type = fgetl(fid);
guess = fgetl(fid);
newg = strsplit(guess);
itmax = fgetl(fid);

n = numel(newg);
if n == 1
    guess1 = newg;
    guess2 = '0';
else 
    guess1 = newg(1);
    guess2 = newg(2);
end
if  itmax(2) == '.'
    presicion = itmax;
    itmax = '50';
else
    presicion = '0.00001';
end
fclose(fid);
