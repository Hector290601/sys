%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Author: Héctor Robles
% github: /Hector290601
% creation date: 02 10 2022
% last edit date: 02 17 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
format rational;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.2 Considere ahora que las notas musicales
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% si, la y sol tienen kas siguientes funciones
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% fundamentales f_si = 246.942 [Hz], f_la = 220
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% [Hz] y f_sol = 195.998 [Hz]. Donde el sonido
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% se puede definir a través del siguiente
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% modelo matemático:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% x = sin( wt + p )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% donde w es la frecuencia fundamental de cada
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% nota musical. Determine si:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% x_1 = x_si + x_la + x_sol
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% es periódica o no.
%%%%%%%%%%%%%% create vector to store the independient variable
t = 0:0.01:2;
%%%%%%%%%%%%%% frequency of si
f_si = 246.042;
%%%%%%%%%%%%%% frequency of sol
f_sol = 195.998;
%%%%%%%%%%%%%% frequency of la
f_la = 220;
%%%%%%%%%%%%%% w of si
w_si = 2 * pi * f_si;
%%%%%%%%%%%%%% w of sol
w_sol = 2 * pi * f_sol;
%%%%%%%%%%%%%% w of la
w_la = 2 * pi * f_la;
%%%%%%%%%%%%%% "sound" of si
x_si = sin( w_si * t);
%%%%%%%%%%%%%% "sound" of sol
x_sol = sin( w_sol * t);
%%%%%%%%%%%%%% "sound" of la
x_la = sin( w_la * t);
%%%%%%%%%%%%%% Sum of all the "sounds"
xs = x_sol + x_si + x_la;
%%%%%% Periodicity of periodSumSiSol + periodla:
period_sum_si_sol_la = ( 2 * pi ) ./ abs( xs );
%%%%%%%%%%%%%% plot the sum
figure;
plot(t, xs);