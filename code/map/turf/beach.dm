turf
	beach

		sewer_entrance
			icon = 'icons/map/turf/beach/sewerentrance.dmi'
			icon_state = "1"

		sand
			icon='icons/map/turf/beach/beach.dmi'
			icon_state = "sand"
			name = "Beach Sand"
			jointag = "beachsand"
			jointagone = list("cliff", "desert", "ocean", "grass")
			step_sounds = "sand"


		ocean
			density = 1
			jointag = "beachsand"
			icon = 'icons/map/turf/beach/ocean.dmi'
			step_sounds = "sand"
			shallow
				icon_state = "shallow"
				edge
					icon = 'icons/map/turf/beach/ocean_edge.dmi'
					top_left/icon_state="top_left"
					top/icon_state="top"
					top_right/icon_state="top_right"
					left/icon_state="left"
					right/icon_state="right"
					bottom_left/icon_state="bottom_left"
					bottom/icon_state="bottom"
					bottom_right/icon_state="bottom_right"
					corner
						tl/icon_state="tl"
						tr/icon_state="tr"
						bl/icon_state="bl"
						br/icon_state="br"

			deep
				icon_state = "deep"
				edge
					icon = 'icons/map/turf/beach/deep_edge.dmi'
					top_left/icon_state="top_left"
					top/icon_state="top"
					top_right/icon_state="top_right"
					left/icon_state="left"
					right/icon_state="right"
					bottom_left/icon_state="bottom_left"
					bottom/icon_state="bottom"
					bottom_right/icon_state="bottom_right"
			verydeep
				icon_state = "verydeep"
				edge
					icon = 'icons/map/turf/beach/verydeep_edge.dmi'
					top_left/icon_state="top_left"
					top/icon_state="top"
					top_right/icon_state="top_right"
					left/icon_state="left"
					right/icon_state="right"
					bottom_left/icon_state="bottom_left"
					bottom/icon_state="bottom"
					bottom_right/icon_state="bottom_right"

		cliff_sand
			density = 1
			step_sounds = "sand"
			top
				icon='icons/map/turf/beach/cliff_top.dmi'
				left
					top/icon_state="top_left_sand"
					middle/icon_state="left_sand"
					bottom/icon_state="bottom_left_sand"
				middle
					top/icon_state="top_sand"
					bottom/icon_state="bottom_sand"
				right
					top/icon_state="top_right_sand"
					middle/icon_state="right_sand"
					bottom/icon_state="bottom_right_sand"
				corner
					density = 0
					topleft/icon_state = "tl"
					topright/icon_state = "tr"
					bottomleft/icon_state = "bl"
					bottomright/icon_state = "br"
			side
				icon='icons/map/turf/beach/cliff_side.dmi'
				bottom
					left/icon_state="bottom_left_sand"
					middle/icon_state="bottom_sand"
					right/icon_state="bottom_right_sand"
				middle
					left/icon_state="left"
					middle/icon_state="middle"
					right/icon_state="right"

		cliff_grass
			density = 1
			top
				icon='icons/map/turf/beach/cliff_top.dmi'
				left
					top/icon_state="top_left_grass"
					middle/icon_state="left_grass"
					bottom/icon_state="bottom_left_grass"
				middle
					top/icon_state="top_grass"
					bottom/icon_state="bottom_grass"
				right
					top/icon_state="top_right_grass"
					middle/icon_state="right_grass"
					bottom/icon_state="bottom_right_grass"
				corner
					density = 0
					topleft/icon_state = "tl"
					topright/icon_state = "tr"
					bottomleft/icon_state = "bl"
					bottomright/icon_state = "br"
			side
				icon='icons/map/turf/beach/cliff_side.dmi'
				bottom
					left/icon_state="bottom_left_grass"
					middle/icon_state="bottom_grass"
					right/icon_state="bottom_right_grass"
				middle
					left/icon_state="left"
					middle/icon_state="middle"
					right/icon_state="right"

		cliff_prairie
			density = 1
			top
				icon='icons/map/turf/beach/cliff_top.dmi'
				left
					top/icon_state="top_left_prairie"
					middle/icon_state="left_prairie"
					bottom/icon_state="bottom_left_prairie"
				middle
					top/icon_state="top_prairie"
					bottom/icon_state="bottom_prairie"
				right
					top/icon_state="top_right_prairie"
					middle/icon_state="right_prairie"
					bottom/icon_state="bottom_right_prairie"
				corner
					density = 0
					topleft/icon_state = "tl"
					topright/icon_state = "tr"
					bottomleft/icon_state = "bl"
					bottomright/icon_state = "br"
			side
				icon='icons/map/turf/beach/cliff_side.dmi'
				bottom
					left/icon_state="bottom_left_prairie"
					middle/icon_state="bottom_prairie"
					right/icon_state="bottom_right_prairie"
				middle
					left/icon_state="left"
					middle/icon_state="middle"
					right/icon_state="right"

		cliff_swamp
			density = 1
			top
				icon='icons/map/turf/beach/cliff_top.dmi'
				left
					top/icon_state="top_left_swamp"
					middle/icon_state="left_swamp"
					bottom/icon_state="bottom_left_swamp"
				middle
					top/icon_state="top_swamp"
					bottom/icon_state="bottom_swamp"
				right
					top/icon_state="top_right_swamp"
					middle/icon_state="right_swamp"
					bottom/icon_state="bottom_right_swamp"
				corner
					density = 0
					topleft/icon_state = "tl"
					topright/icon_state = "tr"
					bottomleft/icon_state = "bl"
					bottomright/icon_state = "br"
			side
				icon='icons/map/turf/beach/cliff_side.dmi'
				bottom
					left/icon_state="bottom_left_swamp"
					middle/icon_state="bottom_swamp"
					right/icon_state="bottom_right_swamp"
				middle
					left/icon_state="left"
					middle/icon_state="middle"
					right/icon_state="right"

		cliff_snow
			density = 1
			top
				icon='icons/map/turf/beach/cliff_top.dmi'
				left
					top/icon_state="top_left_snow"
					middle/icon_state="left_snow"
					bottom/icon_state="bottom_left_snow"
				middle
					top/icon_state="top_snow"
					bottom/icon_state="bottom_snow"
				right
					top/icon_state="top_right_snow"
					middle/icon_state="right_snow"
					bottom/icon_state="bottom_right_snow"
				corner
					density = 0
					topleft/icon_state = "tl_snow"
					topright/icon_state = "tr_snow"
					bottomleft/icon_state = "bl_snow"
					bottomright/icon_state = "br_snow"
			side
				icon='icons/map/turf/beach/cliff_side.dmi'
				bottom
					left/icon_state="bottom_left_snow"
					middle/icon_state="bottom_snow"
					right/icon_state="bottom_right_snow"
				bottom_2
					left/icon_state="bottom_left_snow_n"
					middle/icon_state="bottom_snow_n"
					right/icon_state="bottom_right_snow_n"
				middle
					left/icon_state="left_snow"
					middle/icon_state="middle_snow"
					right/icon_state="right_snow"

		cliff_autumn
			density = 1
			top
				icon='icons/map/turf/beach/cliff_top.dmi'
				left
					top/icon_state="top_left_autumn"
					middle/icon_state="left_autumn"
					bottom/icon_state="bottom_left_autumn"
				middle
					top/icon_state="top_autumn"
					bottom/icon_state="bottom_autumn"
				right
					top/icon_state="top_right_autumn"
					middle/icon_state="right_autumn"
					bottom/icon_state="bottom_right_autumn"

		cliff_dark
			density = 1
			top
				icon='icons/map/turf/beach/cliff_top.dmi'
				left
					top/icon_state="top_left_dark"
					middle/icon_state="left_dark"
					bottom/icon_state="bottom_left_dark"
				middle
					top/icon_state="top_dark"
					bottom/icon_state="bottom_dark"
				right
					top/icon_state="top_right_dark"
					middle/icon_state="right_dark"
					bottom/icon_state="bottom_right_dark"

		cliff_blank
			density = 1
			side
				icon='icons/map/turf/beach/cliff_side.dmi'
				bottom
					left/icon_state="bottom_left"
					middle/icon_state="bottom"
					right/icon_state="bottom_right"


		cliff_ocean_bottom
			icon='icons/map/turf/beach/cliff_side.dmi'
			density = 1
			edge
				left/icon_state = "bottom_left_ocean"
				middle/icon_state = "bottom_ocean"
				right/icon_state = "bottom_right_ocean"
			/*
			shallow
				left/icon_state = "bottom_left_shallow"
				middle/icon_state = "bottom_shallow"
				right/icon_state = "bottom_right_shallow"
			*/
			deep
				left/icon_state = "bottom_left_deep"
				middle/icon_state = "bottom_deep"
				right/icon_state = "bottom_right_deep"

				top
					left/icon_state = "left_deep"
					middle/icon_state = "deep"
					right/icon_state = "right_deep"
			verydeep
				left/icon_state = "bottom_left_verydeep"
				middle/icon_state = "bottom_verydeep"
				right/icon_state = "bottom_right_verydeep"
				top
					left/icon_state = "left_verydeep"
					middle/icon_state = "verydeep"
					right/icon_state = "right_verydeep"

		cliff_stairs
			icon='icons/map/turf/beach/cliff_side.dmi'
			bottom
				icon_state = "stairs"
			top
				icon_state = "stairs_top"
			top_snow
				icon_state = "stairs_top_snow"

		cave
			icon='icons/map/turf/beach/cliff_side.dmi'
			icon_state = "cave"

obj/map
	beach
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
			underwater
				New()
					..()
					layer = SHADOW_LAYER - 0.1

				shallow
					alpha =  87
					rock1/icon_state = "rock1"
					rock2/icon_state = "rock2"
					rock3/icon_state = "rock3"
				deep
					alpha =  67
					rock1/icon_state = "rock1"
					rock2/icon_state = "rock2"
					rock3/icon_state = "rock3"
				verydeep
					alpha =  47
					rock1/icon_state = "rock1"
					rock2/icon_state = "rock2"
					rock3/icon_state = "rock3"

		fish_decal
			icon = 'icons/map/obj/beach/fish.dmi'
			var/flickstate
			big/flickstate = "bigfish"
			small/flickstate = "smallfish"
			layer = MOB_LAYER

			New()
				..()
				spawn()
					while(src)
						sleep(rand(50, 250))
						pixel_x = rand(-8, 8)
						pixel_y = rand(-8, 8)
						flick("[flickstate][pick(1,2)]", src)