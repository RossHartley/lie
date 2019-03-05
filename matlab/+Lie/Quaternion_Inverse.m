function [ qinv ] = Quaternion_Inverse( q )
% Takes the inverse of the quaternion
qinv = [-q(1:3); q(4)];
end

