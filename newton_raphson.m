function [] = newton_raphson(f,iterMax,error,p0)
syms x;
r = newton_auxiliar(f,iterMax,error,p0,1)
end

function[raiz] = newton_auxiliar(f,iterMax,error,p0,i)
syms x;
if i > iterMax
    raiz = p0;
else
    p = p0 - (vpa(subs(f,x,p0))/vpa(subs(diff(f),p0)));
    if abs(p - p0) < error;
        raiz = p0;
    else
        raiz = newton_auxiliar(f,iterMax,error,p,i+1);
    end
end
end

