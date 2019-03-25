function fx = Lagrange(X, Y, x)
n = length(X);
L = zeros(n,1);
for i = 1:n
   temp = 1;
    for j = 1:n
        if j ~= i
           temp = temp* ( (x - X(j))/(X(i) - X(j)) );
        end
    end
    L(i) = temp;
end

fx = 0;
for i = 1:n
    fx = fx + L(i)*Y(i); 
end
