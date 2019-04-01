% cd
% /home/jordi/Documents/Software/MatLab
% mkdir robotica_terrestre
% cd robotica_terrestre/
% edit p2r.m
% cd
% /home/jordi/Documents/Software/MatLab/robotica_terrestre

function [c,J_c_p] = p2c(p)

d = p(1);
a = p(2);

x = d*cos(a);
y = d*sin(a);

c = [x;y];

J_c_p = [cos(a) -d*sin(a) ; sin(a) d*cos(a)];

end

function f()
%%
syms a d real
p = [d;a];
[c,J_c_p] = p2c(p);

simplify(jacobian(c,p))
%simplify(jacobian(c,p) - J_c_p) %comprovem que la resta dona 0
end

