syms x y z beta

eqn = L1^2 + (z / cos(beta) + L1 * tan(beta))^2 + x^2 == z^2 + y^2;

S = solve([eqn], [beta])
S = S(image(S)==0)