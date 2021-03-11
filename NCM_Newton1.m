function [ x_star, k ] = NCM_Newton1( fname, dname, x0, ep, Nmax )
%UNTITLED3 牛顿迭代法 f(x) = 0 的零点
%   迭代公式为 x = x - f(x)/f'(x)
%   fname 为 f(x)        dname为f'(x)
%   x0为迭代初值     ep为误差限
if nargin < 5
    Nmax = 500;
end
if nargin < 4
    ep = 1e-5;
end
x = x0;
x0 = x + 3 * ep;
k = 0;
while ( (abs(x0 - x) > ep) && (k < Nmax) )
    k = k + 1;
    x0 = x;
    x = x0 - feval(fname, x0) / feval(dname, x0);
end
x_star = x;
end

