/turf/stone_path_sickly
		icon= 'icons/map/turf/sickly/stone_path.dmi'
		path_1/icon_state="1"
		path_2/icon_state="2"
		path_3/icon_state="3"
		path_4/icon_state="4"
		path_5/icon_state="5"
		path_6/icon_state="6"

turf
	forest
		grass_sickly
			icon='icons/map/turf/sickly/grass.dmi'
			name = "Forest Grass"
			grass_1/icon_state="1"
			grass_2/icon_state="2"
			grass_3/icon_state="3"
			grass_4/icon_state="4"
			grass_5/icon_state="5"
			jointag = "grass"

			random
				icon_state = "1"

				New()
					..()
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()

			edge
				icon='icons/map/turf/forest/grass_edge.dmi'

		grass_edge_sickly
			jointag = "grass"
			icon='icons/map/turf/sickly/grass_edge.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			jointag = "grass"
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"
