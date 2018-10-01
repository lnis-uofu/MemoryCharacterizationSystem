procedure(draw_0(px py)
	dbCreatePolygon(cvID calque1 list(px:py px:py+100 px+80:py+100 px+60:py+80 px+20:py+80 px+20:py+20));; coin haut gauche
	dbCreatePolygon(cvID calque1 list(px:py px+80:py px+80:py+100 px+60:py+80 px+60:py+20 px+20:py+20));; coin bas droite
)

procedure(draw_1(px py)
	dbCreatePolygon(cvID calque1 list(px:py px:py+100 px+20:py+100 px+20:py))
)

procedure(draw_2(px py)
	dbCreatePolygon(cvID calque1 list(px:py px:py+60 px+60:py+60 px+60:py+80 px:py+80 px:py+100 px+80:py+100 px+80:py+40 px+20:py+40 px+20:py+20 px+80:py+20 px+80:py))
)

procedure(draw_3(px py)
	dbCreatePolygon(cvID calque1 list(px:py px:py+20 px+40:py+20 px+40:py+40 px:py+40 px:py+60 px+40:py+60 px+40:py+80 px:py+80 px:py+100 px+60:py+100 px+60:py))
)

procedure(draw_4(px py)
	dbCreatePolygon(cvID calque1 list(px:py+40 px:py+100 px+20:py+100 px+20:py+60 px+40:py+60 px+40:py+100 px+60:py+100 px+60:py px+40:py px+40:py+40))
)

procedure(draw_5(px py)
	dbCreatePolygon(cvID calque1 list(px+80:py px+80:py+60 px+20:py+60 px+20:py+80 px+80:py+80 px+80:py+100 px:py+100 px:py+40 px+60:py+40 px+60:py+20 px:py+20 px:py))
)

procedure(draw_6(px py)
	dbCreatePolygon(cvID calque1 list(px:py px:py+100 px+60:py+100 px+60:py+80 px+20:py+80 px+20:py+60 px+60:py+60 px+40:py+40 px+20:py+40 px+20:py+20))
	dbCreatePolygon(cvID calque1 list(px:py px+60:py px+60:py+60 px+40:py+40 px+40:py+20 px+20:py+20));; coin bas droite
)

procedure(draw_7(px py)
	dbCreatePolygon(cvID calque1 list(px:py+80 px:py+100 px+60:py+100 px+60:py+60 px+80:py+60 px+80:py+40 px+60:py+40 px+60:py px+40:py px+40:py+40 px+20:py+40 px+20:py+60 px+40:py+60 px+40:py+80))
)

procedure(draw_8(px py)
	dbCreatePolygon(cvID calque1 list(px:py px:py+100 px+60:py+100 px+60:py px:py px+20:py+20 px+40:py+20 px+40:py+80 px+20:py+80 px+20:py+60 px+40:py+60 px+40:py+40 px+20:py+40 px+20:py+20))
)

procedure(draw_9(px py)
	dbCreatePolygon(cvID calque1 list(px+60:py+100 px+60:py px:py px:py+20 px+40:py+20 px+40:py+40 px:py+40 px+20:py+60 px+40:py+60 px+40:py+80))
	dbCreatePolygon(cvID calque1 list(px+60:py+100 px:py+100 px:py+40 px+20:py+60 px+20:py+80 px+40:py+80))
)

procedure(draw_10(px py)
	draw_1(px py)
	draw_0(px+40 py)
)

procedure(s1(px py)
	dbCreatePolygon(cvID calque1 list(px:py px:py+50 px+10:py+50 px+10:py))
)

procedure(s2(px py)
	dbCreatePolygon(cvID calque1 list(px:py px:py+30 px+30:py+30 px+30:py+40 px:py+40 px:py+50 px+40:py+50 px+40:py+20 px+10:py+20 px+10:py+10 px+40:py+10 px+40:py))
)

procedure(s3(px py)
	dbCreatePolygon(cvID calque1 list(px:py px:py+10 px+20:py+10 px+20:py+20 px:py+20 px:py+30 px+20:py+30 px+20:py+40 px:py+40 px:py+50 px+30:py+50 px+30:py))
)

procedure(s4(px py)
	dbCreatePolygon(cvID calque1 list(px:py+20 px:py+50 px+10:py+50 px+10:py+30 px+20:py+30 px+20:py+50 px+30:py+50 px+30:py px+20:py px+20:py+20))
)

procedure(s5(px py)
	dbCreatePolygon(cvID calque1 list(px+40:py px+40:py+30 px+10:py+30 px+10:py+40 px+40:py+40 px+40:py+50 px:py+50 px:py+20 px+30:py+20 px+30:py+10 px:py+10 px:py))
)

procedure(s6(px py)
	dbCreatePolygon(cvID calque1 list(px:py px:py+50 px+30:py+50 px+30:py+40 px+10:py+40 px+10:py+30 px+30:py+30 px+20:py+20 px+10:py+20 px+10:py+10))
	dbCreatePolygon(cvID calque1 list(px:py px+30:py px+30:py+30 px+20:py+20 px+20:py+10 px+10:py+10))
)

procedure(s7(px py)
	dbCreatePolygon(cvID calque1 list(px:py+40 px:py+50 px+30:py+50 px+30:py+30 px+40:py+30 px+40:py+20 px+30:py+20 px+30:py px+20:py px+20:py+20 px+10:py+20 px+10:py+30 px+20:py+30 px+20:py+40))
)

procedure(sDigitl(i px py)
	if((i==1) s1(px-145+32.5 py+70+15))
	if((i==2) s2(px-145+22.5 py+70+15))
	if((i==3) s3(px-145+22.5 py+70+15))
	if((i==4) s4(px-145+22.5 py+70+15))
	if((i==5) s5(px-145+22.5 py+70+15))
	if((i==6) s6(px-145+22.5 py+70+15))
	if((i==7) s7(px-145+17.5 py+70+15))
)

procedure(sDigitr(i px py)
	if((i==1) s1(px+72.5+32.5 py+72.5+15))
	if((i==2) s2(px+72.5+22.5 py+72.5+15))
	if((i==3) s3(px+72.5+22.5 py+72.5+15))
	if((i==4) s4(px+72.5+22.5 py+72.5+15))
	if((i==5) s5(px+72.5+22.5 py+72.5+15))
	if((i==6) s6(px+72.5+22.5 py+72.5+15))
	if((i==7) s7(px+72.5+17.5 py+72.5+15))
)

procedure(drawDigit(i px py)
	if((i==0) draw_0(px py))
	if((i==1) draw_1(px py))
	if((i==2) draw_2(px py))
	if((i==3) draw_3(px py))
	if((i==4) draw_4(px py))
	if((i==5) draw_5(px py))
	if((i==6) draw_6(px py))
	if((i==7) draw_7(px py))
	if((i==8) draw_8(px py))
	if((i==9) draw_9(px py))
)

procedure(drawNumber(i px py)

	g=round(i/1000000)
	f=round((i-g*1000000)/100000)
	e=round((i-g*1000000-f*100000)/10000)
	d=round((i-g*1000000-f*100000-e*10000)/1000)
	c=round((i-g*1000000-f*100000-e*10000-d*1000)/100)
	b=round((i-g*1000000-f*100000-e*10000-d*1000-c*100)/10)
	a=i-g*1000000-f*100000-e*10000-d*1000-c*100-b*10

	oa=(nth a '(100 40 100 80 80 100 80 100 80 80))
	ob=(nth b '(100 40 100 80 80 100 80 100 80 80))
	oc=(nth c '(100 40 100 80 80 100 80 100 80 80))
	od=(nth d '(100 40 100 80 80 100 80 100 80 80))
	oe=(nth e '(100 40 100 80 80 100 80 100 80 80))
	of=(nth f '(100 40 100 80 80 100 80 100 80 80))
	og=(nth g '(100 40 100 80 80 100 80 100 80 80))

	if((i<10) drawDigit(i px py))
	if((i==10) draw_10(px py))
	if((and i>10 i<100) then
			drawDigit(b px py)
			drawDigit(a px+ob py)
			)
	if((and i>=100 i<1000) then 
			drawDigit(c px py)
			drawDigit(b px+oc py)
			drawDigit(a px+ob+oc py)
			)
	if((and i>=1000 i<10000) then 
			drawDigit(d px py)
			drawDigit(c px+od py)
			drawDigit(b px+oc+od py)
			drawDigit(a px+ob+oc+od py)
			)
	if((and i>=10000 i<100000) then 
			drawDigit(e px py)
			drawDigit(d px+oe py)
			drawDigit(c px+od+oe py)
			drawDigit(b px+oc+od+oe py)
			drawDigit(a px+ob+oc+od+oe py)
			)
	if((and i>=100000 i<1000000) then 
			drawDigit(f px py)
			drawDigit(e px+of py)
			drawDigit(d px+oe+of py)
			drawDigit(c px+od+oe+of py)
			drawDigit(b px+oc+od+oe+of py)
			drawDigit(a px+ob+oc+od+oe+of py)
			)
	if((and i>=1000000 i<10000000) then 
			drawDigit(g px py)
			drawDigit(f px+og py)
			drawDigit(e px+of+og py)
			drawDigit(d px+oe+of+og py)
			drawDigit(c px+od+oe+of+og py)
			drawDigit(b px+oc+od+oe+of+og py)
			drawDigit(a px+ob+oc+od+oe+of+og py)
			)



)
