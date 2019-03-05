function [ output ] = RightJacobianInverse( phi )
%RIGHTJACOBIANINVERSE as defined in http://www.roboticsproceedings.org/rss11/p06.pdf

norm_phi = norm(phi);
skew_phi = Angles.skew(phi);

if norm_phi == 0
    output = eye(3);
    return;
end

output = eye(3) + 0.5*skew_phi + ...
    ( (1.0/(norm_phi^2)) - (1+cos(norm_phi))/(2.0*norm_phi*sin(norm_phi)) )*skew_phi*skew_phi;

end

