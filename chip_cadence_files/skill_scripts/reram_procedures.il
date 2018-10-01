procedure(placeMaskOutline(x_orig y_orig)
	
	dbCreateInst(cvID dbOpenCellViewByType("reram_library_rev4" "MaskOutline" "layout") nil list(x_orig y_orig) "R0")

)

procedure(placeArrows(x_orig y_orig)
	
	dbCreateInst(cvID dbOpenCellViewByType("reram_library_rev4" "Guide_tests" "layout") nil list(x_orig y_orig) "R0")

)

procedure(placeAlignMarkers(x_orig y_orig)
	
	dbCreateInst(cvID dbOpenCellViewByType("reram_library_rev4" "3NIV" "layout") nil list(x_orig y_orig) "R0")

)

procedure(placeDie(x_num y_num spacing x_orig y_orig offset)
	
	for(i 0 x_num-1
		for(j 0 y_num-1
			dbCreateInst(cvID dbOpenCellViewByType("reram_library_rev4" "chip" "layout") nil list(x_orig+offset+i*spacing y_orig+offset+j*spacing) "R0")
		)
	)
)

procedure(placeDicingCross(x_num y_num spacing x_orig y_orig offset)
	
	for(i 0 x_num-1
		for(j 0 y_num-1
			dbCreateInst(cvID dbOpenCellViewByType("reram_library_rev4" "DicingCross" "layout") nil list(x_orig+offset+i*spacing y_orig+offset+j*spacing) "R0")
		)
	)
)

procedure(placeAll()

	cvID=geGetWindowCellView()
	placeMaskOutline(0 0)
	placeArrows(0 0)
	placeAlignMarkers(-42000 250)
	placeAlignMarkers(42000 250)
	placeDie(8 8 10100 -40000 -40000 50)
	placeDicingCross(9 9 10100 -40000 -40000 0)
)