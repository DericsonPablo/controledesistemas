// EXEMPLO 9.6
// Projete um compensador para o sistema de modo que opere
// com %UP = 20% e redução de Ts à metade. Além disso, o
// sistema compensado deve apresentar uma melhoria de 10
// vezes no erro de estado estacionário para rampa.

s = %s
x = poly(0, 'x')

up = 20 // calcular o qsi tendo em maos o up
qsi = -log(up/100)/sqrt((log(up/100)^2+%pi^2))
// angulos da reta qsi
tetha1 = acosd(qsi)
tetha2 = 180-tetha1

G = 1/(s*(s+6)*(s+10)) // função do enunciado
evans(G)
sgrid(qsi, 0, 5) 

//p = locate(1) // ponto de intercção entre a reta do lugar das raizes e o qsi para encontar o ponto de operação

a = p(1) + %i*p(2) // ponto de operação

// com o ponto de operação podemos calcular os angulso dos polos(denominador)e zeros(numerador)

ap0 = atand(imag(a)/real(a))
ap0c = 180+ap0
ap6 = atand(imag(a+6)/real(a+6))
ap10 = atand(imag(a+6)/real(a+10))

// contribuição angular Ez - Ep

cang = ap0c + ap6 + ap10

// ganho K
K = 1/abs(horner(G,a))

Tp = %pi/imag(a) // tempo de pico
Ts = 4/real(a) // tempo de assentamento

// para calcular o Kv = lim s*K*G quando s -> 0
Kv = K*(1/60)

eeerampa = 1/Kv


// AGR PROJETAR O SISTEMA USANDO COMPENSADOR COM AVANÇO DE FASE
// Tsn = 1/2 Ts

Tsn = (1/2)*Ts // n esquecer de usar TS POSITIVO, pq eh tempo 
 
// lembrando q Ts = 4 / real(a)
// an = -sigman +jwdn

sigman = 4 / -Tsn
jwdn = sigman*tand(tetha1)

an = complex(-sigman, jwdn) // novo ponto de operação para compensador com avanço de fase

// contribuição angular para o novo ponto de operação

ap0compensador = atand(imag(an)/real(an))
ap0CC = 180+ap0compensador
ap6compensador = atand(imag(an+6)/real(an+6))
ap10compensador = atand(imag(an+10)/real(an+10))
az6compensador = atand(imag(an+6)/real(an+6)) // escolha arbitraria para um zero em6

// variavel temporaria para calcular o angulo do polo do compensador
// temp = Ez - Ep
temp = az6compensador - (ap0CC + ap6compensador + ap10compensador)

// temp - angCompensador = +- 180

angCompensador1 = 180-temp
angCompensador2 = 180+temp

// encontrar o polo do compensador pela trigonometria
pc = jwdn/tand(angCompensador2) + sigman

Gn = (s+6)/(s*(s+6)*(s+10)*(s+pc)) // nova função transferencia
evans(Gn)

Kn = 1/abs(horner(Gn,an)) //novo ganho

Tpn = %pi / jwdn // novo tempo de pico

Kvn = Kn*(1/(10*pc))

eeerampan = 1/Kvn

// COMPENSADOR ATRASO AVANÇO

// o exercicio pede um EEE rampa 10 vezes menor:
// com o erro do compensador de avanço de fase conseguimos encontrar o erro
// do compensador atraso avanço

eeerampann = eeerampa/10 

// com o erro do compensador atraso avanço encontramos o Kvnn do msm
Kvnn = 1/eeerampann

//sabendo que o compensador por atraso avanço obedece as regras:
//z1 < p1
//z2 < p2
//e
//z1z2 = p1p2, temos:

z1 = 6
z2 = 0.04 // estimado
p1 = pc
p2 = (z1*z2)/p1

Gnn = ((s+6)*(s+z2))/(s*(s+6)*(s+10)*(s+pc)*(s+p2))
evans(Gnn)

// pelo grafico achar o novo ponto de operação

ann = -3.575 + 6.979*%i

Knn = 1/abs(horner(Gnn, ann))
Tsnn = 4/real(ann)
Tpnn = %pi/imag(ann)

// verificar se o novo ponto pertecen ao lugar das raizes

ap0compensador2 = atand(imag(ann)/real(ann))
ap0CCC = 180+ap0compensador2
ap6compensador2 = atand(imag(ann+6)/real(ann+6))
ap10compensador2 = atand(imag(ann+10)/real(ann+10))

az1_c_atraso_avanço = atand(imag(ann+z1)/real(ann+z1))
az2_c_atraso_avanço = atand(imag(ann+z2)/real(ann+z2))
az2CCC = 180+az2_c_atraso_avanço
ap1_c_atraso_avanço = atand(imag(ann+p1)/real(ann+p1))
ap2_c_atraso_avanço = atand(imag(ann+p2)/real(ann+p2))
ap2CCC = 180+ap2_c_atraso_avanço

cangCCC = (az1_c_atraso_avanço+az2CCC) - (ap0CCC+ap6compensador2+ap10compensador2+ap1_c_atraso_avanço+ap2CCC)

Kv_nn = Knn*((6*z2)/(6*10*pc*p2))
eee_rampa_nn = 1/Kv_nn

















