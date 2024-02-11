disp("SCARAV3")
syms a1 a2 a3 a4

% Link Lengths a1 to a4

a1 = 500
a2 = 300
a3 = 400
a4 = 300
  qwe
% Take note of theta, alpha, r/a, and d
H_01 = Prismatic()
H_12 = Revolute('a', a2)
H_23 = Revolute('a', a4, 'd', a3)

% Defining the Joint Limits (IRL it has following limits of course)

H_01.qlim = [0, 100];
H_12.qlim = pi/180 * [-90, 90];
H_23.qlim = pi/180 * [-90, 90];

SCARAv3 = SerialLink([H_01, H_12,H_23], 'name', 'SCARAV3')

origin = [0 0 0]
workspace = [-750, 750, -750, 750, -750, 750]
SCARAv3.plot(origin, 'workspace', workspace)
SCARAv3.teach()
