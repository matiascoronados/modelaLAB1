function [diferencia] = diferenciaCuadrada(vector)
%Se obtiene la suma de los 4 mayores/menores elementos del vector
    sumaMayores = sumarElementos(@obtenerMayor,vector);
    sumaMenores = sumarElementos(@obtenerMenor,vector);
%Se verifica si la suma es mayor a 0, esto para evitar el calculo de raices
%complejas
    if sumaMayores < 0
        diferencia = "la suma de los valores mayores es negativa";
    elseif sumaMenores < 0
        diferencia = "la suma de los valores menores es negativa";
    else
        diferencia = sqrt(sumaMayores) - sqrt(sumaMenores);
    end
end

%Esta funcion se encarga de sumar los 4 elementos de vector. Este se norma
%por una criterio de entrada, la cual determina si se obtendran los 
%elementos mayores o menores.
function [rsuma] = sumarElementos(criterio,vector)
i = 1;
vectorAux = vector;
suma = 0;
while i <= 4
    indice = criterio(vectorAux);
    suma = suma + vectorAux(indice);
    vectorAux(indice) = [];
    i = i + 1;
end
rsuma = suma;
end

%Esta funcion se encarga de obtener el indice del elemento mayor.
function [mayor] = obtenerMayor(vector)
indiceMayor = 1;
for i = 1:length(vector)
    if(vector(i) > vector(indiceMayor))
        indiceMayor = i;
    end
end
mayor = indiceMayor;
end

%Esta funcion se encarga de obtener el indice del elemento menor.
function [menor] = obtenerMenor(vector)
indiceMenor = 1;
for i = 1:length(vector)
    if(vector(i) < vector(indiceMenor))
        indiceMenor = i;
    end
end
menor = indiceMenor;
end
