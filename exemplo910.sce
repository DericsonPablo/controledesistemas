// EXEMPLO 9.10
// controlador por avanço de fase

s = %s
x = poly(0,'x')

Gc = (s+4)/(s+20.09)

// Vout / Vin = (s+1/R1C) / (s+(1/R1C)+(1/R2C))

// 1/R1C = 4
// 1/R1C + 1/R2C = 20.09

// 3 variaveis e 2 eq
// chutar capacitor C = 1uF

C = 1*10^-6
R1 = 1/(4*C)

// sistema pra segunda eq
// R2 = 62.2Kohm
