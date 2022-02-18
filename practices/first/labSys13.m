%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Author: Héctor Robles
% github: /Hector290601
% creation date: 02 10 2022
% last edit date: 02 17 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
format rational;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.1, considere las siguientes señales:
%%%%%%%%%%%%%% create vector to store the independient variable
t = 0:0.00001:20;
%%%%%%%%%%%%%% signal 1:
x1 = 2 * cos( 10 * t + 1 ) - sin( 4 * t - 1 );
%%%%%%%%%%%%%% signal 2:
x2 = ( cos( 2 * t - pi / 3 ) ).^2;
%%%%%%%%%%%%%% To signal 1:
%%%%%%%%%%%%%% Periodicity of 2 * cos(10 * t+1):
periodCos = ( 2 * pi ) / abs( 10 );
%%%%%%%%%%%%%% Periodicity of sin(4 * t-1):
periodSin = ( 2 * pi ) / abs( 4 );
periodOne = periodCos / periodSin;
% >> periodOne = 2/5, 2 in Z, 5 in Z :. his period is Pi
%%%%%%%%%%%%%% To signal 2:
%%%%%%%%%%%%%% Periodicity of ( cos( 2 * t - pi / 3 ) ).^2:
periodTwo = ( 2 * pi ) / abs( 2 / 3 );
% >> periodTwo = period of the coseno
%%%%%%%%%%%%%% signal 1 is periodic :. the local max from a period is the
%%%%%%%%%%%%%% absolute max
max1 = max(x1);
%%%%%%%%%%%%%% signal 2 is periodic :. the local max from a period is the
%%%%%%%%%%%%%% absolute max
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
%%%%%% Periodicity of periodSumSiSol + periodla:
period_sum_si_sol_la = ( 2 * pi ) ./ abs( xs );
%%%%%%%%%%%%%% plot the sum
figure;
plot(t, xs);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.3 De la suma encontrada en el ejercicio
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% anterior, obtenga la parte par e impar de la
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% función
%%%%%%%%%%%%%% even part of x[n] = 1/2{x[n]+x[-n]}
even = 1 / 2 * ( xs +  flip(xs));
%%%%%%%%%%%%%% odd part of x[n] = 1/2{x[n]-x[-n]}
odd = 1 / 2 * ( xs - flip(xs));
%%%%%%%%%%%%%% plot the odd and even part of the sum.
figure()
subplot(2, 1, 1);
plot(t, even);
subplot(2, 1, 2);
plot(t, odd);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.4 obtenga un archivo de audio y realice lo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% siguiente
%%%%%%%%%%%%%% read the audio called "sound.ogg"
[ y1, Fs1 ] = audioread('sound.ogg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Obtenga la parte par e impar de la señal
%%%%%%%%%%%%%% even part of x[n] = 1/2{x[n]+x[-n]}
even_sound = 1 / 2 * ( y1 +  flip(y1));
%%%%%%%%%%%%%% odd part of x[n] = 1/2{x[n]-x[-n]}
odd_sound = 1 / 2 * ( y1 - flip(y1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Obtenga la raíz cuadrada y el valor absoluto
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% de la señal de audio ¿cómo se modifica el
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% sonido con cada una de estas operaciones?
%%%%%%%%%%%%%% Absolute value of sound
y1_abs = abs(y1);
%%%%%%%%%%%%%% Square root of sound
y1_sqrt = sqrt(y1_abs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Sume dos señales de audio ¿cómo se modificó
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% la gráfica?
%%%%%%%%%%%%%% read the audio called "sound_to_sum.ogg"
[ y2, Fs2 ] = audioread('sound_to_sum.ogg');
%%%%%%%%%%%%%% Absolute value of sound
y2_abs = abs(y2);
%%%%%%%%%%%%%% Square root of sound
y2_sqrt = sqrt(y2_abs);
%%%%%%%%%%%%%% Get the size of the first sound
size1 = size(y1);
%%%%%%%%%%%%%% Get the size of the second sound
size2 = size(y2);
%%%%%%%%%%%%%% crop the size to the lowest size
%%%%%%%%%%%%%% select lower size
if size1 < size2
    %%%%%%%%%%%%%% size1 < size2
    %%%%%%%%%%%%%% crop y1 to y2 size
    yn1 = y1(1:size1);
    %%%%%%%%%%%%%% crop y2 to y2 size
    yn2 = y2(1:size1);
else
    %%%%%%%%%%%%%% size1 >= size2
    %%%%%%%%%%%%%% crop y1 to y1 size
    yn1 = y1(1:size2);
    %%%%%%%%%%%%%% crop y1 to y2 size
    yn2 = y2(1:size2);
end
%%%%%%%%%%%%%% sum the two sounds
ys = yn1 + yn2;
%%%%%%%%%%%%%% even part of x[n] = 1/2{x[n]+x[-n]}
even_sounds = 1 / 2 * ( ys +  flip(ys));
%%%%%%%%%%%%%% odd part of x[n] = 1/2{x[n]-x[-n]}
odd_sounds = 1 / 2 * ( ys - flip(ys));
%%%%%%%%%%%%%% plot the original sound, the abs part and the sqrt
figure;
subplot(3, 1, 1);
plot(y1);
subplot(3, 1, 2);
plot(y1_abs);
subplot(3, 1, 3);
plot(y1_sqrt);
figure;
subplot(2, 1, 1);
plot(even_sounds);
subplot(2, 1, 2);
plot(odd_sounds);
