function[sol,symbols,time] = LUdecomposition(eqns)
clc;
syms a b c
eqns = str2sym(eqns);
[n,~] = size(eqns);
symbols = symvar(eqns);
if n == 0
    return;
end
[u,b] = equationsToMatrix(eqns);
l = eye(n);
tic
for k =1:n-1 %loops of forward elimination with partial pivoting to calculate U & L
    % U is calculated by gaussian forward elimination with pivoting
    % L is calculated by the sum of two matrices of size n identity one and other
    % matrix have only multipliers in 
    %find max pivot
    [~,index] = max(a([k:n],k));
    index = index + k -1;         
    if k < index %swap kth row with pth row
       u([k index],:)=u([index k],:);
       b([k index],:)=b([index k],:);
    end
    for i=k+1:n
        factor = u(i,k)/u(k,k);
        l(i,k) = factor;
        u(i,k) = 0;
        for j=k+1:n
        u(i,j) = u(i,j) - factor*u(k,j);
        end
        %b(i) = b(i) - factor*b(k);
    end
end
disp(u)
disp(l)
% L*d = b, calculate d with forward substitution
d = zeros([n,1]);
d(1) = b(1);
for i=2:n
    d(i) = b(i);
    for j=1:i-1
        d(i) = d(i) - l(i,j)*d(j);
    end
end
disp(d)
% U*sol = d, calculate sol with backward substitution
sol = zeros([1,n]);
for i=n:-1:1 %backward substitution
    sol(i) = d(i);
    for j=n:-1:i+1
        sol(i) = sol(i) - u(i,j)*sol(j);
    end
    sol(i) = sol(i)/u(i,i);
end
time = toc;
% disp(sol)
end