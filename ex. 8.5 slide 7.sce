//ex. 8.5 slide 7

s=%s
x = poly(0,'x')

g=(s+3)/(s*(s+1)*(s+2)*(s+4))

//zero = -3
//polo = 0; -1; -2; -4

//polos = 4
//zero =1

as = ((-1 + (-2) + (-4)) - (-3))/(4-1)

//ang = (2*k+1)*%pi/(4-1)
ang1 = ((2*0+1)*180)/(4-1)
ang2 = ((2*1+1)*180)/(4-1)
ang3 = ((2*2+1)*180)/(4-1)
ang4 = ((2*3+1)*180)/(4-1)

//Pin. Pout

y = 1/x + 1/(x + 1) + 1/(x + 2) + 1/(x + 4) - 1/(x + 3)
roots([3 26 77 84 24])
