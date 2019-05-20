% 3*a+2*b+c-6
% 2*a+3*b-7
% 2*c-4
function[sol,symbols,precision,iter,time] = gaussSeidel(eqns,maxiter,epsilon,guesses)
clc;
syms a b c
eqns = str2sym(eqns);
[n,~] = size(eqns);
symbols = symvar(eqns);
[a,b] = equationsToMatrix(eqns);
sol = zeros(n,1);
precision = zeros(n,1);
for i=1:n
    sol(i,1) = str2double(guesses(i,1));
    precision(i,1) = 0;
end
for i = 1:n
    if a(i,i) == 0
        iter = 0;
        time = 0;
        return;
    end
end
tic
for i=2 : str2double(maxiter)
    for j=1:n % loop of function variables
        sol(j,i) = b(j);
        for k=1:n % loop of calculating each variable approximation
            if k ~= j 
                if j<k % use old value
                    sol(j,i) = sol(j,i) - a(j,k)*sol(k,i-1);
                else % use new value
                    sol(j,i) = sol(j,i) - a(j,k)*sol(k,i);
                end
            end
        end
        sol(j,i) = sol(j,i)/a(j,j);
    end
    flag = 0;
    for j=1:n
        precision(j,i) = abs(sol(j,i)-sol(j,i-1));
        if (abs(sol(j,i)-sol(j,i-1))) > str2double(epsilon)
            flag = flag +1;
        end
    end
    if flag == 0
        break;
    end
end
iter = i;
time = toc;
end
