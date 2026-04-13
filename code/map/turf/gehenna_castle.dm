
turf
	gehenna_castle_int
		step_sounds = "stone"
		ignore = 1
		floor/icon='icons/map/turf/castle/black/floor.dmi'

		roof
			icon='icons/map/turf/gehenna_castle/roof.dmi'
			density=1
			layer=OVER_LAYER
			top_left
				icon_state="top_left"
				density=0
			top
				icon_state="top"
				density=0
			top_right
				icon_state="top_right"
				density=0
			left/icon_state="left"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			door
				icon_state="bottom"
				density=0
			bottom_right/icon_state="bottom_right"
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"

			middle
				icon='icons/map/turf/other/void.dmi'
				icon_state="void"

			jointag = "roof"
			reverse = 1
			noignore = 1

		wall
			density = 1
			icon = 'icons/map/turf/gehenna_castle/wall.dmi'
			icon_state = "middle"

			alt2/icon_state = "middle2"
			alt3/icon_state = "middle3"
			alt4/icon_state = "middle4"
			alt5/icon_state = "middle5"
			alt6/icon_state = "middle6"
			alt8/icon_state = "middle8"
			alt9/icon_state = "middle9"
			alt10/icon_state = "middle10"
			alt11/icon_state = "middle11"
			alt12/icon_state = "middle12"
			alt13/icon_state = "middle13"

			window1/icon_state = "window1"
			window2/icon_state = "window2"

			top1/icon_state = "top5"
			top2/icon_state = "top6"
			top3/icon_state = "top7"

		ledge
			icon = 'icons/map/turf/gehenna_castle/ledge.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"

	gehenna_castle
		step_sounds = "stone"
		roof
			icon = 'icons/map/turf/gehenna_castle/rooftop.dmi'
			icon_state = "middle"
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"

		wall
			density = 1
			icon = 'icons/map/turf/gehenna_castle/wall.dmi'
			icon_state = "middle"

			alt2/icon_state = "middle2"
			alt3/icon_state = "middle3"
			alt4/icon_state = "middle4"
			alt5/icon_state = "middle5"
			alt6/icon_state = "middle6"
			alt8/icon_state = "middle8"
			alt9/icon_state = "middle9"
			alt10/icon_state = "middle10"
			alt11/icon_state = "middle11"
			alt12/icon_state = "middle12"
			alt13/icon_state = "middle13"

			window1/icon_state = "window1"
			window2/icon_state = "window2"

			topledge
				icon_state = "top4"

		ledge
			icon = 'icons/map/turf/gehenna_castle/wall.dmi'
			density = 1
			bottomleft
				icon_state = "bottom_left_ledge"
				alt2/icon_state = "bottom_left_ledge2"
				alt3/icon_state = "bottom_left_ledge3"
			bottom
				icon_state = "bottom_ledge"
				alt2/icon_state = "bottom_ledge2"
				alt3/icon_state = "bottom_ledge3"
			bottomright
				icon_state = "bottom_right_ledge"
				alt2/icon_state = "bottom_right_ledge2"
				alt3/icon_state = "bottom_right_ledge3"
			left
				icon_state = "left_ledge"
				border/icon_state = "left_ledge_border"
			middle
				density = 0
				icon_state = "ledge"
			right
				icon_state = "right_ledge"
				border/icon_state = "right_ledge_border"
			topleft
				icon_state = "top_left_ledge"
				border/icon_state = "top_left_ledge_border"
			top
				icon_state = "top_ledge"
				border/icon_state = "top_ledge_border"
				border2/icon_state = "top_ledge_border2"
				border3/icon_state = "top_ledge_border3"
			topright
				icon_state = "top_right_ledge"
				border/icon_state = "top_right_ledge_border"

		stairs_vertical
			icon = 'icons/map/turf/gehenna_castle/wall.dmi'
			icon_state = "stairs"
			left/icon_state = "stairsL"