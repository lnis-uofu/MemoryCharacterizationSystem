cvID=geGetWindowCellView()

calques=list(list("BottomElectrode" "mask1") list("Oxide1" "mask2") list("Metal2" "mask3"))

procedure(drawPix(px py col res_um)
	pixel=list(px:py px+res_um:py px+res_um:py+res_um px:py+res_um)
	dbCreatePolygon(cvID (nth col calques) pixel)
)

procedure(picture(px py largeur hauteur ImR res_um)
	for(i 0 hauteur-1
		for(j 0 largeur-1
			if(((nth j+i*largeur ImR)==1) drawPix(px+j*res_um py+i*res_um 0 res_um ))
		)
	)
)

procedure(picture_inv(px py largeur hauteur ImR res_um)
	for(i 0 hauteur-1
		for(j 0 largeur-1
			if(((nth j+i*largeur ImR)==1) drawPix(px+j*res_um py-i*res_um 0 res_um ))
		)
	)
)