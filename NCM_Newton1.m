function [ x_star, k ] = NCM_Newton1( fname, dname, x0, ep, Nmax )
%UNTITLED3 ţ�ٵ����� f(x) = 0 �����
%   ������ʽΪ x = x - f(x)/f'(x)
%   fname Ϊ f(x)        dnameΪf'(x)
%   x0Ϊ������ֵ     epΪ�����
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

