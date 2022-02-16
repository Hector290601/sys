%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 6.1, considere las siguientes señales:
%%%%%%%%%%%%%% crear vector con la variable independiente
t = 0:0.00001:20;
%%%%%%%%%%%%%% señal 1:
x1 = 2*cos(10*t+1)-sin(4*t-1);
%%%%%%%%%%%%%% señal 2:
x2 = (cos(2*t-pi/3)).^2;
%%%%%%%%%%%%%% Para la señal 1:
max1 = max(x1);

plot(t, x1);
%figure;
%plot(t, x2);

%fsi = 246.042;
%fsol = 195.998;
%fla = 220;
%wsi = 2*pi*fsi;
%wla = 2*pi*fla;
%wsol = 2*pi*fsol;
%xsi=sin(wsi*t);
%xsol=sin(wsol*t);
%xla=sin(wla*t);
%xs = xsol+xsi+xla;
%figure;
%plot(t, xs);

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

