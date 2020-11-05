function [raiz] = newton_raphson(f,iterMax,error,p0)
%Se llama a la funcion auxiliar del metodo
raiz = newton_auxiliar(f,iterMax,error,p0,1);
end

function[raiz] = newton_auxiliar(f,iterMax,error,p0,i)
%Se verifica la condicion de termino
if i > iterMax
    raiz = p0;
%Se aplica la funcion de Newton Raphson
else
    diff_f = diff(f);
    p = p0 - polyval(f,p0)/polyval(diff_f,p0);
    if abs(p - p0) < error
        raiz = p0;
    else
        raiz = newton_auxiliar(f,iterMax,error,p,i+1);
    end
end
end

