%%%%% Original Signal
%%%%% x[n] = 0.9^n
n = -20:20;
p = ( ( n >= -10 ) & ( n <=10 ) );
x = (0.9 .^ n).*p;
stem(n, x);
legend('x[n]')
