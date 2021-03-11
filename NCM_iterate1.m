function [x_star, N] = NCM_iterate1(fun,x0,ep,Nmax)
if nargin<4 
    Nmax=500;
end
if nargin<3 
    ep=1e-5;
end
x = x0;
x0 = x + 2 * ep;
k = 0;
while ( ( abs(x0 - x) > ep ) && (k < Nmax) )
    x0 = x;
    x = feval(fun, x0);
    k = k + 1;
end
x_star = x;
N = k;
