%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Author: Héctor Robles
% github: /Hector290601
% creation date: 04 30 2022
% last edit date: 04 30 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
format rational;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Transforma un filtro Butterworth paso-bajas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% normalizado de 3 polos en un filtro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% paso-banda cuya banda de paso esté centrada
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% en w = 15 rad/s, y que tenga un ancho de
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% banda de 8 rad/s
%%%%%%%%%%%%%% Use the buttap function to get a normaliced butterworth
%%%%%%%%%%%%%% filter
[z, p, k] = buttap(3);

%%%%%%%%%%%%%% Transform the butterworth previously obtained to the
%%%%%%%%%%%%%% polynomial butterworth form usinf the zp2tf function
[b, a] = zp2tf( ...
    z, ...
    p, ...
    k ...
    );

%%%%%%%%%%%%%% Move the central bandpass to the requested frequency
pass_band_center = 15;

%%%%%%%%%%%%%% Set the bandpass width to the rquested frequency
pass_band_width = 8;

%%%%%%%%%%%%%% Change the butterworth filter to a bandpass filter using
%%%%%%%%%%%%%% the lp2bp function
[b, a] = lp2bp( ...
    b, ...
    a, ...
    pass_band_center, ...
    pass_band_width ...
    );

%%%%%%%%%%%%%% Create a vector to store the values to test the bandpass
%%%%%%%%%%%%%% filter
w = 0:0.5:50;

%%%%%%%%%%%%%% Get the transfer function from the bandpass filter usgin the
%%%%%%%%%%%%%% tf function
H = tf( ...
    b, ...
    a ...
    );

%%%%%%%%%%%%%% Get the bode diagrams from the transfer function using the
%%%%%%%%%%%%%% bode function
[magnitude, phase] = bode( ...
    H, ...
    w ...
    );

%%%%%%%%%%%%%% Remove the singleton dimensions using the squeeze function
magnitude = squeeze(magnitude);
phase = squeeze(phase);

%%%%%%%%%%%%%% Clear the figure, if exists, to get a clean figure using the
%%%%%%%%%%%%%% clf function
clf;

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot the figure
%%%%%%%%%%%%%% Create a two rows one column figure using the subplot
%%%%%%%%%%%%%% function and access to the first position
subplot(211);
%%%%%%%%%%%%%% Plot the bandpass filter's response to different values
plot(w, magnitude);
%%%%%%%%%%%%%% Put the y label to the plot
ylabel("|H|");
%%%%%%%%%%%%%% Put a title to the plot
title("Diseño filtro paso banda");
%%%%%%%%%%%%%% Put the x label to the plot
xlabel("Frecuencia (rad/s)");
%%%%%%%%%%%%%% Create a two rows one column figure using the subplot
%%%%%%%%%%%%%% function and access to the second position
subplot(212);
%%%%%%%%%%%%%% Plot the bandpass filter's response to different values
plot(w, phase);
%%%%%%%%%%%%%% Put the y label to the plot
ylabel("Fase(H), grados");
%%%%%%%%%%%%%% Put the x label to the plot
xlabel("Frecuencia (rad/s)");
figure;
%%%%%%%%%%%%%% Plot the bode diagram
bode(H, w);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% e) Obtén la expresión analítica de H(s)
%%%%%%%%%%%%%% Print the analytic expression 
disp( ...
    "                      " + ...
    b(1) + ...
    "s^3 + " + ...
    b(2) + ...
    "s^2 + " + ...
    b(3) + ...
    "s^1 + " + ...
    b(4) ...
    );
disp("H(s) = ------------------------------------------------------------------");
disp( ...
    "       " +...
    a(1) + ...
    "s^6 + " + ...
    a(2) + ...
    "s^5 + " + ...
    a(3) + ...
    "s^4 + " + ...
    a(4) + ...
    "s^3 + " + ...
    a(5) + ...
    "s^2 + " + ...
    a(6) + ...
    "s^1 + " + ...
    a(7) ...
    );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% f) Proporciona los valores de los polos y su
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% diagrama:
%%%%%%%%%%%%%% Copy the b as the numerator
numerator = b;

%%%%%%%%%%%%%% Copy the a as the denominator
denominator = a;

%%%%%%%%%%%%%% Get the roots from the numerator using the roots function
roots_numerator = roots(numerator);

%%%%%%%%%%%%%% Get the roots from the denominator using the roots function
roots_denominator = roots(denominator);

%%%%%%%%%%%%%% Create a new figure to plot the poles
figure
%%%%%%%%%%%%%% Plot the poles in a Z plane
zplane( ...
    roots_numerator, ...
    roots_denominator ...
    );

%%%%%%%%%%%%%% Enable the grid to make it more visual
grid