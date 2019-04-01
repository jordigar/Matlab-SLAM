function [e, J_e_rob, J_e_lmk] = error_observe(rob, lmk, y)  %no cal afegir J_e_y pq no s'utilitza
% in:
% rob: robot pose (x,y,th)
% lmk: landmark position (px, py)
% y: polar measurement (d, a)
% 
%out:
% e: estimation error
% J_e_rob: Jacobian of error with respect to (wrt.) robot pose (2x3 matrix)
% J_e_lmk: Jacobian of error wrt. landmark position (2x2 matrix)

% expected measurement
[h, J_h_rob, J_h_lmk] = observe(rob, lmk);

%error
e = h -y; % = y - h
J_e_h = eye(2);      
%J_e_y = -1;

%chain rule
J_e_rob = J_e_h * J_h_rob;
J_e_lmk = J_e_h * J_h_lmk;

%J_e_y = J_e_h * J_h_y; no cal perque no serveix per res
end