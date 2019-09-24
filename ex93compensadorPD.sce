

--> s = %s
 s  = 

    
   s


--> x = poly(0,'x')
 x  = 

    
   x




--> G = 1/(s*(s+4)*(s+6))
 G  = 

                   
         1         
   --------------  
            2   3  
   24s + 10s + s   


--> roots([1 10 24])
 ans  =

  -6.  
  -4.  


--> evans(G)

--> T = G/(1+G)
 T  = 

                       
           1           
   ------------------  
                2   3  
   1 + 24s + 10s + s   


--> evans(T)

--> roots([1 10 24 1])
 ans  =

  -6.0791189  
  -3.8784681  
  -0.042413  


--> 

--> up = 16
 up  = 

   16.


--> qsi = -log(up/100)/sqrt(log^2(up/100)+%pi^2)



--> qsi = -log(up/100)/sqrt((log^2(up/100)+%pi^2))



--> qsi = -log(up/100)/sqrt((log(up/100)^2+%pi^2))
 qsi  = 

   0.5038681


--> evans(G)

--> evans(G)

--> teta1 = acosd(qsi)
 teta1  = 

   59.743757


--> sgrid(qsi, 0, 5)

--> teta2 = %pi - teta1
 teta2  = 

  -56.602164


--> teta2 = 180 - teta1
 teta2  = 

   120.25624


--> p1 = locate(1)
 p1  = 

  -0.9634491
   1.7137328


--> p1 = locate(1)
 p1  = 

  -1.2044168
   2.0648584


--> a = p(1)*%i*p(2)



--> a = p(1)+%i*p(2)


--> a = p1(1)+%i*p1(2)
 a  = 

  -1.2044168 + 2.0648584i


--> ap0 = atand(imag(a))/real(a))
ap0 = atand(imag(a))/real(a))
                            ^^


--> ap0 = atand((imag(a))/real(a)))
ap0 = atand((imag(a))/real(a)))
                              ^^


--> ap0 = atand(imag(a))/real(a)))
ap0 = atand(imag(a))/real(a)))
                            ^^


--> ap0 = atand(imag(a)/real(a))
 ap0  = 

  -59.7453


--> ap0c = ap0 + 180
 ap0c  = 

   120.2547


--> ap4 = atand(imag(a+4)/real(a+4))
 ap4  = 

   36.450114


--> ap6 = atand(imag(a+6)/real(a+6))
 ap6  = 

   23.295504


--> cang = ap0c+ap4+ap6
 cang  = 

   180.00032


--> K = 1/abs(g)


--> K = 1/abs(G)


--> G
 G  = 

                   
         1         
   --------------  
            2   3  
   24s + 10s + s   


--> horner(G,-1.20+2.06*%i)
 ans  =

  -0.0231013 - 0.000084i


--> 1/(abs(horner(G,-1.20+2.06*%i))
1/(abs(horner(G,-1.20+2.06*%i))
                              ^^


--> 1/ab
 ans  =s(horner(G,-1.20+2.06*%i))

   43.287326


--> //horner -> substituir s pelo a

--> Tp = %pi/imag(a)
 Tp  = 

   1.5214567


--> Ts = 4/real(a)
 Ts  = 

  -3.3211094
  
  //COMPENSADOR PD
  Tsn = Ts/3 // tempo de assentamento novo
  
  Tsn = 4 / sigman
  
  an = -sigman+jwdn
  
  tg 59,74 = wdn / 3,61 // tg = tand
  
  
  
  
