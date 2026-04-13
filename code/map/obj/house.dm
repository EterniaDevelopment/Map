mob/var/tmp
	booksubmitcooldown

obj
	map
		house
			bath
				icon = 'icons/map/obj/house/bath.dmi'

			big_table
				icon = 'icons/map/obj/house/big_table.dmi'
				bound_width = 128
				bound_height = 96
				density = TRUE

			chess_table
				icon = 'icons/map/obj/house/chess_table.dmi'
				bound_width = 64
				density = TRUE

			bed
				large_one
					icon = 'icons/map/obj/house/large_bed1.dmi'
					density = FALSE
				large_two
					icon = 'icons/map/obj/house/large_bed2.dmi'
					density = FALSE
				vertical
					icon='icons/map/obj/house/bed_v.dmi'
					density=0
					bed_1/icon_state="bed_1"
					bed_1/blue/icon_state="bed_1_blue"
					bed_2/icon_state="bed_2"
				horizontal
					icon='icons/map/obj/house/bed_h.dmi'
					density=0
					bed_1/icon_state="bed_1"
					bed_2/icon_state="bed_2"
					New()
						..()
						new/obj/map/dense(locate(x+1,y,z))
						var/image/I=image(icon,src,"[icon_state]_top",OVER_LAYER)
						I.pixel_y=32
						overlays+=I
					Del()
						for(var/obj/map/dense/D in locate(x+1, y, z))
							del(D)
						..()
			bookshelf
				icon='icons/map/obj/house/bookshelf.dmi'
				icon_state="bookshelf"
				density=1
				pixel_y=8
				var/toptype = ""
				bookshelf1
					icon_state="bookshelf1"
					toptype="1"
				bookshelf2
					icon_state="bookshelf2"
					toptype="2"
				bookshelf3
					icon_state="bookshelf3"
					toptype="3"
				bookshelf4
					icon_state="bookshelf4"
					toptype="4"

			cabinet
				icon='icons/map/obj/house/cabinet.dmi'
				icon_state="cabinet"
				density=1
				pixel_y=8
				New()
					..()
					new/obj/map/dense(locate(x+1,y,z))
					var/image/I=image(icon,src,"top",OVER_LAYER)
					overlays+=I
				Del()
					for(var/obj/map/dense/D in locate(x+1, y, z))
						del(D)
					..()
			cabinetempty
				icon='icons/map/obj/house/cabinet.dmi'
				icon_state="cabinetempty"
				density=1
				pixel_y=8
				New()
					..()
					new/obj/map/dense(locate(x+1,y,z))
					var/image/I=image(icon,src,"topempty",OVER_LAYER)
					overlays+=I
				Del()
					for(var/obj/map/dense/D in locate(x+1, y, z))
						del(D)
					..()
			dresser
				icon='icons/map/obj/house/dresser.dmi'
				icon_state="dresser"
				density=1
				New()
					..()
					var/image/I=image(icon,src,"top",OVER_LAYER)
					overlays+=I
			nightstand
				icon='icons/map/obj/house/nightstand.dmi'
				icon_state="nightstand"
				density=1
			silverware
				icon='icons/map/obj/house/silverware.dmi'
				layer=OBJ_LAYER+0.01
				silverware_1/icon_state="1"
				silverware_2
					icon_state="2"
					pixel_y=12
			dishes
				icon='icons/map/obj/inn/food.dmi'
				layer=OBJ_LAYER+0.01
				beer1/icon_state="1"
				beer2/icon_state="2"
				beer3/icon_state="4"
				milk/icon_state="3"
				emptyplate/icon_state="5"
				fish/icon_state="6"
				turkey/icon_state="7"
				emptybowl/icon_state="8"
				ricebowl/icon_state="9"
				ricedish/icon_state="10"

			sink
				icon='icons/map/obj/house/sink.dmi'
				icon_state="sink"
				density=1
			emptysink
				icon='icons/map/obj/house/sink.dmi'
				icon_state="emptysink"
				density=1
			stool
				icon='icons/map/obj/house/stool.dmi'
				icon_state="stool"
			stove
				icon='icons/map/obj/house/stove.dmi'
				stove_1/icon_state="1"
				stove_2/icon_state="2"
				stove_2out/icon_state="2alt"
				stove_3/icon_state="3"
				stove_4/icon_state="4"
				stove_5/icon_state="5"
				stove_6/icon_state="6"
				stove_7/icon_state="7"
				stove_8
					icon_state="8"
					layer=OVER_LAYER
			table
				icon='icons/map/obj/house/table.dmi'
				icon_state="table"
				density=1
				pixel_y=-16
				New()
					..()
					new/obj/map/dense(locate(x+1,y,z))
					var/image/I=image(icon,src,"top",OVER_LAYER)
					I.pixel_y=32
					overlays+=I
			toilet
				icon='icons/map/obj/house/toilet.dmi'
				icon_state="toilet"
				density=1
			window
				icon='icons/map/obj/house/window.dmi'
				icon_state="window"
				New()
					..()
					var/image/I=image(icon,src,"bottom")
					underlays+=I
			windowdark
				icon='icons/map/obj/house/window.dmi'
				icon_state="windowdark"
				New()
					..()
					var/image/I=image(icon,src,"bottom")
					underlays+=I