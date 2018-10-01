cvID=geGetWindowCellView()
calque1=list("Metal1" "mask1")
calque2=list("Oxide1" "mask2")
calque3=list("Metal2" "mask3")
calque4=list("Oxide2" "mask4")
calque5=list("Metal3" "mask5")
calque6=list("Passivation" "mask6")
calque7=list("Metal4" "mask7")

diam= list(2 5 10 70 100 200)
decalx= list(149 147.5 145 115 100 50)
decaly= list(4 10 60 100 150 800)

load "nombres.il"

procedure(drawCircle(posx posy diametre)
dbCreateEllipse(cvID calque1 list(posx:posy posx+diametre:posy+diametre))
)

procedure(remplir()

posx=-50000
posy=-50000

for(i 1 539

	for(j 1 253
		
		drawCircle(posx posy+(nth (modulo i 6) decalx) (nth (modulo i 6) diam))
		if(((modulo (i-1) 6)==0) drawNumber(j+253*(i-1)/6 posx posy+(nth (modulo i 6) decalx)+150 ))
		posy=posy+400
	)
	posx=posx+(nth (modulo i 6) decaly)
	posy=-50000
)

)