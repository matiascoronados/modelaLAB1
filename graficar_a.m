function [] = graficar_a(x)

poly1 = polyval([4 12], x)

y = 8*log(poly1)/log(5);
plot(x,y,'r * ')
title('Grafico funcion A')
xlabel('Eje X')
ylabel('Eje Y')

end

