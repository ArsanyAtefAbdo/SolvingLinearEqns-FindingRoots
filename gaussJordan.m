function[sol,symbols,time] = gaussJordan(streqns)
clc;
syms a b c
eqns = str2sym(streqns);
[n,~] = size(eqns);
symbols = symvar(eqns);
[a,b] = equationsToMatrix(eqns);
% disp(a)
% disp(b)
tic
for k =1:n %loops of forward elimination with partial pivoting
    %find max pivot
    [~,index] = max(a([k:n],k));
    index = index + k -1;         
    if k < index %swap kth row with pth row
        a([k index],:)=a([index k],:);
        b([k index],:)=b([index k],:);
    end
    for i=1:k-1
        factor = a(i,k)/a(k,k);
        a(i,k) = 0;
        for j=k+1:n
        a(i,j) = a(i,j) - factor*a(k,j);
        end
        b(i) = b(i) - factor*b(k);
    end
    for i=k+1:n
        factor = a(i,k)/a(k,k);
        a(i,k) = 0;
        for j=k+1:n
        a(i,j) = a(i,j) - factor*a(k,j);
        end
        b(i) = b(i) - factor*b(k);
    end
    % scale the row by the pivot value
    b(k) = b(k)/a(k,k);
    a(k,:) = a(k,:)/a(k,k);
end
time = toc;
sol = zeros(1,n);
sol(1,:) = b(:,1);
end