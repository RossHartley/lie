function [ output ] = Exp_SEN3( xi )
%EXP Computes the vectorized exponential map (at the identity) as defined in:
% http://ethaneade.com/lie.pdf
N = (length(xi)-3)/3;

w = xi(1:3);
output = Lie.Exp_SO3(w);
for i=1:N
    u = xi(3+3*(i-1)+1:3+3*i);
    output = blkdiag(output, 1);
    output(1:3,3+i) = Lie.LeftJacobian_SO3(w)*u;
end
end

