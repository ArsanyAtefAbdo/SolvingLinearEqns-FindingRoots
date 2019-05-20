%   function steffensen_method
%     g = 'exp(-x)-x';
%     steffensen(g,0,0.00001,100)
%    end

%this is an explanation of the steffensen method
%-----------------------------------------------
%%%The main advantage of Steffensen's method is that it has quadratic
%convergence[1] like Newton's method – that is, both methods find roots 
%to an equation {\displaystyle f} f just as ‘quickly’.
%In this case quickly means that for both methods, 
%the number of correct digits in the answer doubles with each step.
%But the formula for Newton's method requires evaluation of the function's 
%derivative {\displaystyle f'} f' as well as the function {\displaystyle f} f,
%while Steffensen's method only requires {\displaystyle f} f itself. 
%This is important when the derivative is not easily or efficiently available.

function[iter, approx_root, presecion, convergence, t] = steffensen_method(f,p0,tol,itmax)

format long
 clc;
 global p;
 p = 0;
% steffensen(f,p0,tol,itmax)

% adding elements to array vertically
% V1 = [A; B]
% V2 = vertcat(A,B)
% V3 = cat(1,A,B)

% This function takes as inputs: a fixed point iteration function, f, 
% and initial guess to the fixed point, p0, a tolerance, tol, and
% a maximal number of iterations, itmax.
% The fixed point iteration function is assumed to be input as an
% inline function. 
% This function will calculate and return the fixed point, p, 
% that makes the expression f(p) = p true to within the desired 
% tolerance, tol. 
 g = strcat(f, '+x');
 f = inline(g); 
 tic;
%   fprintf('i       xi            Tolerance\n')
for i=1:itmax   % get ready to do a large, but finite, number of iterations.
               % This is so that if the method fails to converge, we won't
               % be stuck in an infinite loop.
    p1=f(p0);  % calculate the next two guesses for the fixed point.
    p2=f(p1);
    if (p2-2*p1+p0) ~= 0
        p=p0-(p1-p0)^2/(p2-2*p1+p0); % use Aitken's delta squared method to % find a better approximation to p0.
    else
        break;
    end
    if abs(p-p0)<tol  % test to see if we are within tolerance.
        break         % if we are, stop the iterations, we have our answer.
    end
    approx_root(i) = p;
    presecion(i) = abs(p-p0);
    p0=p;              % update p0 for the next iteration.
    iter = i;
end
if abs(p-p0)>tol       % If we fail to meet the tolerance, we output a
                       % message of failure.
    convergence = 'diverges';
    iter = 0;
    approx_root = 0;
    presecion = 0;
    t = 0;
    return;
else
    convergence = 'converges';
end

toc;
t = toc;

end
