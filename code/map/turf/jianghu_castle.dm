turf
	jianghu_castle
		step_sounds = "stone"
		ignore = 1

		marblefloor
			icon = 'icons/map/turf/jianghu_castle/floor.dmi'
			icon_state = "floor"
			reflection1/icon_state = "reflect1"
			reflection2/icon_state = "reflect2"
			reflection3/icon_state = "reflect3"

		roof
			icon='icons/map/turf/jianghu_castle/roof.dmi'
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

		wall_in
			density = 1
			icon = 'icons/map/turf/jianghu_castle/wall_in.dmi'

			left/icon_state = "left"
			middle/icon_state = "middle"

			top
				left/icon_state = "top_left"
				middle/icon_state = "top"
		wall_out
			density = 1
			icon = 'icons/map/turf/jianghu_castle/wall_out.dmi'

			left/icon_state = "left"
			middle/icon_state = "middle"
			right/icon_state = "right"

			top
				left/icon_state = "top_left"
				middle/icon_state = "top"
				right/icon_state = "top_right"


obj
	map
		jianghu_castle

			redpillar
				icon = 'icons/map/turf/jianghu_castle/pillar_red.dmi'
				top
					density = 0
					layer = MOB_LAYER + 1

					left/icon_state = "topleft"
					middle/icon_state = "top"
					right/icon_state = "topright"
					pillar/icon_state = "toppillar"

				middle
					layer = MOB_LAYER + 1
					left/icon_state = "left"
					middle/icon_state = "middle"
					right/icon_state = "right"

				bottom
					density = 1
					left/icon_state = "bottomleft"
					middle/icon_state = "bottom"
					right/icon_state = "bottomright"

			pillar
				icon = 'icons/map/turf/jianghu_castle/pillar.dmi'
				top
					layer = MOB_LAYER + 1
					left/icon_state = "topleft"
					middle/icon_state = "top"
					right/icon_state = "topright"
					pillar/icon_state = "toppillar"

				middle
					layer = MOB_LAYER + 1
					left/icon_state = "left"
					middle/icon_state = "middle"
					right/icon_state = "right"

				bottom
					density = 1
					left/icon_state = "bottomleft"
					middle/icon_state = "bottom"
					right/icon_state = "bottomright"