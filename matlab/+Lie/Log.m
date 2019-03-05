function [ output ] = Log( A )
%EXP Computes the vectorized exponential map (at the identity) as defined in:
% http://www.roboticsproceedings.org/rss11/p06.pdf

phi = acos((trace(A)-1)/2);

if (phi == 0)
    output = zeros(3,1);
    return;
end

output = Lie.unskew(phi*(A-A')/(2*sin(phi)));

end

