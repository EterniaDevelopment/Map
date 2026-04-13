turf
	gehenna_house
		step_sounds = "stone"
		ignore = 1

		wall
			density=1
			icon='icons/map/turf/gehenna_house/wall.dmi'
			icon_state = "bottom"

			bottom/icon_state = "bottom2"

		stone
			wall
				density=1
				icon='icons/map/turf/gehenna_house/stonewall.dmi'
				bottom
					left/icon_state="bottom_left"
					middle/icon_state="bottom"
					right/icon_state="bottom_right"
				middle
					left/icon_state="left"
					middle/icon_state="middle"
					right/icon_state="right"
					window1/icon_state="window1"
					window2/icon_state="window2"
			roof
				icon='icons/map/turf/gehenna_house/roof.dmi'
				top_left/icon_state="top_left"
				top/icon_state="top"
				top_right/icon_state="top_right"
				left/icon_state="left"
				right/icon_state="right"
				middle/icon_state="middle"
				bottom_right/icon_state="bottom_right"
				bottom/icon_state="bottom"
				bottom_left/icon_state="bottom_left"

		stairs
			icon = 'icons/map/turf/gehenna_house/stairs.dmi'
			icon_state = "middle"