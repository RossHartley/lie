function [ output ] = Log_SE3( H )
%EXP Computes the vectorized exponential map (at the identity) as defined in:
% http://www.roboticsproceedings.org/rss11/p06.pdf


R = H(1:3,1:3);
p = H(1:3,end);
w = Lie.Log_SO3(R);
theta = norm(w);

tol = 1e-6;
if (theta < tol)
    output = [zeros(3,1); p];
    return;
end

A = sin(theta)/theta;
B = (1-cos(theta))/theta^2;
wx = Lie.skew(w(1:3));
Vinv = eye(3) - 0.5*wx + (1/theta^2)*(1-A/(2*B))*wx^2;

output = [w; Vinv*p];

end

