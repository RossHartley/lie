function [ output ] = Log_SO3( A )
%EXP Computes the vectorized exponential map (at the identity) as defined in:
% http://www.roboticsproceedings.org/rss11/p06.pdf

theta = acos((trace(A)-1)/2);

% tol = 1e-20;
% if (theta < tol)
if (theta == 0)
    output = zeros(3,1);
    return;
end

output = Lie.unskew(theta*(A-A')/(2*sin(theta)));

end


