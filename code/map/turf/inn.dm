turf
	inn
		ignore = 1
		step_sounds = "wood"
		floor/icon='icons/map/turf/inn/floor.dmi'
		wall
			density=1
			icon='icons/map/turf/inn/wall.dmi'
			bottom
				left/icon_state="bottom_left"
				middle/icon_state="bottom"
				right/icon_state="bottom_right"
				door/icon_state="bottom_door"
			middle
				left/icon_state="left"
				middle/icon_state="middle"
				right/icon_state="right"
				door/icon_state="middle_door"
			top
				left/icon_state="top_left"
				middle/icon_state="top"
				right/icon_state="top_right"
		roof
			layer = TURF_LAYER + 1
			icon='icons/map/turf/inn/roof.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			middle/icon_state="middle"
			bottom_right/icon_state="bottom_right"
			bottom_left/icon_state="bottom_left"

		rail
			icon='icons/map/turf/inn/rail.dmi'
			plane = 0
			layer = OVER_LAYER + 0.5

			top_left/icon_state="top_left"
			top_right/icon_state="top_right"
			left
				icon_state="left"
			corner_left
				icon_state = "corner_left"
			corner_right
				icon_state = "corner_right"
			right
				icon_state="right"


			middle/icon_state="middle"
			bottom_left/icon_state="bottom_left"
			bottom_right/icon_state="bottom_right"
			left_joiner/icon_state="left_joiner"
			left_joiner_inner/icon_state="left_joiner_inner"
			right_joiner/icon_state="right_joiner"
			right_joiner_inner/icon_state="right_joiner_inner"
			ignore = 1

			Align(list/images_to_underlay = null)
				if(images_to_underlay)
					underlayed = images_to_underlay

				if(underlayed)
					for(var/image/I in underlayed)
						I.loc = src
						underlays.Add(I)
					for(var/N in underlayed)
						if(!(N in underlays))
							underlays.Add(N)