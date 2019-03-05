function [ output ] = RightJacobian_SEN3( xi )
%RIGHTJACOBIAN as defined in http://perpustakaan.unitomo.ac.id/repository/Associating%20Uncertainty%20With%20Three-Dimensional.pdf

% output = Angles.Adjoint_SEN3(Angles.Exp_SEN3(-xi)) * Angles.LeftJacobian_SEN3(xi);
output = Lie.LeftJacobian_SEN3(-xi);
end

