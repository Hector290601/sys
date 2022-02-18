%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Author: Héctor Robles
% github: /Hector290601
% creation date: 02 10 2022
% last edit date: 02 17 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
format rational;
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
