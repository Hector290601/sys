%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Héctor Robles
% github: /Hector290601
% creation date: 19 02 2022
% last edit date: 19 02 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4) Determina:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.a la energia y la potencia de x(t) = 2e^-|t|
%%%%%%%%%%%%%% write the equation as formule
x_0 = @(t) 2 * exp(-abs(t));
%%%%%%%%%%%%%% get the square from i_0
x_0_2 = @(t) 2^2 * exp(-abs(t)).^2;
%%%%%%%%%%%%%% integrate i_0_2 from -Inf to Inf to get the total energy
E_0_2 = integral(x_0_2 , -Inf, Inf);
% E_0_2 = 4
%%%%%%%%%%%%%% evaluate: lim (1/T * integral from -T/2 to T/2 i^2(t) dt)
%%%%%%%%%%%%%% declarate the symbolic variables
syms x;
%%%%%%%%%%%%%% evaluate the limit
p_0 = limit( 1/x * integral(x_0_2, -Inf/2, Inf/2), x, Inf );
% p_0 = 0
