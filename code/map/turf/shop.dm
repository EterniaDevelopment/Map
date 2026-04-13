turf
	shop
		ignore = 1
		wall
			density=1
			icon='icons/map/turf/shop/wall.dmi'
			bottom
				left/icon_state="bottom_left"
				middle/icon_state="bottom"
				right/icon_state="bottom_right"
				door
					icon='icons/map/turf/shop/door.dmi'
					open/icon_state="open"
					close/icon_state="close"
			middle
				left/icon_state="left"
				middle/icon_state="middle"
				door/icon_state="door"
				right/icon_state="right"
			top
				left/icon_state="top_left"
				middle/icon_state="top"
				right/icon_state="top_right"
		roof
			density=1
			icon='icons/map/turf/shop/roof.dmi'
			middle
				left/icon_state="left"
				middle/icon_state="middle"
				right/icon_state="right"
			top
				left/icon_state="top_left"
				middle/icon_state="top"
				right/icon_state="top_right"
	shop_int
		ignore = 1
		floor/icon='icons/map/turf/shop_int/floor.dmi'
		wall
			density=1
			icon='icons/map/turf/shop_int/wall.dmi'
			bottom
				left/icon_state="bottom_left"
				middle/icon_state="bottom"
				right/icon_state="bottom_right"
			middle
				left/icon_state="left"
				middle/icon_state="middle"
				right/icon_state="right"
			top
				left/icon_state="top_left"
				middle/icon_state="top"
				right/icon_state="top_right"

		rug
			icon='icons/map/turf/shop_int/rug.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			reverse = 1
			noignore = 1
			jointag = "dirt"

			Extend(direction)
				switch(direction)
					if("tl") direction = "top_left"
					if("tr") direction = "top_right"
					if("bl") direction = "bottom_left"
					if("br") direction = "bottom_right"
				var/list/U = underlayed
				if(direction == "center")
					new /turf/shop_int/rug/middle(src)
					return

				var/turf/T = new/turf/shop_int/rug/edge(src)
				T.underlayed = U
				T.icon_state = direction

				if(T.underlayed)
					for(var/image/I in T.underlayed)
						I.loc = T
						T.underlays.Add(I)
					for(var/N in T.underlayed)
						if(!(N in T.underlays))
							T.underlays.Add(N)

				// Safety check:
				if(!length(T.underlays))
					var/turf/NT = find_most_abundant(T)
					if(NT)
						var/image/I = image(NT.icon,null,NT.icon_state,NT.layer,NT.dir)
						if(!T.underlayed) T.underlayed = list()
						T.underlayed += I
						I.loc = T
						T.underlays.Add(I)

			random
				icon_state = "middle"
				New()
					..()
					if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()
					Align()

			edge

		stairs
			icon='icons/map/turf/shop_int/stairs.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			rail
				icon_state="rail"
				density=1