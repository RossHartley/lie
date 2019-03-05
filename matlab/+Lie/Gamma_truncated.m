function [out] = Gamma_truncated(tx,n)
%GAMMA Summary of this function goes here
%   Detailed explanation goes here
max = 100;
out = zeros(size(tx));
for i=0:max
    out = out + tx^i/factorial(i+n);
end
end

