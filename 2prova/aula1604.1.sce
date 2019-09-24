// 16/04
// COMPENSADOR POR RETROAÇÃO


s = %s
x = poly(0,'x')
up = 20

G = 1/(s*(s+5)*(s+15))
qsi = -log(up/100)/sqrt(log(up/100)^2 + %pi^2)

tetha1 = acosd(qsi)
tetha2 = 180-qsi

evans(G)
sgrid(qsi, 0, 5)

//p = locate(1)

a = p(1)+%i*p(2)

ap0 = atand(imag(a)/real(a))
ap0c = 180+ap0

ap5 = atand(imag(a+5)/real(a+5))
ap15 = atand(imag(a+15)/real(a+15))

cang = ap0c + ap5+ ap15

Ts = 4/real(a)
Tp = %pi/imag(a)

K = 1/abs(horner(G,a))

/*
// pontos de entrada e saida
// E sigma p = E sigma z

1/s + 1/(s+5) + 1/(s+15) 
roots([3 40 75]) 
// resultou -11.07 e -2.25 -> unico q pertence ao lugar das raizes eh p -2.25
// logo o ponto de entrada e saida sera -2.25

// assintotas
// sigmaA = (Ep - Ez)/(Np - Nz)
sigmaA = (20-0)/(3-0)

// tethaA = ((2k+1)/(Np - Nz)) * pi
*/

// enunciado pede para reduzir o Ts em 4 vezes

Tsn = -Ts/4

sigman = 4/Tsn //parte real do novo ponto de operação
jwdn = tand(tetha1)*sigman

an = complex(-sigman, jwdn)

ap0compensador = atand(imag(an)/real(an))
ap0CC = ap0compensador + 180

ap5compensador = atand(imag(an+5)/real(an+5))
ap5CC = ap5compensador + 180

ap15compensador = atand(imag(an+15)/real(an+15))


temp = ap0CC + ap5CC + ap15compensador

apc1 = temp-180
apc2 = temp+180

// como eh obtuso, usa o angulo interno
apc1c = 180-apc1

/*
jwdn
sigman
an
*/

pc = -sigman+(jwdn/tand(apc1c)) // troca a formula tb

K = 1 
G2 = 1

// G' = K1/(s*(s+5)*(s+15))
// H' = Kfs+1

// malha aberta
// G'H' = K1/(s*(s+5)*(s+15))*(Kfs+1)
// G'H' = K1Kf(s+1/Kfs)/((s*(s+5)*(s+15))

Kf = -1/pc //s = -1/Kf

K1 = 1
GH = (K1*(Kf*s+1)/(s*(s+5)*(s+15)))
evans(GH)

// pelo grafico K1 = 1395

//////////////////////////////////////

// abordagem 2

