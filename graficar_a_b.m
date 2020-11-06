function [] = graficar_a_b()
x = [0:.01:15*pi];
poly_a = polyval([4 12], x);

poly_b1 = polyval([1 9],x);
poly_b2 = polyval([4 32],x);

y_a = 8*log(poly_a)/log(5);
y_b = sin(6*log(poly_b1)/log(2)) + cos(7*log(poly_b2)/log(6));

plot(x,y_a,'r * ')
title('Grafico funcion combinada')
xlabel('Eje X')
ylabel('Eje Y')

hold on
plot(x,y_b,'g + ')
legend('Función a(x)','Función b(x)')
hold off

end