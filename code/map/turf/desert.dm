turf
	desert
		sand
			icon='icons/map/turf/desert/sand.dmi'
			sand_1/icon_state="1"
			sand_2/icon_state="2"

			random
				a/icon_state = "1"
				b/icon_state = "2"
				New()
					..()
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()

		cliff
			top
				icon='icons/map/turf/desert/cliff_top.dmi'
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
				edge
					left/icon_state="left"
					right/icon_state="right"
			side
				icon='icons/map/turf/desert/cliff_side.dmi'
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