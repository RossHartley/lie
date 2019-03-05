%% Tests various function in the Lie package to verify correctness
clear; close all; clc;
% All errors should be small < 1e-6

%% SO3
disp('---------- SO(3) Tests -------')
N = 3;
X = Lie.Exp(rand(N,1));
x = rand(N,1);
dx = 0.001*rand(N,1);
error = norm( Lie.Log(Lie.Exp(x+dx)/(Lie.Exp(x)*Lie.Exp(Lie.RightJacobian(x)*dx))) );
disp(['error 1:  ', num2str(error)])
error = norm( Lie.Log(Lie.Exp(x+dx)/(Lie.Exp(Lie.LeftJacobian(x)*dx)*Lie.Exp(x))) );
disp(['error 2:  ', num2str(error)])
error = norm( Lie.Log(Lie.Exp(x)*Lie.Exp(dx)) - (x+Lie.RightJacobianInverse(x)*dx) );
disp(['error 3:  ', num2str(error)])
error = norm( Lie.Log(Lie.Exp(dx)*Lie.Exp(x)) - (x+Lie.LeftJacobianInverse(x)*dx) );
disp(['error 4:  ', num2str(error)])
error = norm( Lie.Log((X*Lie.Exp(x)/X)/(Lie.Exp(Lie.Adjoint(X)*x))) );
disp(['error 5:  ', num2str(error)])

error = norm( Lie.Log(Lie.Gamma(x,0)\Lie.Exp(x)) );
disp(['error 6:  ', num2str(error)])
error = norm( Lie.Log(Lie.Gamma(x,1)\Lie.LeftJacobian(x)) );
disp(['error 7:  ', num2str(error)])

%% SE3
disp('---------- SE(3) Tests -------')
N = 6;
X = Lie.Exp(rand(N,1));
x = rand(N,1);
dx = 0.001*rand(N,1);
error = norm( Lie.Log(Lie.Exp(x+dx)/(Lie.Exp(x)*Lie.Exp(Lie.RightJacobian(x)*dx))) );
disp(['error 1:  ', num2str(error)])
error = norm( Lie.Log(Lie.Exp(x+dx)/(Lie.Exp(Lie.LeftJacobian(x)*dx)*Lie.Exp(x))) );
disp(['error 2:  ', num2str(error)])
error = norm( Lie.Log(Lie.Exp(x)*Lie.Exp(dx)) - (x+Lie.RightJacobianInverse(x)*dx) );
disp(['error 3:  ', num2str(error)])
error = norm( Lie.Log(Lie.Exp(dx)*Lie.Exp(x)) - (x+Lie.LeftJacobianInverse(x)*dx) );
disp(['error 4:  ', num2str(error)])
error = norm( Lie.Log((X*Lie.Exp(x)/X)/(Lie.Exp(Lie.Adjoint(X)*x))) );
disp(['error 5:  ', num2str(error)])

%% SEK3
disp('---------- SEK(3) Tests -------')
N = 15;
X = Lie.Exp(rand(N,1));
x = rand(N,1);
dx = 0.001*rand(N,1);
error = norm( Lie.Log(Lie.Exp(x+dx)/(Lie.Exp(x)*Lie.Exp(Lie.RightJacobian(x)*dx))) );
disp(['error 1:  ', num2str(error)])
error = norm( Lie.Log(Lie.Exp(x+dx)/(Lie.Exp(Lie.LeftJacobian(x)*dx)*Lie.Exp(x))) );
disp(['error 2:  ', num2str(error)])
error = norm( Lie.Log(Lie.Exp(x)*Lie.Exp(dx)) - (x+Lie.RightJacobianInverse(x)*dx) );
disp(['error 3:  ', num2str(error)])
error = norm( Lie.Log(Lie.Exp(dx)*Lie.Exp(x)) - (x+Lie.LeftJacobianInverse(x)*dx) );
disp(['error 4:  ', num2str(error)])
error = norm( Lie.Log((X*Lie.Exp(x)/X)/(Lie.Exp(Lie.Adjoint(X)*x))) );
disp(['error 5:  ', num2str(error)])