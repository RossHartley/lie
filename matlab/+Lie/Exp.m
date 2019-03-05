function [ output ] = Exp( v )
%EXP Computes the vectorized exponential map (at the identity) as defined in:
% http://www.roboticsproceedings.org/rss11/p06.pdf

A = Lie.skew(v);
norm_v = norm(v);

if norm_v == 0
    output = eye(3);
else
    output = eye(3) + (sin(norm_v)/norm_v)*A + ((1-cos(norm_v))/(norm_v^2))*A^2;
end

end

