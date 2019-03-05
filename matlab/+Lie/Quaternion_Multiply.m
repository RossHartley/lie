function [output] = Quaternion_Multiply(q, p)
% JPL (natural order) standard - NOT HAMILTON
% http://mars.cs.umn.edu/tr/reports/Trawny05b.pdf
%
% Author:   Ross Hartley
% Date:     11/09/2017

qv = q(1:3); qw = q(4);
output = [qw*eye(3)-Angles.skew(qv), qv; -qv', qw] * p;

end