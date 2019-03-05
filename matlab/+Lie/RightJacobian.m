function [ output ] = RightJacobian( phi )
%RIGHTJACOBIAN as defined in http://www.roboticsproceedings.org/rss11/p06.pdf

norm_phi = norm(phi);
skew_phi = Angles.skew(phi);

if norm_phi == 0
    output = eye(3);
    return;
end

output = eye(3) - ((1-cos(norm_phi))/(norm_phi^2))*skew_phi + ...
    ((norm_phi-sin(norm_phi))/(norm_phi^3))*skew_phi*skew_phi;

end

