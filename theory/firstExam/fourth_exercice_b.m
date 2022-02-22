%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Héctor Robles
% github: /Hector290601
% creation date: 19 02 2022
% last edit date: 19 02 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4) Determina:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.b la energía de x(t)
%%%%%%%%%%%%%% create the vectors to store the independent variable
t_1 = -10:0.01:-1;
t_2 = -1:0.01:0;
t_3 = 0:0.01:10;
%%%%%%%%%%%%%% declarate the function part by part
%%%%%%%%%%%%%% to the values lower than -1
x_1_1 = @(t) 0*t;
%%%%%%%%%%%%%% to values between -1 and 0
x_1_2 = @(t) 2+(0*t);
%%%%%%%%%%%%%% to values bigger than 0
x_1_3 = @(t) 2*exp(-t/2);
%%%%%%%%%%%%%% plot to see it's correct with the figure
hold on;
plot(t_1, x_1_1(t_1));
plot(t_2, x_1_2(t_2));
plot(t_3, x_1_3(t_3));
%%%%%%%%%%%%%% get the square from x_1_1
x_1_1_2 = @(t) x_1_1(t).^2;
%%%%%%%%%%%%%% get the square from x_1_2
x_1_2_2 = @(t) x_1_2(t).^2;
%%%%%%%%%%%%%% get the square from x_1_3
x_1_3_2 = @(t) x_1_3(t).^2;
%%%%%%%%%%%%%% integrate x_1_1_2 from -Inf to -1 to get his total energy
E_1_1_2 = integral(x_1_1_2, -Inf, -1);
%%%%%%%%%%%%%% integrate x_1_2_2 from -1 to 0 to get his total energy
E_1_2_2 = integral(x_1_2_2, -1, 0);
%%%%%%%%%%%%%% integrate x_1_3_2 from 0 to Inf to get his total energy
E_1_3_2 = integral(x_1_3_2, 0, Inf);
%%%%%%%%%%%%%% sum all the partial energies to get the total energy
E_1_t = E_1_1_2 + E_1_2_2 + E_1_3_2;
% E_1_t = 8
