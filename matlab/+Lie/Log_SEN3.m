function [ output ] = Log_SEN3( X )
N = size(X,1)-3;

R = X(1:3,1:3);
p = X(1:3,4:end);
w = Lie.Log_SO3(R);
theta = norm(w);

tol = 1e-6;
if (theta < tol)
    output = [zeros(3,1); reshape(p,[],1)];
    return;
end
wx = Lie.skew(w(1:3));
A = sin(theta)/theta;
B = (1-cos(theta))/theta^2;
Vinv = eye(3) - 0.5*wx + (1/theta^2)*(1-A/(2*B))*wx^2;

output = [w; reshape(Vinv*p,[],1)];

end

