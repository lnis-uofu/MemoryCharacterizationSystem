; Technology File custom_LSI
; Generated on Apr 17 13:32:17 2014
;     with @(#)$CDS: virtuoso version 6.1.5 05/04/2012 23:37 (sjfdl054) $


;********************************
; CONTROLS
;********************************
controls(
 techVersion("1.0")

 viewTypeUnits(
 ;( viewType            userUnit       dbuperuu           )
 ;( --------            --------       --------           )
  ( maskLayout     	"_def_"        	1000            )
  ( hierDesign     	"_def_"        	1000            )
 ) ;viewTypeUnits

) ;controls


;********************************
; LAYER DEFINITION
;********************************
layerDefinitions(

 techPurposes(
 ;( PurposeName               Purpose#   Abbreviation )
 ;( -----------               --------   ------------ )
 ;User-Defined Purposes:
  ( mask1                     1                       )
  ( mask2                     2                       )
  ( mask3                     3                       )
 ) ;techPurposes

 techLayers(
 ;( LayerName                 Layer#     Abbreviation )
 ;( ---------                 ------     ------------ )
 ;User-Defined Layers:
  ( BottomElectrode           4          BE    	      )
  ( Oxide      	              5          Ox           )
  ( TopElectrode	      6          TE 	      )
  ( Template                  70         Templ        )
  ( L1                        1          L1           )
  ( L2                        2          L2           )
  ( L3                        3          L3           )
  ( L4                        30         L4           )
  ( L5                        31         L5           )
  ( L6                        53         L6           )
  ( L7                        58         L7           )
  ( L8                        59         L8           )
  ( L9                        61         L9           )
  ( L10                       62         L10          )
  ( L11                       63         L11          )
) ;techLayers

 techLayerPurposePriorities(
 ;layers are ordered from lowest to highest priority
 ;( LayerName                 Purpose    )
 ;( ---------                 -------    )
  ( BottomElectrode           mask1      )
  ( Oxide                     mask2      )
  ( TopElectrode              mask3      )
  ( Template                  drawing    )
  ( L1                        drawing    )
  ( L2                        drawing    )
  ( L3                        drawing    )
  ( L4                        drawing    )
  ( L5                        drawing    )
  ( L6                        drawing    )
  ( L7                        drawing    )
  ( L8                        drawing    )
  ( L9                        drawing    )
  ( L10                       drawing    )
  ( L11                       drawing    )
 ) ;techLayerPurposePriorities

 techDisplays(
 ;( LayerName        Purpose       Packet                Vis Sel Con2ChgLy DrgEnbl Valid )
 ;( ---------        -------       ------                --- --- --------- ------- ----- )
  ( BottomElectrode  mask1         Packet1                t t t t t )
  ( Oxide            mask2         Packet2                t t t t t )
  ( TopElectrode     mask3         Packet3                t t t t t )
  ( Template         drawing       Packet29               t t t t t )
  ( L1               drawing       Packet13               t t t t t )
  ( L2               drawing       Packet12               t t t t t )
  ( L3               drawing       Packet14               t t t t t )
  ( L4               drawing       Packet15               t t t t t )
  ( L5               drawing       Packet16               t t t t t )
  ( L6               drawing       Packet17               t t t t t )
  ( L7               drawing       Packet18               t t t t t )
  ( L8               drawing       Packet19               t t t t t )
  ( L9               drawing       Packet20               t t t t t )
  ( L10              drawing       Packet21               t t t t t )
  ( L11              drawing       Packet22               t t t t t )
 ) ;techDisplays

) ;layerDefinitions