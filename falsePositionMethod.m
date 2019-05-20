%    function falsePositionMethod
%    falsePosition('x^2-3', 50,0.01,1, 2)
%    end
function[iter, approx_root, presecion,convergence,rconv,vecXu,vecXl, t] = falsePositionMethod(eqn, maxiter,epsilon,guess1, guess2)
 clc;
f=inline(eqn);
 
xl = guess1;
xu = guess2;
tol = epsilon;


if f(xu)*f(xl)<0
    convergence = 'converges';
    rconv = 'f(xu)*f(xl)<0';
    vecXu(1)=xu;
    vecXl(1)=xl;
     tic;
     count = 1;
    for i=2:maxiter
        if (f(xu)-f(xl)) == 0
            iter = 0;
            approx_root = 0;
            presecion = 0;
            convergence = 'diverges';
            rconv = 'f(xu)*f(xl)>0';
            vecXu = 0;
            vecXl = 0;
            t = 0;
            return;
        end
        xr=((xl*f(xu))-(xu*f(xl)))/(f(xu)-f(xl));
        approx_root(count)=xr;
        if f(xr)<0
            xl=xr;
            vecXu(i)=xu;
            vecXl(i)=xl;
        elseif f(xr)>0
            xu=xr;
            vecXu(i)=xu;
            vecXl(i)=xl;
        end

        xnew(1)=0;
        xnew(i)=xr;
        vecFXr(1)=f(0);
        vecFXr(i)=f(xr);
        presecion(count)=abs(xnew(i)-xnew(i-1));
        if abs((xnew(i)-xnew(i-1)))<tol,break,end
    count = count + 1;
    end
    iter = count;
    toc;
    t = toc;

else
    iter = 0;
    approx_root = 0;
    presecion = 0;
    convergence = 'diverges';
    rconv = 'f(xu)*f(xl)>0';
    vecXu = 0;
    vecXl = 0;
    t = 0;
end

%     fprintf('The approximate root is : %f \n',xr);
end