clear all;
clc;
N = 200;
Nplot = 100; 
x = zeros(Nplot,1);
y = zeros(Nplot,1);
b = 0.3;
for a = 0:0.001:1.4;
  x(1) = 0.01;
  y(1) = 0;
  x0 = x(1); 
  y0 = y(1); 
  for n = 1:Nplot-1
    x(n+1) = 1-(a.*x0.^2)+y0; 
    y(n+1) = b.*x0;
    % karena tercouple digunakan x0 dan y0 agar pada iterasi selanjutnya
    % nilai x(n+1) dan y(n+1) tidak saling mempengaruhi
    x0 = x(n+1); 
    y0 = y(n+1); 
  end
  plot(a*ones(10,1), x(Nplot-9:Nplot), '.', 'markersize', 2);
  hold on;
end
title('Diagram Bifurkasi Henonmap');
xlabel('a');  ylabel('x_n');
set(gca, 'xlim', [0 1.4]);
hold off;