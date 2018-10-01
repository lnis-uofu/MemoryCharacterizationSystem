cvID=geGetWindowCellView()
;calque1=list("Metal1" "mask1")
;calque2=list("Oxide1" "mask2")
;calque3=list("Metal2" "mask3")
;calque4=list("Oxide2" "mask4")
;calque5=list("Metal3" "mask5")
;calque6=list("Passivation" "mask6")
;calque7=list("Metal4" "mask7")
calque1=list("DPF" "drawing")
calque2=list("TWEL" "drawing")
calque3=list("PPLUS" "drawing")
calque4=list("LDD" "drawing")
calque5=list("PPOLY_S" "drawing")
calque6=list("CELLD" "drawing")
calque7=list("SPB" "drawing")

load "nombres.il"
load "align_cross.il"

procedure(drawSimpleCell( posx posy viaSize oxiSize)

	pointsBE=list(posx:posy posx:posy+200 posx+200:posy+200 posx+300-viaSize/2:posy+100+viaSize/2 posx+405:posy+100+viaSize/2 posx+405:posy+100-viaSize/2 posx+300-viaSize/2:posy+100-viaSize/2 posx+200:posy)

	pointsGE=list(posx+800-viaSize:posy posx+800-viaSize:posy+200 posx+600-viaSize:posy+200 posx+500-viaSize/2:posy+100+viaSize/2 posx+395-viaSize:posy+100+viaSize/2 posx+395-viaSize:posy+100-viaSize/2 posx+500-viaSize/2:posy+100-viaSize/2 posx+600-viaSize:posy)

	pointsTE=list(posx+400-viaSize:posy+200 posx+400-viaSize:posy+95-viaSize/2 posx+400:posy+95-viaSize/2 posx+400:posy+200 posx+500-viaSize/2:posy+300-viaSize/2 posx+500-viaSize/2:posy+500-viaSize/2 posx+300-viaSize/2:posy+500-viaSize/2 posx+300-viaSize/2:posy+300-viaSize/2)

	pointsPL=list(posx-100:posy-100 posx-100:posy+480-viaSize/2 posx+320-viaSize/2:posy+480-viaSize/2 posx+320-viaSize/2:posy+320-viaSize/2 posx+480-viaSize/2:posy+320-viaSize/2 posx+480-viaSize/2:posy+480-viaSize/2 posx-100:posy+480-viaSize/2 posx-100:posy+900 posx+900:posy+900 posx+900:posy-100 posx+20+600-viaSize:posy-100 posx+20+600-viaSize:posy+20 posx+180+600-viaSize:posy+20 posx+180+600-viaSize:posy+180 posx+20+600-viaSize:posy+180 posx+20+600-viaSize:posy-100 posx+20:posy-100 posx+20:posy+20 posx+180:posy+20 posx+180:posy+180 posx+20:posy+180 posx+20:posy-100)

	pointsAlBE=list(posx:posy posx+200:posy posx+200:posy+200 posx:posy+200)

	pointsAlTE=list(posx+500-viaSize/2:posy+300-viaSize/2 posx+500-viaSize/2:posy+500-viaSize/2 posx+300-viaSize/2:posy+500-viaSize/2 posx+300-viaSize/2:posy+300-viaSize/2)

	pointsAlGE=list(posx+600-viaSize:posy posx+200+600-viaSize:posy posx+200+600-viaSize:posy+200 posx+600-viaSize:posy+200)

	pointsOX=list(posx+400-viaSize/2+oxiSize/2:posy+100+oxiSize/2 posx+400-viaSize/2+oxiSize/2:posy+100-oxiSize/2 posx+400-viaSize/2-oxiSize/2:posy+100-oxiSize/2 posx+400-viaSize/2-oxiSize/2:posy+100+oxiSize/2)

	dbCreatePolygon(cvID calque1 pointsBE);;top electrode
	dbCreatePolygon(cvID calque2 pointsOX);;switching layer
	dbCreatePolygon(cvID calque3 pointsTE);;bottom electrode
	dbCreatePolygon(cvID calque4 pointsOX);;hfo2 zhengdong
	dbCreatePolygon(cvID calque5 pointsGE);;gate
	dbCreatePolygon(cvID calque6 pointsPL);;passivation layer
	dbCreatePolygon(cvID calque7 pointsAlBE);;Pad definition
	dbCreatePolygon(cvID calque7 pointsAlTE);;Pad definition
	dbCreatePolygon(cvID calque7 pointsAlGE);;Pad definition
)

procedure(drawPadToPad( posx posy viaSize)

	pointsBE=list(posx:posy posx:posy+200 posx+200:posy+200 posx+300-viaSize/2:posy+100+viaSize/2 posx+405:posy+100+viaSize/2 posx+405:posy+100-viaSize/2 posx+300-viaSize/2:posy+100-viaSize/2 posx+200:posy)

	pointsTE=list(posx+400-viaSize:posy+200 posx+400-viaSize:posy+95-viaSize/2 posx+400:posy+95-viaSize/2 posx+400:posy+200 posx+500-viaSize/2:posy+300-viaSize/2 posx+500-viaSize/2:posy+500-viaSize/2 posx+300-viaSize/2:posy+500-viaSize/2 posx+300-viaSize/2:posy+300-viaSize/2)

	pointsAlBE=list(posx:posy posx+200:posy posx+200:posy+200 posx:posy+200)

	pointsAlTE=list(posx+500-viaSize/2:posy+300-viaSize/2 posx+500-viaSize/2:posy+500-viaSize/2 posx+300-viaSize/2:posy+500-viaSize/2 posx+300-viaSize/2:posy+300-viaSize/2)

	pointsPL=list(posx-100:posy-100 posx-100:posy+480-viaSize/2 posx+320-viaSize/2:posy+480-viaSize/2 posx+320-viaSize/2:posy+320-viaSize/2 posx+480-viaSize/2:posy+320-viaSize/2 posx+480-viaSize/2:posy+480-viaSize/2 posx-100:posy+480-viaSize/2 posx-100:posy+900 posx+900:posy+900 posx+900:posy-100 posx+20:posy-100 posx+20:posy+20 posx+180:posy+20 posx+180:posy+180 posx+20:posy+180 posx+20:posy-100)

	dbCreatePolygon(cvID calque1 pointsBE);;top electrode
	dbCreatePolygon(cvID calque3 pointsTE);;bottom electrode
	dbCreatePolygon(cvID calque6 pointsPL);;passivation layer
	dbCreatePolygon(cvID calque7 pointsAlBE);;Pad definition
	dbCreatePolygon(cvID calque7 pointsAlTE);;Pad definition
)

procedure(draw_V(px py)
	dbCreatePolygon(cvID calque1 list(px:py+100 px:py+40 px+40:py px+60:py px+100:py+40 px+100:py+100 px+80:py+100 px+80:py+50 px+50:py+20 px+20:py+50 px+20:py+100))
)

procedure(draw_I(px py)
	dbCreatePolygon(cvID calque1 list(px:py px:py+20 px+20:py+20 px+20:py+80 px:py+80 px:py+100 px+60:py+100 px+60:py+80 px+40:py+80 px+40:py+20 px+60:py+20 px+60:py))
)

procedure(drawResMeas(posx posy Wox Lox Mat)
	pointsOX=list(posx+300-Lox/2:posy+300-Wox/2 posx+300-Lox/2:posy+300+Wox/2 posx+300+Lox/2:posy+300+Wox/2 posx+300+Lox/2:posy+300-Wox/2)

	pointsI1=list(posx:posy+400 posx:posy+600 posx+200:posy+600 posx+200:posy+420+Wox/2-5*Lox/14 posx+300-5*Lox/14:posy+320+Wox/2 posx+300-5*Lox/14:posy+290-Wox/2 posx+300-Lox/2:posy+290-Wox/2 posx+300-Lox/2:posy+300+Wox/2 posx+200-Lox/2+Wox/2:posy+400)
	pointsI2=list(posx+600:posy+400 posx+600:posy+600 posx+400:posy+600 posx+400:posy+420+Wox/2-5*Lox/14 posx+300+5*Lox/14:posy+320+Wox/2 posx+300+5*Lox/14:posy+290-Wox/2 posx+300+Lox/2:posy+290-Wox/2 posx+300+Lox/2:posy+300+Wox/2 posx+400+Lox/2-Wox/2:posy+400)

	pointsV1=list(posx+200:posy posx:posy posx:posy+200 posx+210+Wox/2-3*Lox/14:posy+200 posx+300-3*Lox/14:posy+290-Wox/2 posx+300-3*Lox/14:posy+310+Wox/2 posx+300-Lox/14:posy+310+Wox/2 posx+300-Lox/14:posy+270-Wox/2 posx+200:posy+170-Wox/2+Lox/14)
	pointsV2=list(posx+400:posy posx+600:posy posx+600:posy+200 posx+390-Wox/2+3*Lox/14:posy+200 posx+300+3*Lox/14:posy+290-Wox/2 posx+300+3*Lox/14:posy+310+Wox/2 posx+300+Lox/14:posy+310+Wox/2 posx+300+Lox/14:posy+270-Wox/2 posx+400:posy+170-Wox/2+Lox/14)

	pointsPL=list(posx-200:posy-300 posx-200:posy+700 posx+20+400:posy+700 posx+20+400:posy+420 posx+180+400:posy+420 posx+180+400:posy+580 posx+20+400:posy+580 posx+20+400:posy+700 posx+20:posy+700 posx+20:posy+420 posx+180:posy+420 posx+180:posy+580 posx+20:posy+580 posx+20:posy+700 posx+800:posy+700 posx+800:posy-300 posx+20+400:posy-300 posx+20+400:posy+20 posx+180+400:posy+20 posx+180+400:posy+180 posx+20+400:posy+180 posx+20+400:posy-300 posx+20:posy-300 posx+20:posy+20 posx+180:posy+20 posx+180:posy+180 posx+20:posy+180 posx+20:posy-300)

	pointsUL=list(posx:posy+400 posx:posy+600 posx+200:posy+600 posx+200:posy+400)
	
	pointsUR=list(posx+600:posy+400 posx+600:posy+600 posx+400:posy+600 posx+400:posy+400)

	pointsDL=list(posx+200:posy posx:posy posx:posy+200 posx+200:posy+200)

	pointsDR=list(posx+400:posy posx+600:posy posx+600:posy+200 posx+400:posy+200)

	if((Mat==1) dbCreatePolygon(cvID calque1 pointsOX));;M1
	if((Mat==2) dbCreatePolygon(cvID calque2 pointsOX));;Oxide1
	if((Mat==3) dbCreatePolygon(cvID calque3 pointsOX));;M2
	if((Mat==4) dbCreatePolygon(cvID calque4 pointsOX));;Oxide2
	if((Mat==5) dbCreatePolygon(cvID calque5 pointsOX));;M3
	if((Mat==6) dbCreatePolygon(cvID calque6 pointsOX));;Pass
	if((Mat==7) dbCreatePolygon(cvID calque7 pointsOX));;M4

	dbCreatePolygon(cvID calque1 pointsI1);;electrode current1
	dbCreatePolygon(cvID calque1 pointsI2);;electrode current2
	dbCreatePolygon(cvID calque1 pointsV1);;electrode voltage1
	dbCreatePolygon(cvID calque1 pointsV2);;electrode voltage2
	draw_I(posx+270 posy+450)
	draw_V(posx+250 posy+50)
	dbCreatePolygon(cvID calque6 pointsPL);;passivation layer
	dbCreatePolygon(cvID calque7 pointsUL);;Pad definition
	dbCreatePolygon(cvID calque7 pointsUR);;Pad definition
	dbCreatePolygon(cvID calque7 pointsDL);;Pad definition
	dbCreatePolygon(cvID calque7 pointsDR);;Pad definition

)

procedure(drawMOS( posx posy viaSize oxiSize ecart)

	D=800+ecart+posx
	cmx=posx+400+ecart/2
	cmy=posy+100

	pointsBE1=list(posx:posy posx:posy+200 posx+200:posy+200 posx+300-viaSize/2:posy+100+viaSize/2 posx+405:posy+100+viaSize/2 posx+405:posy+100-viaSize/2 posx+300-viaSize/2:posy+100-viaSize/2 posx+200:posy)

	pointsBE2=list(D:posy D:posy+200 D-200:posy+200 D-(300-viaSize/2):posy+100+viaSize/2 D-405:posy+100+viaSize/2 D-405:posy+100-viaSize/2 D-(300-viaSize/2):posy+100-viaSize/2 D-200:posy)

	pointsPL=list(posx-105:posy-105 posx-105:posy+455 posx+955:posy+455 posx+955:posy-105 posx+620+ecart:posy-105 posx+620+ecart:posy+20 posx+780+ecart:posy+20 posx+780+ecart:posy+180 posx+620+ecart:posy+180 posx+620+ecart:posy-105 posx+20:posy-105 posx+20:posy+20 posx+180:posy+20 posx+180:posy+180 posx+20:posy+180 posx+20:posy-105)

	pointsAlBE=list(posx:posy posx+200:posy posx+200:posy+200 posx:posy+200)

	pointsAlTE=list(D-200:posy D:posy D:posy+200 D-200:posy+200)

	pointsOX=list(posx+400-viaSize/2+oxiSize:posy+100+oxiSize/2 posx+400-viaSize/2+oxiSize:posy+100-oxiSize/2 posx+400-viaSize/2-oxiSize:posy+100-oxiSize/2 posx+400-viaSize/2-oxiSize:posy+100+oxiSize/2)

	dbCreatePolygon(cvID calque1 pointsBE1);;left electrode(bottom)
	dbCreatePolygon(cvID calque2 pointsOX);;switching layer
	dbCreatePolygon(cvID calque1 pointsBE2);;right electrode(Top)
	dbCreatePolygon(cvID calque3 list(cmx-ecart/2-oxiSize/4:cmy-oxiSize/2 cmx-ecart/2-oxiSize/4:cmy+oxiSize/2 cmx+ecart/2+oxiSize/4:cmy+oxiSize/2 cmx+ecart/2+oxiSize/4:cmy-oxiSize/2));;top metal
	dbCreatePolygon(cvID calque6 pointsPL);;passivation
	dbCreatePolygon(cvID calque7 pointsAlBE);;Pad definition
	dbCreatePolygon(cvID calque7 pointsAlTE);;Pad definition
)

procedure(drawTile(posx posy spacing numCellx numCelly device)
	
	for(j 0 numCelly-1
		
		py=posy+1000*j+spacing*j
		for(i 0 numCellx-1
			px=posx+1000*i+spacing*i
			viaSize=2*(modulo(i 5)+1)
			if((device==1) then
				drawSimpleCell(px+100 py+100 viaSize 50)
				drawNumber(i+1 px+150 py+750);;ligne
				drawNumber(j+1 px+350 py+750);;colone
				drawNumber(viaSize px+150 py+450);;taille via
			)
			if((device==2) then
				drawPadToPad(px+100 py+100 viaSize)
				drawNumber(i+1 px+150 py+750);;ligne
				drawNumber(j+1 px+350 py+750);;colone
			)
			if((device==3) then
				(if ((4.5-i)*(4.5-j)<0) drawResMeas(px+200 py+300 modulo(j 5)*26+20 modulo(i 5)*30+50 1) drawResMeas(px+200 py+300 modulo(j 5)*26+20 modulo(i 5)*30+50 2))
				drawNumber(i+1 px+200 py+550);;ligne
				drawNumber(j+1 px+700 py+550);;colone
				drawNumber(round(modulo(j 5)*26+20) px+150 py+100);;Wox
				drawNumber(round(modulo(i 5)*30+50) px+600 py+100);;Lox
			)
		)
	)
	
)

procedure(drawTestEtch(px py layer)
	pointsC=list(px:py px+8000:py px+8000:py+8000 px:py+8000)

	if((layer==1) then
		dbCreatePolygon(cvID calque1 pointsC)
	)
	if((layer==2) then
		dbCreatePolygon(cvID calque2 pointsC)
	)
	if((layer==3) then
		dbCreatePolygon(cvID calque3 pointsC)
	)
	if((layer==4) then
		dbCreatePolygon(cvID calque4 pointsC)
	)
	if((layer==5) then
		dbCreatePolygon(cvID calque5 pointsC)
	)
	if((layer==6) then
		dbCreatePolygon(cvID calque6 pointsC)
	)

)

procedure(drawTileMOS(posx posy spacing nCx nCy)
	for(j 0 nCy-1
		
		py=posy+500*j+spacing*j
		for(i 0 nCx-1
			px=posx+1000*i+spacing*i
			drawMOS(px+75 py+75 10 20 50)
			drawNumber(i+1 px+75 py+350);;ligne
			drawNumber(j+1 px+275 py+350);;colone
		)
	)
)

procedure(placeCross()
	cvID=geGetWindowCellView()
	
	for(i 1 7
		for(j 1 7
			;dbCreateInst(cvID dbOpenCellViewByType("ReRAM" "dicing_cross" "layout") nil list(i*10400-41600 j*10400-41600) "R0")
			dbCreateInst(cvID dbOpenCellViewByType("DWL_template" "DWL_CROSS_5.00" "layout") nil list(i*200 j*200) "R0")
		)
	)
)

procedure(drawWafer()
	placeCross()

	for(i 1 6
		for(j 0 2
			if((modulo(i 2)==0) drawTile(i*10400-41350 j*20800-30950 0 10 10 1))
			if((modulo(i 2)==1) drawTile(i*10400-41350 j*20800-20550 0 10 10 1))
		)
	)

	drawTile(-30950 10650 0 10 10 3)
	drawTile(-20550 21050 0 10 10 3)
	drawTile(-10150 -10150 0 10 10 3)
	drawTile(250 250 0 10 10 3)
	drawTile(10650 -30950 0 10 10 3)
	drawTile(21050 -20550 0 10 10 3)

	drawTile(-30950 -30950 0 10 10 2)
	drawTile(-20550 250 0 10 10 2)
	drawTile(21050 21050 0 10 10 2)
	
	drawTileMOS(-9940 10875 60 9 17)
	drawTileMOS(10860 -9925 60 9 17)
	drawTileMOS(460 -20325 60 9 17)
	
	drawTestEtch(-9200 -30000 1)
	drawTestEtch(11600 11600 2)
	drawTestEtch(-30000 -9200 3)
	drawTestEtch(-19600 -19600 4)
	drawTestEtch(22000 1200 5)
	drawTestEtch(1200 22000 6)

	dbCreateInst(cvID dbOpenCellViewByType("ReRAM" "aligment_r" "layout") nil list(40000 0) "R0")
	dbCreateInst(cvID dbOpenCellViewByType("ReRAM" "aligment_l" "layout") nil list(-38000 0) "R0")

)


