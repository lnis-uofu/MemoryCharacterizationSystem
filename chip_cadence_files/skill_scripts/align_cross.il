coord=list(0 410 820 1230 1640 2050 2460 2870 3280 3690 4100)

procedure(align_cross_l(px py numberOfLayers)
	n=numberOfLayers

	for(i 0 n-1
		for(j 0 n-1
			if((i+j<=n-1) dbCreateInst(cvID dbOpenCellViewByType("ReRAM" "align_cross1" "layout") nil list(-(nth i coord)+px -(nth j coord)+py) "R0"))
		)	
	)
	for(i 0 n-1
		drawNumber(i+1 -(nth n-i coord)+50+px -(nth i coord)-50+py)
	)
	for(i 0 n-1
		for(j 0 n-1
			if((i+j<=n-1) sDigitl(i+j+2 -(nth i coord)+px -(nth j coord)+py))
		)	
	)
)

procedure(align_cross_r(px py numberOfLayers)
	n=numberOfLayers

	for(i 0 n-1
		for(j 0 n-1
			if((i+j<=n-1) dbCreateInst(cvID dbOpenCellViewByType("ReRAM" "align_cross3" "layout") nil list((nth i coord)+px -(nth j coord)+py) "R0"))
		)
	)
	for(i 0 n-1
		drawNumber(i+1 (nth n-i coord)-50+px -(nth i coord)-50+py)
	)
	for(i 0 n-1
		for(j 0 n-1
			if((i+j<=n-1) sDigitr(i+j+2 (nth i coord)+px -(nth j coord)+py))
		)	
	)
)

procedure(align_cross2(px py numberOfLayers sens)
	n=numberOfLayers
	if((sens==0)
	for(i 0 n-1
		for(j 0 n-1
			if((i+j<=n-1) dbCreateInst(cvID dbOpenCellViewByType("ReRAM" "align_cross2" "layout") nil list((nth i coord)+px -(nth j coord)+py) "R0"))
		)
	))

	if((sens==1)
	for(i 0 n-1
		for(j 0 n-1
			if((i+j<=n-1) dbCreateInst(cvID dbOpenCellViewByType("ReRAM" "align_cross2" "layout") nil list(-(nth i coord)+px -(nth j coord)+py) "R0"))
		)
	))
)
