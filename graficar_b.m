function [] = graficar_b()
x = [0:.01:15*pi];
poly1 = polyval([1 9],x);
poly2 = polyval([4 32],x);

y = sin(6*log(poly1)/log(2)) + cos(7*log(poly2)/log(6));
plot(x,y,'g + ')
title('Grafico funcion B')
xlabel('Eje X')
ylabel('Eje Y')

end

