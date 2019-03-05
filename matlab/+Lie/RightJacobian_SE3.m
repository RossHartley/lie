function [ output ] = RightJacobian_SE3( xi )
%RIGHTJACOBIAN as defined in http://perpustakaan.unitomo.ac.id/repository/Associating%20Uncertainty%20With%20Three-Dimensional.pdf

output = Lie.Adjoint_SE3(Lie.Exp_SE3(-xi)) * Lie.LeftJacobian_SE3(xi);

end

