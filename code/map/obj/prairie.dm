obj
	map
		prairie
			crops
				icon = 'icons/map/turf/prairie/crops.dmi'
				corn
					icon_state = "corn"
				tomato
					icon_state = "tomato"
				lettuce
					icon_state = "lettuce"
				pumpkin
					icon_state = "pumpkin"
			waterwell
				icon='icons/map/obj/prairie/waterwell.dmi'
				icon_state="waterwell"
				density=1
				New()
					..()
					var/image/I=image(icon,src,"top",OVER_LAYER)
					overlays+=I

			cottage
				icon='icons/map/obj/prairie/cottage.dmi'
				icon_state="cottage"
				pixel_x=-64
				pixel_y=-48
				var/list/densities = list()
				New()
					var/image/I=image(icon,src,"top",OVER_LAYER)
					overlays+=I


			bush
				//pixel_y=8
				bush_1
					icon='icons/map/obj/prairie/bush_1.dmi'
					icon_state="bush"
				bush_2
					icon='icons/map/obj/prairie/bush_2.dmi'
					icon_state="bush"
					density=1
				flowers
					icon='icons/map/obj/prairie/flowers.dmi'
					icon_state="flowers"

			rock
				rock_1
					icon='icons/map/obj/prairie/rock_1.dmi'
					icon_state="rock"
					density=1
				rock_2
					icon='icons/map/obj/prairie/rock_2.dmi'
					icon_state="rock"
					density=1
				rock_3
					icon='icons/map/obj/prairie/rock_3.dmi'
					icon_state="rock"
					density=1
					New()
						..()
						var/image/I=image(icon,src,"top",OVER_LAYER)
						overlays+=I
			lilypad
				lilypad_1
					icon='icons/map/obj/prairie/lilypad_1.dmi'
					icon_state="lilypad"
				lilypad_2
					icon='icons/map/obj/prairie/lilypad_2.dmi'
					icon_state="lilypad"