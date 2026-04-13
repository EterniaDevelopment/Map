turf
	mountain
		rock
			icon='icons/map/turf/beach/cliff_top.dmi'
			icon_state = "rock"

		cliff_rock
			density = 1
			top
				icon='icons/map/turf/beach/cliff_top.dmi'
				left
					top/icon_state="top_left_rock"
					middle/icon_state="left_rock"
					bottom/icon_state="bottom_left_rock"
				middle
					top/icon_state="top_rock"
					bottom/icon_state="bottom_rock"
				right
					top/icon_state="top_right_rock"
					middle/icon_state="right_rock"
					bottom/icon_state="bottom_right_rock"
				corner
					density = 0
					topleft/icon_state = "tl"
					topright/icon_state = "tr"
					bottomleft/icon_state = "bl"
					bottomright/icon_state = "br"
			side
				icon='icons/map/turf/beach/cliff_side.dmi'
				bottom_rock
					left/icon_state="bottom_left_rock"
					middle/icon_state="bottom_rock"
					right/icon_state="bottom_right_rock"
				bottom
					left/icon_state="bottom_left"
					middle/icon_state="bottom"
					right/icon_state="bottom_right"
				middle
					left/icon_state="left"
					middle/icon_state="middle"
					right/icon_state="right"
		cliff_stairs
			icon='icons/map/turf/beach/cliff_side.dmi'
			bottom
				icon_state = "stairs"
			top
				icon_state = "stairs_top"

		cave
			icon='icons/map/turf/beach/cliff_side.dmi'
			icon_state = "cave"

obj/map
	mountain
		waterfall
			icon = 'icons/map/turf/beach/waterfall.dmi'
			density = 1
			top
				icon_state = "1"
			middle
				icon_state = "2"
			middle2
				icon_state = "3"
			bottom
				icon_state = "4"

		rocks
			icon = 'icons/map/obj/beach/rocks.dmi'
			density = 1
			rock1/icon_state = "rock1"
			rock2/icon_state = "rock2"
			rock3/icon_state = "rock3"
			New()
				..()
				OrientLayer(MOB_LAYER)