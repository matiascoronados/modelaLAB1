vector = input("Ingrese su vector: ")

if length(vector) < 4 | ~isvector(vector) | ~isnumeric(vector)
    disp("Verifique su entrada")
else
    dif = diferenciaCuadrada(vector);
    disp("La diferencia cuadrada tiene un valor de "+dif)
end

