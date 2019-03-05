function [ ad ] = adj_se3( dx )
%ADJOINT_SE3 Computes the adjoint of se(3)
ad = [Angles.skew(dx(1:3)), zeros(3); Angles.skew(dx(4:6)), Angles.skew(dx(1:3))]
end

