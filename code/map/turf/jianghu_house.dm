turf
	jianghu_house
		step_sounds = "stone"
		ignore = 1

		wall
			density=1
			icon='icons/map/turf/jianghu_house/wall.dmi'

			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			middle/icon_state="middle"
			bottom_right/icon_state="bottom_right"
			bottom/icon_state="bottom"
			bottom_left/icon_state="bottom_left"
		wall_red
			density=1
			icon='icons/map/turf/jianghu_house/wall_red.dmi'

			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			middle/icon_state="middle"
			bottom_right/icon_state="bottom_right"
			bottom/icon_state="bottom"
			bottom_left/icon_state="bottom_left"
		wall_green
			density=1
			icon='icons/map/turf/jianghu_house/wall_green.dmi'

			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			middle/icon_state="middle"
			bottom_right/icon_state="bottom_right"
			bottom/icon_state="bottom"
			bottom_left/icon_state="bottom_left"
		wall_blue
			density=1
			icon='icons/map/turf/jianghu_house/wall_blue.dmi'

			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			middle/icon_state="middle"
			bottom_right/icon_state="bottom_right"
			bottom/icon_state="bottom"
			bottom_left/icon_state="bottom_left"

		wall_bottom_wood
			density=1
			icon='icons/map/turf/jianghu_house/wall.dmi'
			bottom_right/icon_state="wood_bottom_right"
			bottom/icon_state="wood_bottom"
			bottom_left/icon_state="wood_bottom_left"

		wall_top_wood
			density=1
			icon='icons/map/turf/jianghu_house/wall.dmi'
			bottom_right/icon_state="wood_top_right"
			bottom/icon_state="wood_top"
			bottom_left/icon_state="wood_top_left"

		wall_bottom_stone
			density=1
			icon='icons/map/turf/jianghu_house/wall.dmi'
			bottom_right/icon_state="stone_bottom_right"
			bottom/icon_state="stone_bottom"
			bottom_left/icon_state="stone_bottom_left"

		gold_decorations
			density=1
			icon='icons/map/turf/jianghu_house/wall.dmi'
			left/icon_state = "gold_left"
			middle/icon_state = "gold_middle"
			right/icon_state = "gold_right"

		emblem
			density=1
			icon='icons/map/turf/jianghu_house/wall.dmi'
			icon_state = "emblem"

		roof
			step_sounds = null
			density = 1
			icon = 'icons/map/turf/jianghu_house/roof.dmi'
			layer = MOB_LAYER + 1

			left_edge
				density = 0
				icon_state = "left_edge"
				top/icon_state = "left_edge_top"
			right_edge
				density = 0
				icon_state = "right_edge"
				top/icon_state = "right_edge_top"

			y1
				x1/icon_state = "0,0"
				x2/icon_state = "1,0"
				x3/icon_state = "2,0"
				x4/icon_state = "3,0"
				x5/icon_state = "4,0"
				x6/icon_state = "5,0"
			y2
				x1/icon_state = "0,1"
				x2/icon_state = "1,1"
				x3/icon_state = "2,1"
				x4/icon_state = "3,1"
				x5/icon_state = "4,1"
				x6/icon_state = "5,1"
			y3
				x1/icon_state = "0,2"
				x2/icon_state = "1,2"
				x3/icon_state = "2,2"
				x4/icon_state = "3,2"
				x5/icon_state = "4,2"
				x6/icon_state = "5,2"
			y4
				density = 0
				x1/icon_state = "0,3"
				x2/icon_state = "1,3"
				x3/icon_state = "2,3"
				x4/icon_state = "3,3"
				x5/icon_state = "4,3"
				x6/icon_state = "5,3"
			y5
				density = 0
				x3/icon_state = "2,4"
				x4/icon_state = "3,4"
			bottom/icon_state = "bottom"

		roof_small
			step_sounds = null
			density = 1
			icon = 'icons/map/turf/jianghu_house/roof2.dmi'
			layer = MOB_LAYER + 1

			left_edge
				density = 0
				icon_state = "left_edge"
				top/icon_state = "left_edge_top"
			right_edge
				density = 0
				icon_state = "right_edge"
				top/icon_state = "right_edge_top"

			y1
				x1/icon_state = "0,0"
				x2/icon_state = "1,0"
				x3/icon_state = "2,0"
				x4/icon_state = "3,0"
			y2
				x1/icon_state = "0,1"
				x2/icon_state = "1,1"
				x3/icon_state = "2,1"
				x4/icon_state = "3,1"
			y3
				density = 0
				x1/icon_state = "0,2"
				x2/icon_state = "1,2"
				x3/icon_state = "2,2"
				x4/icon_state = "3,2"

		roof_horizontal
			step_sounds = null
			density = 1
			icon = 'icons/map/turf/jianghu_house/roof.dmi'

			top/icon_state = "horizontal1"
			middle/icon_state = "horizontal2"
			bottom/icon_state = "horizontal3"


		shadow
			step_sounds = null
			icon = 'icons/map/turf/jianghu_house/roof.dmi'
			icon_state = "shadow"

			shadow_high/layer = MOB_LAYER + 1

	jianghu_house_int

		woodfloor
			icon = 'icons/map/turf/jianghu_house/floor_int.dmi'
			icon_state = "wood"
			left
				icon_state = "wood_left"


		roof
			icon='icons/map/turf/jianghu_house/roof_int.dmi'
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
			icon = 'icons/map/turf/jianghu_house/wall_int.dmi'

			left/icon_state = "left"
			middle/icon_state = "middle"

			top
				left/icon_state = "top_left"
				middle/icon_state = "top"

		stairs
			icon = 'icons/map/turf/jianghu_house/stairs.dmi'

			bottomleft/icon_state = "bottomleft"
			bottomright/icon_state = "bottomright"
			left/icon_state = "left"
			right/icon_state = "right"
			topleft/icon_state = "topleft"
			topright/icon_state = "topright"