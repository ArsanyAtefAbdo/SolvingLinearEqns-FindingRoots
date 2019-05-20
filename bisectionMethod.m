% %  Bisection Method in MATLAB
%   function bisectionMethod
%   bisection('x^2-3', 50,0.01,1, 2)
%   end
function[maxiter, approx_root, presecion, t,convergence,rconv, expectedIter,vecXu,vecXl] = bisectionMethod(eqn, iter,epsilon,guess1, guess2)
clc;
a = eqn;
f=inline(a);
 
xl = guess1;
xu = guess2;
tol = epsilon;

if f(xu)*f(xl)<0
    convergence = 'converges';
    rconv = 'f(xu)*f(xl)<0';
    expectedIter = ceil(log((xu-xl)/tol));
    %  fprintf('expected number of iterations : %d \n',ceil(log((xu-xl)/tol)));
    vecXu(1)=xu;
    vecXl(1)=xl;
     tic;
     count = 1;
    for i=2:iter

    approx_root(count)=(xu+xl)/2;
    if f(xu)*f(approx_root(count))<0
        xl=approx_root(count);
        vecXu(i)=xu;
        vecXl(i)=xl;

    else
        xu=approx_root(count);
        vecXu(i)=xu;
        vecXl(i)=xl;
    end

    xnew(1)=0;
    xnew(i)=approx_root(count);
    FXr(1)=f(0);
    FXr(i)=f(approx_root(count));
    presecion(count)=abs((xnew(i)-xnew(i-1)));
    if abs((xnew(i)-xnew(i-1)))<tol,break,end
    count = count + 1;
    end
    maxiter = count;
    toc;
    t = toc;
else
    convergence = 'diverges';
    rconv = 'f(xu)*f(xl)>0';
    maxiter = 0;
    approx_root = 0;
    presecion = 0;
    t = 0;
    expectedIter = 0;
    vecXu = 0;
    vecXl = 0;
end

%     fprintf('The approximate root is : %f \n',approx_root);
end
