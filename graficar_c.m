function [] = graficar_c(x)

poly1 = polyval([1 18],x)

y = 6*exp(poly1)

tiledlayout(2,1)
nexttile
plot(x,y, 'r *')
title("Funcion C con escala normal")
grid on
xlabel('Eje X')
ylabel('Eje Y')

nexttile
semilogy(x,y,'r * ')
title("Funcion C con escala logaritmica")
grid on
xlabel('Eje X')
ylabel('Eje Y')
end

