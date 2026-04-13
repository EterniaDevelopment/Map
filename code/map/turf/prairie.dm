turf
	cliff_stairs
		icon = 'icons/map/turf/prairie/cliff_stairs.dmi'
		desert
			icon_state = "desert"
		snow
			icon_state = "snow"
		prairie
			icon_state = "prairie"
		grass
			icon_state = "grass"
	prairie
		crops
			icon = 'icons/map/turf/prairie/crops.dmi'
			jointagone = list("grass", "snow")
			jointag = "cropfield"
			width
				icon_state = "dirt_width"
			length
				icon_state = "dirt_length"

			random
				icon_state = "dirt_width"
				New()
					..()
					if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag && T.type != type)
							T.Align()
					if(!(x % 2)) // even
						new /turf/prairie/crops/width(src)
					else
						new /turf/prairie/crops/length(src)

		grass
			icon='icons/map/turf/prairie/grass.dmi'
			icon_state="grass"
			jointag = "prairie grass"
			jointagone = list("grass", "cliff", "ocean", "dirt", "road", "swamp")

			Extend(direction)
				var/list/U = underlayed
				if(direction == "center")
					new /turf/prairie/grass(src)
					return

				var/turf/t = find_most_abundant(src, 1)
				var/turf/T = new/turf/prairie/grass/edge(src)
				T.underlayed = U
				T.icon_state = direction
				if(istype(t, /turf/prairie/water))
					T.icon = 'icons/map/turf/prairie/water_edge.dmi'
					density = 1
				else
					density = 0

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
					var/image/I = image(NT.icon,null,NT.icon_state,NT.layer,NT.dir)
					if(!T.underlayed) T.underlayed = list()
					T.underlayed += I
					I.loc = T
					T.underlays.Add(I)

			random
				New()
					..()
					if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()

			edge/icon = 'icons/map/turf/prairie/grass_edge.dmi'

		dirt
			icon='icons/map/turf/prairie/dirt.dmi'
			icon_state="dirt"

			random
				New()
					..()
					if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()


		grass_edge
			jointag = "prairie grass"
			icon='icons/map/turf/prairie/grass_edge.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"
		water
			icon='icons/map/turf/prairie/water.dmi'
			icon_state="water"
			density=1

			random
				New()
					..()
					if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()


		water_edge
			icon='icons/map/turf/prairie/water_edge.dmi'
			density=1
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"
		cliff
			top
				icon='icons/map/turf/prairie/cliff_top.dmi'
				left
					top/icon_state="top_left"
					middle/icon_state="middle_left"
					bottom/icon_state="bottom_left"
				middle
					top/icon_state="top_middle"
					bottom/icon_state="bottom_middle"
				right
					top/icon_state="top_right"
					middle/icon_state="middle_right"
					bottom/icon_state="bottom_right"
			side
				icon='icons/map/turf/prairie/cliff_side.dmi'
				density=1
				bottom
					left/icon_state="bottom_left"
					middle/icon_state="bottom_middle"
					right/icon_state="bottom_right"
				middle
					left/icon_state="left"
					middle/icon_state="middle"
					right/icon_state="right"
				edge
					left/icon_state="left_edge"
					middle/icon_state="middle_edge"
					right/icon_state="right_edge"