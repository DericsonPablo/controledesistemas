// abordagem 2

GH = (Kf*s)/(s*(s+5)*(s+15))

// malha secundaria
// ponto de entrada e saida = -10
// assintotas 
// sigmaA = -10
// tetheA = pi/2  , 3pi/2, 5pi/2
// qsi = 0.8 (enunciado)
// tetha1 = 37
// a = -10 + 7.5i
// K = 81.25


// malha primaria
// Tsec = G / 1+GH
// Tsec = 1/(s*(s+5)*(s+15)+(Kf*s))

// ----> O ----> K1 ----> Tsec |
//      -| --------------------
// GH = Tsec - K1

// assintotas
// sigmaA = -6.6
// tethaA = pi/3 , pi, 5pi/3
// qsi = 0.6
// an =  -4.5 + 6i
// K1 = 624.7
