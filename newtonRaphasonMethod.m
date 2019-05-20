function [maxiter, approx_root, convergence, presecion, t] = newtonRaphasonMethod(equation , maxInter, eps, xguess)
clc;
syms x;
func = inline(equation);
dfunc = inline(diff(func(x)));
dfunc2 = inline(diff(dfunc(x)));
iter = 1;
approx_root(iter) = xguess;
f(1) = func(approx_root(iter));

% RATE OF CONVERGENCE
dfdx(1) = dfunc(approx_root(iter));
df2dx(1) = dfunc2(approx_root(iter));
test = dfdx(1)/(2*df2dx(1));
tic;
for i = 2:maxInter
    if(dfdx(i-1)==0)
        convergence = 'diverges';
% 		disp('newton Method has diverged');
    end
    approx_root(i) = approx_root(i-1) - (f(i-1)/dfdx(i-1));
    presecion(i) = abs(approx_root(i)-approx_root(i-1));
    f(i) = func(approx_root(i));
    dfdx(i) = dfunc(approx_root(i));	
    if abs(approx_root(i)-approx_root(i-1)) < eps
        convergence = 'converges';
        break;
    end
    iter = i;

end
maxiter = iter;
if iter >= maxInter
    convergence = 'diverges';
    approx_root = 0;
    presecion = 0;
end
toc;
t = toc;
end