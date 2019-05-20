function[sol,symbols,time] = gaussElimination(streqns)
clc;
syms a b c
eqns = str2sym(streqns);
[n,~] = size(eqns);
symbols = symvar(eqns);
[a,b] = equationsToMatrix(eqns);
tic
for k =1:n-1 %loops of forward elimination with partial pivoting
    %find max pivot
    [~,index] = max(a([k:n],k));
    index = index + k -1;         
    if k < index %swap kth row with pth row
        a([k index],:)=a([index k],:);
        b([k index],:)=b([index k],:);
    end
    for i=k+1:n
        factor = a(i,k)/a(k,k);
        a(i,k) = 0;
        for j=k+1:n
        a(i,j) = a(i,j) - factor*a(k,j);
        end
        b(i) = b(i) - factor*b(k);
    end
end
sol = zeros(1,n);
for i=n:-1:1 %backward substitution
    sol(i) = b(i);
    for j=n:-1:i+1
        sol(i) = sol(i) - a(i,j)*sol(j);
    end
    sol(i) = sol(i)/a(i,i);
end
time = toc;
end