%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Héctor Robles
% github: /Hector290601
% creation date: 18 03 2022
% last edit date: 19 02 2022
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%% a)
%%%%%%%%%%%%%% declare a vector to store the s values
s_values_a = -100:1:100;
%%%%%%%%%%%%%% evaluate the result from the laplace transform
laplace_result_a = 4 ./ ((s_values_a + 5).^2 + 16);
%%%%%%%%%%%%%% calculate the roots needed to plot the poles
roots_a = roots(laplace_result_a);
%%%%%%%%%%%%%% plor the evaluated transform
%%%%%%%%%%%%%% make the plots persistents in the same figure
hold on;
%%%%%%%%%%%%%% plot the laplace's transform
plot(s_values_b, laplace_result_b);
%%%%%%%%%%%%%% plor the roots
plot(s_values_a(1:length(roots_a)), roots_a)
%%%%%%%%%%%%%% b)
%%%%%%%%%%%%%% declare a vector to store the s values
s_values_b = -100:1:100;
%%%%%%%%%%%%%% evaluate the result from the laplace transform
laplace_result_b = 4 ./ ((s_values_b + 5).^2 + 16);
%%%%%%%%%%%%%% calculate the roots needed to plot the poles
roots_b = roots(laplace_result_b);
%%%%%%%%%%%%%% create a new window to avoid a overwrite on the plots
figure()
%%%%%%%%%%%%%% make the plots persistents in the same figure
hold on;
%%%%%%%%%%%%%% plor the evaluated transform
plot(s_values_b, laplace_result_b)
%%%%%%%%%%%%%% plor the roots
plot(s_values_b(1:length(roots_b)), roots_b)