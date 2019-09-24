// EXEMPLO 9.5
// aula 09/04 

s = %s
j = %i

up = 20

qsi=-log(up/100)/sqrt((log(up/100)^2+pi^2))

tetha1 = acosd(qsi)
tetha2 = 180-tetha1

G = (s+8)/((s+3)*(s+6)*(s+10))
evans(G)
sgrid(qsi, 0, 5)

//p = locate(1)

a = p(1)+p(2)*j
/*
polos: -3, -6, -10
zeros: -8
*/

ap3 = atand(imag(a+3)/real(a+3))
ap3c = ap3+180
ap6 = atand(imag(a+6)/real(a+6)))
ap10 = atand(imag(a+10)/real(a+10))
az8 = atand(imag(a-(-8)/real(a-(-8))


cang = az8-(ap3c+ap6+ap10) //179,99 contribuição angular

K = 1/abs(horner(G, a))

Ts = 4/real(a) //0.73
Tp = pi/imag(a) //0.29

Kp = K*(horner(G,0))
eeedeg = 1/(1+Kp)
//Novo tp = 2/3 do tp atual:

Tpn = Tp*(2/3)
// calcular novo ponto de operação
//An = -sigman+jWdn
jwdn = %pi/Tpn
sigman = jwdn/tand(tetha1)
an = complex(-sigma, jwdn) //ou an = -sigman + %i*jwdn

//contribuição angular do novo ponto:
ap3compensador = atand(imag(an+3))/real(an+3)))
ap3CC = ap3compensador+180
ap6compensador = atand(imag(an+6))/real(an+6)))
ap6CC = ap6compensador+180
ap10compensador = atand(imag(an+10))/real(an+10)))
az8compensador = atand(imag(an+8))/real(an+8)))
az8CC = az8compensador+180


temp = az8CC - (ap3CC+ap5CC+ap10compensandor) 

//temp - apc = +-180
//-198.33-apc = +-180
//apc = -198.33+-180

angCompensador1 = 180-temp
angCompensador2 = -180-temp

// Gn = Kc(s+zc)(s+8)/(s+3)(s+6)(s+10)

zc = jwdn/tand(angCompensador2)+sigman

Gn = ((s+8)*(s+zc))/((s+3)*(s+6)*(s+10))

evans(Gn)

//olhar no grafico, se a interccção do lugar das raizes com o qsi bater com o An,calcular o ganho do compensador

Kn = 1/abs(horner(Gn,an))


// EXERCICIO PEDE PARA ZERAR O EEE DEGRAU, PARA ISSO USA-SE COMPENSADOR PI
// unico compensador q consegue zerar

// ATENÇÃO: PRECISA TER UM POLO NA ORIGEM PARA ESSE COMPENSADOR
// e um zero perto dele

// CONTROLADOR PI
// Cpi == Kcc(s+zcc)/s
// no caso zcc = -0,5 (arbitrario)

// Gnn = (s+zc)(s+8)/(s+3)(s+6)(s+10) . (s+0,5)/s . Kcc
// UP = 20 
// ann = 
// Knn = 

Gnn = ((s+zc)*(s+8)*(s+0.5))/((s+3)*(s+6)*(s+10)*s)

evans(Gnn)

// pegar ann do grafico 

ann = -7.518 + %i*14.68

Knn = 1/abs(horner(Gnn, ann))























