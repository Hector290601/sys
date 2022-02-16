format rational;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.1, considere las siguientes señales:
%%%%%%%%%%%%%% create vector to store the independient variable
t = 0:0.00001:20;
%%%%%%%%%%%%%% signal 1:
x1 = 2 * cos( 10 * t + 1 ) - sin( 4 * t - 1 );
%%%%%%%%%%%%%% signal 2:
x2 = ( cos( 2 * t - pi / 3 ) ).^2;
%%%%%%%%%%%%%% To signal 1:
%%%%%% Periodicity of 2 * cos(10 * t+1):
periodCos = ( 2 * pi ) / abs( 10 );
%%%%%% Periodicity of sin(4 * t-1):
periodSin = ( 2 * pi ) / abs( 4 );
periodOne = periodCos / periodSin;
% >> periodOne = 2/5, 2 in Z, 5 in Z :. his period is Pi
%%%%%%%%%%%%%% To signal 2:
%%%%%% Periodicity of ( cos( 2 * t - pi / 3 ) ).^2:
periodTwo = ( 2 * pi ) / abs( 2 / 3 );
% >> periodTwo = period of the coseno
%%%%%% signal 1 is periodic :. the local max from a period is the absolute
%%%%%% max
max1 = max(x1);
%%%%%% signal 2 is periodic :. the local max from a period is the absolute
%%%%%% max
max2 = max(x2);
%%%%%%%%%%%%%% plot the signals
plot(t, x1);
hold on;
plot(t, x2);

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
%%%%%% Periodicity of w_si:
periodSi = ( 2 * pi ) / abs( w_si );
% >> periodSi = 119/29279, 119 in Z, 29279 in Z :. "sound" si is periodic
%%%%%% Periodicity of w_sol:
periodSol = ( 2 * pi ) / abs( w_sol );
% >> periodSol = 500/97999, 500 in Z, 97999 in Z :. "sound" sol is periodic
%%%%%% Periodicity of w_La:
periodLa = ( 2 * pi ) / abs( w_la );
% >> periodLa = 1/220, 1 in Z, 220 in Z :. "sound" la is periodic
%%%%%% Periodicity of periodSi + periodSol:
periodSumSiSol = periodSi + periodSol;
% >> periodSumSiSol = 235/25637, 235 in Z, 25637 in Z :. "sound" si + sol is
% periodic
%%%%%% Periodicity of periodSumSiSol + periodla:
periodSumSiSolLa = periodSumSiSol + periodLa;
% >> periodSumSiSolLa = 85/6199, 85 in Z, 6199 in Z :. "sound" si + sol +
% la is periodic
%%%%%%%%%%%%%% plot the sum
figure;
plot(t, xs);

%xsp = (1/2) * (xs+flip(xs));
%xsimp = (1/2) * (xs-flip(xs));
%xrc = xsp + xsimp;

%subplot(3, 1, 1);
%plot(t, xsp);
%subplot(3, 1, 2);
%plot(t, xsimp);
%subplot(3, 1, 3);
%plot(t, xrc);
%hold on;
%plot(t, xs)

%[y1, Fs1] = audioread('SoftGuitar-44p1_mono-10mins.ogg');
%y1a = abs(y1);
%y1rc = sqrt(y1a);
%[y2, Fs2] = audioread('SoftGuitar.ogg');
%y2a = abs(y2);
%y2rc = sqrt(y2a);
%r1 = size(y1);
%r2 = size(y2);
%yn1 = y1(1:1000);
%yn2 = y2(1:1000);
%ys = yn1 + yn2;
%figure
%subplot(3, 1, 1);
%plot(y1);
%subplot(3, 1, 2);
%plot(y1a);
%subplot(3, 1, 3);
%plot(y1rc);

%figure
%plot(ys);

