function [ output ] = RightJacobianInverse_SEN3( xi )
%RIGHTJACOBIAN as defined in http://perpustakaan.unitomo.ac.id/repository/Associating%20Uncertainty%20With%20Three-Dimensional.pdf

output = inv(Lie.RightJacobian_SEN3(xi));

end

