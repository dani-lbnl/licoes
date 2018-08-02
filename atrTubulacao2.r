#Calculo de diametro da tubulacao - a variavel D na equacao da DAEE eh chamada de x aqui
#Codigo criado Jul 16, 2014
#ATR Dracena-SP-Brazil

require(rootSolve)
Q = 0.027^1.85; #vazao
Ltotal = 43.676
C = 343.83;
CoefRug = 100^1.85; #coeficiente de rugosidade
n = 4.87;
deltaT = 3; #declividade

fun <- function(x) deltaT * CoefRug * x^n - (10.65 * Q ) * (Ltotal + C * x) 
raizes = uniroot.all(fun,c(0,100))
print(paste("O resultado eh:",raizes,'metros'))

#Se quiser grafico
curve(fun(x), 0, 8, main="Diametro tubulacao",xlab="metros",xlim=c(0,1))
points(raizes, 0, pch = 16, cex = 2)
abline(h = 0, lty = 3) 
