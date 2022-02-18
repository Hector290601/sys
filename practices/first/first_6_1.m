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
