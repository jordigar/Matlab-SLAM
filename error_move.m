function [e, J_e_rob1, J_e_rob2] = error_move(rob1, rob2, drobmeas)

% in:
%   rob1: pose of robot at time 1
%   rob2: pose of robot at time 2
%   drob: motion measurement between times 1 and 2
%
% out:
%   e: expectation error
%   J_e_rob1: Jacobian of e wrt. rob 1
%   J_e_rob2: Jacobian of e wrt. rob 2

% expected measurement
[drobexp, J_drobexp_rob1, J_drobexp_rob2] = betweenFrames2D(rob1, rob2); %es entre rob1 i rob2, ja que anem de rob 1 a rob2

% expectation error
e = drobexp - drobmeas;
J_e_drobexp = eye(3);

% chain rule
J_e_rob1 = J_e_drobexp * J_drobexp_rob1;
J_e_rob2 = J_e_drobexp * J_drobexp_rob2;

end