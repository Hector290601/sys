%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Author: Héctor Robles
% github: /Hector290601
% creation date: 02 10 2022
% last edit date: 02 17 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
format rational;
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
