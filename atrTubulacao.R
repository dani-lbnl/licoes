#Calculo de tubulacao - a variavel D na equacao da DAEE eh chamada de x aqui

A = 10.65 * 0.0139^1.85;
Ltotal = 43.676
C = 343.83;
E = 100^1.85;
n = 4.87;
deltaT = 3; #declividade

fun <- function(x) deltaT*E* x^n - A * (Ltotal + C * x) 
raizes = uniroot.all(fun,c(0,100))
print(paste("O resultado eh:",raizes))

#Se quiser grafico
curve(fun(x), 0, 8)
abline(h = 0, lty = 3) 
