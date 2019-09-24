// exemplo 9.9
// dia 11/04 aul 15

s = %s
x = poly(0,'x')

Gc = ((s+55.92)*(s+0.5))/s //controlador ideal -> tabela 9.10 //foto do circuito no celular

// Vout / Vin = - [R2C1s +(R2/R1 + C1/C2)+ 1/R1C2/s]
// Gc = s + 56.42s + 27.96/s -> essa equação esta nos termos da equação de cima

// R2C1 = 1
// (R2/R1 + C1/C2) = 56.42
// 1/R1C2 = 27.96

// 4 variaveis e 3 eq -> escolher uma variavel, aconselhado escolher valor para CAPACITOR, porem n tao elevado pq vai cair em capacitores eletroliticos, os quais possuem polaridade, ai vai da bosta

// escohlhendo C2 = 0.1uF
C2 = 0.1*10^-6

R1 = 1/(27.96*C2)

// montar o sistema com as outras equações

// (1/C1)/R1 + C1/C2 = 56.42
// ((1/C1)C2 + C1R1)/R1C2 = 56.42
// resulta
// R2 = 178.98Kohm
// C1 5.59 uF

