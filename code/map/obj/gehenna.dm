obj
	map
		gehenna
			hut
				icon='icons/map/obj/gehenna/buildings.dmi'
				var/list/densities = list()

				big
					pixel_x = -16
					hut1/icon_state = "hut1"
					hut2/icon_state = "hut2"

				small
					hut3/icon_state = "hut3"
					hut4/icon_state = "hut4"

				New()
					..()
					for(var/turf/T in block(locate(x,y,z), locate(x+2,y+2,z)))
						densities.Add(new /obj/map/dense(T))

				Del()
					for(var/obj/map/dense/D in densities)
						del(D)
					..()

		gehenna_castle
			pillar
				icon = 'icons/map/obj/gehenna/pillar.dmi'
				icon_state = "pillar"
				density = 1
				pixel_x = -7
				layer = HUD_LAYER
				New()
					..()
					new /obj/map/dense(get_step(src, NORTH))


			Brazier
				name = "Lit Brazier"
				icon = 'icons/map/obj/gehenna/brazier.dmi'
				icon_state = "active"
				density = 1
				pixel_y = 8
				off
					name = "Unlit Brazier"
					icon_state = "off"


