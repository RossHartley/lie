function [xi] = LieAlgebra2VectorSpace(Ax)
% Convert Lie Algebra representation to vector space form
% TODO: make it adaptive to the Lie group object, currently works for SE(3)
w = [Ax(3,2); Ax(1,3); Ax(2,1)];
v = Ax(1:3,4);
xi = [w; v];
end