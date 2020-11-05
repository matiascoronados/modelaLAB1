function [diferencia] = diferenciaCuadrada(vector)
if length(vector) < 4 | ~isvector(vector) | ~isnumeric(vector)
    diferencia = "entrada invalida";
else
    mayores = sumaRaizCuadrada(@obtenerMayor,vector);
    menores = sumaRaizCuadrada(@obtenerMenor,vector);
    diferencia = mayores - menores;
end
end

function [sumaRaizC] = sumaRaizCuadrada(funcion,vector)
i = 1;
vectorAux = vector;
suma = 0;
while i <= 4
    indice = funcion(vectorAux);
    suma = suma + vectorAux(indice);
    vectorAux(indice) = [];
    i = i + 1;
end
sumaRaizC = sqrt(suma);
end

function [mayor] = obtenerMayor(vector)
indiceMayor = 1;
for i = 1:length(vector)
    if(vector(i) > vector(indiceMayor))
        indiceMayor = i;
    end
end
mayor = indiceMayor;
end

function [menor] = obtenerMenor(vector)
indiceMenor = 1;
for i = 1:length(vector)
    if(vector(i) < vector(indiceMenor))
        indiceMenor = i;
    end
end
menor = indiceMenor;
end
