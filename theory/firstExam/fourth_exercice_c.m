%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Héctor Robles
% github: /Hector290601
% creation date: 19 02 2022
% last edit date: 19 02 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4) Determina:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 4.c La potencia de x(t) en un periodo, esto
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% es, para T=1 y -1<t<1
%%%%%%%%%%%%%% create a vector to store the independent variable
t = -1:0.001:1;
%%%%%%%%%%%%%% declare the function
%%%%%%%%%%%%%% plot to see it's correct with the figure
figure;
plot(t, x_2(t))
x_2 = @(t) t;
%%%%%%%%%%%%%% get the square from x_2
x_2_2 = @(t) t.^2;
%%%%%%%%%%%%%% evaluate: lim (1/T * integral from -T/2 to T/2 i^2(t) dt)
%%%%%%%%%%%%%% declarate the symbolic variables
syms t;
%%%%%%%%%%%%%% evaluate the limit
p_2 = limit( 1/t * integral(x_2_2, -1, 1 ), t, 2 );
% p_2 = 1/3
