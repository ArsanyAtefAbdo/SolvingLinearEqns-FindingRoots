% function birgeVietaMethod
% birge_VietaMethod('x^3-x^2-x+1', 50,0.00001,0.5)
% end

function[itmax, approx_root, convergence, presecion, t] = birgeVietaMethod(eqn, maxiter,epsilon,guess)
format long g
 clc;
syms x;
f = inline(eqn); % this makes function f with independent variable x, f(x)
a = sym2poly(f(x)); % coeffiecients of the polynomial
m = length(a);
b = zeros(1,m);
c = zeros(1,m-1);
b(1) = a(1);
c(1) = a(1);
x0 = guess;
% fprintf('i     xi            xi+1         f(xi)        df(xi)       et\n');
tic;
for i=1:maxiter
    for j=2:m
        b(j) = a(j) + x0* b(j-1);
    end
    for j=2:m-1
        c(j) = b(j) + x0* c(j-1);
    end
    if c(m-1) == 0
        convergence = 'diverges';
        itmax = 0;
        approx_root = 0;
        presecion = 0;
%         disp('Method diverges')
        break;
    end 
    approx_root(i) = x0 - b(m)/c(m-1);
    presecion(i)=abs((approx_root(i)-x0));
    if (presecion(i)<=epsilon || b(m) == 0)
        break
    end
%     fprintf('%d     %.6f     %.6f     %.6f     %.6f     %.6f     \n',i,x0,x1,b(m),c(m-1),presecion);
    x0 = approx_root(i);
    itmax = i;
end
t = toc;
if c(m-1) == 0 || i > maxiter
    convergence = 'diverges';
    t = 0;
else
    convergence = 'converges';
end
%x^2-3*x+2
end