syms x;

poly = input("Ingrese el polinomio: ")
iterMax = input("Ingrese el numero maximo de iteraciones: ")
error = input("Ingrese el error: ")
x0 = input("Ingrese el valor incial: ")

if ~isnumeric(x0) | ~isnumeric(error) | ~isnumeric(iterMax) | ~isnumeric(poly)
   disp("Verifique sus entradas")
else
    raiz = newton_raphson(poly,iterMax,error,x0);
    disp("El valor de la raiz es: "+raiz)
end
