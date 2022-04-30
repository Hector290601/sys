%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Héctor Robles
% github: /Hector290601
% creation date: 18 03 2022
% last edit date: 19 02 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 8) Sea la señal de un sistema:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Y(s) = (1)/(s**3 + 4s**2 - 2s - 2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% a) ¿Es estable Y(s):
%%%%%%%%%%%%%% declarate the local variables:
syms s;
%%%%%%%%%%%%%% define the signal to analyse
y = @(s) (1) ./ (s.^3 + 4.*s.^2 - 2.*s - 2);
y_abs = @(s) abs((1) ./ (s.^3 + 4.*s.^2 - 2.*s - 2));
%%%%%%%%%%%%%% to define if it's stable, we need to use the 3.13 equation:
%%%%%%%%%%%%%% integral(h(t)dt, -inf, inf)
result = integral(y_abs, -inf, inf);
%%%%%%%%%%%%%% Display the integral value
disp(result);
% >>    20.9545
%%%%%%%%%%%%%% 20.9 < inf :. eq 3.13's satisfied, but if the system was
%%%%%%%%%%%%%% realizable, the system isn't stable.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% b) Reporta el empleo de la instrución
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% residue.
help residue
%{
>> residue Partial-fraction expansion (residues).
    [R,P,K] = residue(B,A) finds the residues, poles and direct term of
    a partial fraction expansion of the ratio of two polynomials B(s)/A(s).
    If there are no multiple roots,
       B(s)       R(1)       R(2)             R(n)
       ----  =  -------- + -------- + ... + -------- + K(s)
       A(s)     s - P(1)   s - P(2)         s - P(n)
    Vectors B and A specify the coefficients of the numerator and
    denominator polynomials in descending powers of s.  The residues
    are returned in the column vector R, the pole locations in column
    vector P, and the direct terms in row vector K.  The number of
    poles is n = length(A)-1 = length(R) = length(P). The direct term
    coefficient vector is empty if length(B) < length(A), otherwise
    length(K) = length(B)-length(A)+1.
 
    If P(j) = ... = P(j+m-1) is a pole of multplicity m, then the
    expansion includes terms of the form
                 R(j)        R(j+1)                R(j+m-1)
               -------- + ------------   + ... + ------------
               s - P(j)   (s - P(j))^2           (s - P(j))^m
 
    [B,A] = residue(R,P,K), with 3 input arguments and 2 output arguments,
    converts the partial fraction expansion back to the polynomials with
    coefficients in B and A.
 
    Warning: Numerically, the partial fraction expansion of a ratio of
    polynomials represents an ill-posed problem.  If the denominator
    polynomial, A(s), is near a polynomial with multiple roots, then
    small changes in the data, including roundoff errors, can make
    arbitrarily large changes in the resulting poles and residues.
    Problem formulations making use of state-space or zero-pole
    representations are preferable.
 
    Class support for inputs B,A,R:
       float: double, single
 
    See also poly, roots, deconv.

    Documentation for residue

%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% c) Con residue, expande Y(s) en fracciones
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% parciales para obtener una expresión de la
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% forma:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%         R_1     R_2     R_3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Y(s) = ----- + ----- + -----
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%        s+p_1   s+p_2   s+p_3
%%%%%%%%%%%%%% Declare the vectors to store the coefficients of denominator
%%%%%%%%%%%%%% and numerator
%%%%%%%%%%%%%% r is the numerator
r = [0 0 0 1];
%%%%%%%%%%%%%% p is the denominator
p = [1 4 -2 1];
%%%%%%%%%%%%%% calculate the partial fractions
[r_s, p_s, k]= residue(r,p);
%%%%%%%%%%%%%% display numerator of the fractions
disp(r_s);
% >>   0.0442 + 0.0000i
%     -0.0221 - 0.2606i
%     -0.0221 + 0.2606i
%%%%%%%%%%%%%% display the denominator of the fractions
disp(p_s);
% >>   0.0442 + 0.0000i
%     -0.0221 - 0.2606i
%     -0.0221 + 0.2606i
%%%%%%%%%%%%%% display the constants of the fractions
disp(k);
% >> []
%%%%%%%%%%%%%% write expanded Y(s)
%         0.0442 + 0.0000i   -0.0221 - 0.2606i   -0.0221 + 0.2606i
% Y(s) = ----------------- + ----------------- + -----------------
%        -0.0221 + 0.2606i    0.2472 + 0.4017i    0.2472 - 0.4017i
%%%%%%%%%%%%%% create a vector to store the x values
s_dom = -10:0.01:10;
%%%%%%%%%%%%%% evaluate the signal and store in a separated vector
y_plot = (1) ./ (s_dom.^3 + 4.*s_dom.^2 - 2.*s_dom - 2);
%%%%%%%%%%%%%% plot the signal
plot(s_dom, y_plot)
%%%%%%%%%%%%%% as we can see, the signal have values before zero, that
%%%%%%%%%%%%%% means it's not causal
