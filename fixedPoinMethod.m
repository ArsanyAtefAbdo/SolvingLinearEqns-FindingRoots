function[iter, approx_root, convergence, rconv, presecion, t] = fixedPoinMethod(eqn, maxiter,epsilon,guess)
format long g
 clc;
%i.e. what we are trying to solve
syms 'x'
%eqn = input('Enter function with right hand side zero: ','s');
g = strcat(eqn, '+x');
g = inline(g);
g0 = inline(diff(g(x)));

%our guess is xr_old
xr_old = guess;

%checking the convergence of the function based on the initial guess
%if converges
disp(abs(g0(xr_old)))
if (abs(g0(xr_old)) < 1)
    if g0(xr_old) <= 0
       convergence = 'converge with oscillation';
       rconv = '|g(1)(x)| < 1, g(1)(x) is -ve';
    elseif g0(xr_old) > 0
        convergence = 'converge monotonically';
        rconv = '|g(1)(x)| < 1, g(1)(x) is +ve';
    end
    i0 = 1;            
    error = epsilon; %the precision we want to find our solution in
    N = maxiter; %max number of iterations
    xr = g(xr_old); %the next xr value
    %i0 = i0 + 1;
    % fprintf('i        xi        g(xi)        presicion\n');
    tic;
    while (i0 <= N)
    %  fprintf('%d     %.6f     %.6f     %.6f\n',i0,xr_old,g(xr_old),presecion);
     presecion(i0) = abs((xr - xr_old));
     approx_root(i0) = xr;
        xr_old = xr;
        xr = g(xr_old);
        if abs((xr - xr_old)) < error  % test to see if we are within tolerance.
            break
        end
        i0 = i0 + 1;    
    end
    iter = i0;
    toc;
    t = toc;
    if i0 > N
        convergence = 'over flow';
    end
%if diverges
elseif (abs(g0(xr_old)) >= 1)
    if g0(xr_old) <= 0
        convergence = 'diverge with oscillation';
        rconv = '|g(1)(x)| > 1, g(1)(x) is -ve';
    elseif g0(xr_old) > 0
        convergence = 'diverge monotonically';
        rconv = '|g(1)(x)| > 1, g(1)(x) is +ve';
    end
    iter = 0;
    approx_root = 0;
    presecion = 0;
    t = 0;
    return
end
end