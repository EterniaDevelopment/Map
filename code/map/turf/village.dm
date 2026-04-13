turf
	village
		road_brown
			step_sounds = "stone"
			icon = 'icons/map/turf/village/road_brown.dmi'
			top_left
				icon_state = "top_left"
			top
				icon_state = "top"
			top_right
				icon_state = "top_right"
			left
				icon_state = "left"
			right
				icon_state = "right"
			bottom_left
				icon_state = "bottom_left"
			bottom
				icon_state = "bottom"
			bottom_right
				icon_state = "bottom_right"
			b_r
				icon_state = "b_r"
			b_l
				icon_state = "b_l"
			t_r
				icon_state = "t_r"
			t_l
				icon_state = "t_l"
			top_left_2
				icon_state = "top_left_2"
			top_2
				icon_state = "top_2"
			top_right_2
				icon_state = "top_right_2"
			left_2
				icon_state = "left_2"
			right_2
				icon_state = "right_2"
			middle
				icon_state = "middle"
			bottom_left_2
				icon_state = "bottom_left_2"
			bottom_2
				icon_state = "bottom_2"
			bottom_right_2
				icon_state = "bottom_right_2"
			t_r_2
				icon_state = "t_r_2"
			t_l_2
				icon_state = "t_l_2"
			b_r_2
				icon_state = "b_r_2"
			b_l_2
				icon_state = "b_l_2"

		horizontal_roof1
			plane = 0
			layer = OVER_LAYER + 0.7
			density = 1
			icon = 'icons/map/turf/village/horizontal_roof1.dmi'
			left_1
				icon_state = "left_1"
			right_1
				icon_state = "right_1"
			left_2
				icon_state = "left_2"
			center_1
				icon_state = "center_1"
			right_2
				icon_state = "right_2"
			left_3
				icon_state = "left_3"
			center_2
				icon_state = "center_2"
			right_3
				icon_state = "right_3"
			center_3
				icon_state = "center_3"
			slope_peak
				icon_state = "slope_peak"
			slope_middle
				icon_state = "slope_middle"
			slope_right
				icon_state = "slope_right"
			slope_left
				icon_state = "slope_left"
			slope_left_corner
				icon_state = "slope_left_corner"
			slope_right_corner
				icon_state = "slope_right_corner"
			fill
				icon_state = "fill"
			top
				icon_state = "top"
			fill_left
				icon_state = "fill_left"
			fill_left_top
				icon_state = "fill_left_top"
			fill_right_top
				icon_state = "fill_right_top"
			fill_right
				icon_state = "fill_right"
			left_edge
				icon_state = "left_edge"
			left_edge_middle
				icon_state = "left_edge_middle"
			left_corner
				icon_state = "left_corner"
			right_edge
				icon_state = "right_edge"
			right_edge_middle
				icon_state = "right_edge_middle"
			right_corner
				icon_state = "right_corner"
			slope_bottom_middle
				icon_state = "slope_bottom_middle"
			slope_bottom_left
				icon_state = "slope_bottom_left"
			slope_bottom_right
				icon_state = "slope_bottom_right"

		horizontal_roof
			plane = 0
			layer = OVER_LAYER + 0.7
			density = 1
			icon = 'icons/map/turf/village/horizontal_roof.dmi'
			fill
				icon_state = "fill"
			middle
				icon_state = "middle"
			stub
				icon_state = "stub"
			slope
				peak
					icon_state = "peak"
				left
					icon_state = "slope_left"
					corner
						icon_state = "slope_left_corner"
					bottom
						icon_state = "slope_left_bottom"
				right
					icon_state = "slope_right"
					corner
						icon_state = "slope_right_corner"
					bottom
						icon_state = "slope_right_bottom"
			top
				icon_state = "top"
				one
					icon_state = "top_1"
					fill
						icon_state = "top_fill_1"
				two
					icon_state = "top_2"
					fill
						icon_state = "top_fill_2"
				tee
					icon_state = "top_t"
				left
					icon_state = "top_left"
					fill
						icon_state = "top_fill_left"
				right
					icon_state = "top_right"
					fill
						icon_state = "top_fill_right"

			edge
				right
					icon_state = "right_edge"
					middle
						icon_state = "right_edge_middle"
				left
					icon_state = "left_edge"
					middle
						icon_state = "left_edge_middle"
			corner
				right
					icon_state = "right_corner"
				left
					icon_state = "left_corner"
			bottom
				icon_state = "bottom"
				left
					icon_state = "bottom_left"
				right
					icon_state = "bottom_right"

			brick
				left
					icon_state = "brick_left"
					bottom
						icon_state = "brick_bottom_left"
				right
					icon_state = "brick_right"
					bottom
						icon_state = "brick_bottom_right"

		oscuri_dirt
			icon = 'icons/map/turf/village/oscuri_dirt.dmi'
			corner
				bl
					icon_state = "bl"
				br
					icon_state = "br"
				tl
					icon_state = "tl"
				tr
					icon_state = "tr"
			bottom
				icon_state = "bottom"
			top
				icon_state  = "top"
			right
				icon_state = "right"
			middle
				icon_state = "middle"
			left
				icon_state = "left"
			top_right
				icon_state = "top_right"
			top_left
				icon_state = "top_left"
			bottom_right
				icon_state = "bottom_right"
			bottom_left
				icon_state = "bottom_left"
		grass/icon='icons/map/turf/village/grass.dmi'
		cliff
			ocean
				density=1
				grass
					icon='icons/map/turf/village/cliff_grass_ocean.dmi'
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
				dirt
					icon='icons/map/turf/village/cliff_dirt_ocean.dmi'
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
		roof
			density=1
			plane = 0
			layer = 99
			icon='icons/map/turf/village/roof.dmi'
			bottom
				left/icon_state="bottom_left"
				middle/icon_state="bottom"
				right/icon_state="bottom_right"
			middle
				left/icon_state="left"
				middle/icon_state="middle"
				right/icon_state="right"
			top
				left/icon_state="top_left"
				right/icon_state="top_right"
		door
			door_1
				icon='icons/map/turf/village/door_1.dmi'
				open
					icon_state="open"
					density=0
				close/icon_state="close"
			door_2
				icon='icons/map/turf/village/door_2.dmi'
				open
					icon_state="open"
					density=0
				close/icon_state="close"
			door_3
				icon='icons/map/turf/village/door_3.dmi'
				open
					icon_state="open"
					density=0
			OscuriDoor
				icon='icons/map/turf/Oscuri Door.dmi'
				open
					icon_state="open"
					density=0
				close/icon_state="close"
			OscuriDoorRight
				icon='icons/map/turf/Oscuri Door.dmi'
				open
					icon_state="openr"
					density=0
				close/icon_state="closer"
			New()
				..()
				var/image/I=image(icon,src,"top",OVER_LAYER)
				overlays+=I
		fence
			icon='icons/map/turf/village/fence.dmi'
			density=1
			middle/icon_state="middle"
			top_left/icon_state="top_left"
			top_right/icon_state="top_right"
			left
				icon_state="left"
				density=0
			right
				icon_state="right"
				density=0
			bottom_left/icon_state="bottom_left"
			bottom_right/icon_state="bottom_right"
			ignore = 1

			Align(list/images_to_underlay = null)
				if(images_to_underlay)
					underlayed = images_to_underlay

				for(var/image/I in underlayed)
					I.loc = src
					underlays.Add(I)
				for(var/N in underlayed)
					if(!(N in underlays))
						underlays.Add(N)
		fence_2
			icon = 'icons/map/turf/village/fence.dmi'
			density = 1
			bl
				name = "Fence - Bottomleft"
				icon_state = "bottom_left"
			br
				name = "Fence - Bottomright"
				icon_state = "bottom_right"
			left
				name = "Fence - Left"
				icon_state = "left"
			right
				name = "Fence - Right"
				icon_state = "right"
			middle
				name = "Fence - Middle"
				icon_state = "middle"
			tl
				name = "Fence - Topleft"
				icon_state = "top_left"
			tr
				name = "Fence - Topright"
				icon_state = "top_right"

			endr
				name = "Fence - Right End"
				icon_state = "right_end"
			endl
				name = "Fence - Left End"
				icon_state = "left_end"
			bl_end
				name = "Fence - Bottomleft End"
				icon_state = "bottomleft_end"
			br_end
				name = "Fence - Bottomright End"
				icon_state = "bottomright_end"
			tl_end
				name = "Fence - Topleft End"
				icon_state = "topleft_end"
			tr_end
				name = "Fence - Topright End"
				icon_state = "topright_end"
		rug
			icon='icons/map/turf/village/rug.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			jointag = "dirt"
			reverse = 1
			noignore = 1

			Extend(direction)
				switch(direction)
					if("tl") direction = "top_left"
					if("tr") direction = "top_right"
					if("bl") direction = "bottom_left"
					if("br") direction = "bottom_right"

				var/list/U = underlayed
				if(direction == "center")
					new /turf/village/rug/middle(src)
					return

				var/turf/T = new/turf/village/rug/edge(src)
				T.underlayed = U
				T.icon_state = direction

				if(T.underlayed)
					for(var/image/I in T.underlayed)
						I.loc = T
						T.underlays.Add(I)
					for(var/N in T.underlayed)
						if(!(N in T.underlays))
							T.underlays.Add(N)

				// Safety check:
				if(!length(T.underlays))
					var/turf/NT = find_most_abundant(T)
					var/image/I = image(NT.icon,null,NT.icon_state,NT.layer,NT.dir)
					if(!T.underlayed) T.underlayed = list()
					T.underlayed += I
					I.loc = T
					T.underlays.Add(I)

			random
				icon_state = "middle"
				New()
					..()
					//if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()
					Align()

			edge

		dirt
			icon='icons/map/turf/village/dirt.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"
			jointag = "dirt"

			/*Extend(direction)
				var/list/U = underlayed
				if(direction == "center")
					new /turf/village/dirt/middle(src)
					return

				var/turf/T = new/turf/village/dirt/edge(src)
				T.underlayed = U
				T.icon_state = direction

				if(T.underlayed)
					for(var/image/I in T.underlayed)
						I.loc = T
						T.underlays.Add(I)
					for(var/N in T.underlayed)
						if(!(N in T.underlays))
							T.underlays.Add(N)

				// Safety check:
				if(!length(T.underlays))
					var/turf/NT = find_most_abundant(T)
					var/image/I = image(NT.icon,null,NT.icon_state,NT.layer,NT.dir)
					if(!T.underlayed) T.underlayed = list()
					T.underlayed += I
					I.loc = T
					T.underlays.Add(I)*/

			random
				icon_state = "middle"
				New()
					..()
					//if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()
					Align()

			edge


		stairs
			icon='icons/map/turf/village/stairs.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			ignore = 1

			Align(list/images_to_underlay = null)
				if(images_to_underlay)
					underlayed = images_to_underlay

				for(var/image/I in underlayed)
					I.loc = src
					underlays.Add(I)
				for(var/N in underlayed)
					if(!(N in underlays))
						underlays.Add(N)

		stairs_b
			icon='icons/map/turf/village/stairs_b.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
		walkway
			icon='icons/map/turf/village/walkway.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"

			jointag = "road"

			Extend(direction)
				var/list/U = underlayed
				if(direction == "center")
					new /turf/village/walkway/middle(src)
					return

				var/turf/T = new/turf/village/walkway/edge(src)
				T.underlayed = U
				T.icon_state = direction

				if(T.underlayed)
					for(var/image/I in T.underlayed)
						I.loc = T
						T.underlays.Add(I)
					for(var/N in T.underlayed)
						if(!(N in T.underlays))
							T.underlays.Add(N)

				// Safety check:
				if(!length(T.underlays))
					var/turf/NT = find_most_abundant(T)
					var/image/I = image(NT.icon,null,NT.icon_state,NT.layer,NT.dir)
					if(!T.underlayed) T.underlayed = list()
					T.underlayed += I
					I.loc = T
					T.underlays.Add(I)

			random
				icon_state = "middle"
				New()
					..()
					//if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()
					Align()

			edge

		walkway_edge
			icon='icons/map/turf/village/walkway_edge.dmi'
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
		wornwalkway
			icon='icons/map/turf/village/wornwalkway.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"
		building
			ignore = 1
			wall
				density=1
				wall_1
					icon='icons/map/turf/building/wall_1.dmi'
					bottom
						left/icon_state="bottom_left"
						middle/icon_state="bottom"
						right/icon_state="bottom_right"
					middle
						left/icon_state="left"
						middle/icon_state="middle"
						center/icon_state="center"
						right/icon_state="right"
						door/icon_state = "middle_2"
					top
						left/icon_state="top_left"
						top/icon_state="top"
						right/icon_state="top_right"
				wall_2
					icon='icons/map/turf/building/wall_2.dmi'
					bottom
						left/icon_state="bottom_left"
						middle/icon_state="bottom"
						right/icon_state="bottom_right"
					middle
						left/icon_state="left"
						middle/icon_state="middle"
						center/icon_state="center"
						right/icon_state="right"
						door/icon_state = "middle_2"
					top
						left/icon_state="top_left"
						top/icon_state="top"
						right/icon_state="top_right"
			roof
				density=1
				plane = 0
				layer=99
				Align(list/images_to_underlay = null)
					if(images_to_underlay)
						underlayed = images_to_underlay

					for(var/image/I in underlayed)
						I.loc = src
						underlays.Add(I)
					for(var/N in underlayed)
						if(!(N in underlays))
							underlays.Add(N)

				roof_1
					icon='icons/map/turf/building/roof_1.dmi'
					left
						left_1/icon_state="left_1"
						left_2/icon_state="left_2"
						left_3
							icon_state="left_3"
							density=1
					center
						center_1/icon_state="center_1"
						center_2/icon_state="center_2"
						center_3
							icon_state="center_3"
							density=1
					right
						right_1/icon_state="right_1"
						right_2/icon_state="right_2"
						right_3
							icon_state="right_3"
							density=1
				roof_2
					icon='icons/map/turf/building/roof_2.dmi'
					left
						left_1/icon_state="left_1"
						left_2/icon_state="left_2"
						left_3
							icon_state="left_3"
							density=1
					right
						right_1/icon_state="right_1"
						right_2/icon_state="right_2"
						right_3
							icon_state="right_3"
							density=1
				roof_3
					icon='icons/map/turf/building/roof_3.dmi'
					left
						left_1/icon_state="left_1"
						left_2/icon_state="left_2"
						left_3
							icon_state="left_3"
							density=1
					center
						center_1/icon_state="center_1"
						center_2/icon_state="center_2"
						center_3
							icon_state="center_3"
							density=1
					right
						right_1/icon_state="right_1"
						right_2/icon_state="right_2"
						right_3
							icon_state="right_3"
							density=1


				roof_1_green
					icon='icons/map/obj/meranthe/roof_green.dmi'
					left
						left_1/icon_state="left_1"
						left_2/icon_state="left_2"
						left_3
							icon_state="left_3"
							density=1
					center
						center_1/icon_state="center_1"
						center_2/icon_state="center_2"
						center_3
							icon_state="center_3"
							density=1
					right
						right_1/icon_state="right_1"
						right_2/icon_state="right_2"
						right_3
							icon_state="right_3"
							density=1


				roof_1_brown
					icon='icons/map/obj/meranthe/roof_brown.dmi'
					left
						left_1/icon_state="left_1"
						left_2/icon_state="left_2"
						left_3
							icon_state="left_3"
							density=1
					center
						center_1/icon_state="center_1"
						center_2/icon_state="center_2"
						center_3
							icon_state="center_3"
							density=1
					right
						right_1/icon_state="right_1"
						right_2/icon_state="right_2"
						right_3
							icon_state="right_3"
							density=1


				roof_5
					icon='icons/map/turf/building/roof_5.dmi'
					left
						left_1/icon_state="left_1"
						left_2/icon_state="left_2"
						left_3
							icon_state="left_3"
							density=1
					center
						center_1/icon_state="center_1"
						center_2/icon_state="center_2"
						center_3
							icon_state="center_3"
							density=1
					right
						right_1/icon_state="right_1"
						right_2/icon_state="right_2"
						right_3
							icon_state="right_3"
							density=1




				roof_4
					icon='icons/map/turf/building/roof_4.dmi'
					left
						left_1/icon_state="left_1"
						left_2/icon_state="left_2"
						left_3
							icon_state="left_3"
							density=1
					right
						right_1/icon_state="right_1"
						right_2/icon_state="right_2"
						right_3
							icon_state="right_3"
							density=1
			shadow
				icon='icons/map/turf/building/shadow.dmi'
				shadow_1/icon_state="1"
				shadow_2/icon_state="2"
				shadow_3/icon_state="3"
				shadow_4/icon_state="4"
				shadow_5/icon_state="5"


		horizontal_roof_green
			plane = 0
			layer = OVER_LAYER + 0.7
			density = 1
			icon = 'icons/map/obj/meranthe/roof_horizontal_green.dmi'
			top_left
				icon_state = "top_left"
			top_fill
				icon_state = "top_fill"
			top_middle
				icon_state = "top_middle"
			top_right
				icon_state = "top_right"
			left
				icon_state = "left"
			fill
				icon_state = "fill"
			middle
				icon_state = "middle"
			right
				icon_state = "right"
			bottom_left
				icon_state = "bottom_left"
			bottom_fill
				icon_state = "bottom_fill"
			bottom_middle
				icon_state = "bottom_middle"
			bottom_right
				icon_state = "bottom_right"
			end_left_1
				icon_state = "end_left_1"
			end_left_2
				icon_state = "end_left_2"
			end_left_3
				icon_state = "end_left_3"
			end_right_1
				icon_state = "end_right_1"
			end_right_2
				icon_state = "end_right_2"
			end_right_3
				icon_state = "end_right_3"

		horizontal_roof_brown
			plane = 0
			layer = OVER_LAYER + 0.7
			density = 1
			icon = 'icons/map/obj/meranthe/roof_horizontal_brown.dmi'
			top_left
				icon_state = "top_left"
			top_fill
				icon_state = "top_fill"
			top_middle
				icon_state = "top_middle"
			top_right
				icon_state = "top_right"
			left
				icon_state = "left"
			fill
				icon_state = "fill"
			middle
				icon_state = "middle"
			right
				icon_state = "right"
			bottom_left
				icon_state = "bottom_left"
			bottom_fill
				icon_state = "bottom_fill"
			bottom_middle
				icon_state = "bottom_middle"
			bottom_right
				icon_state = "bottom_right"
			end_left_1
				icon_state = "end_left_1"
			end_left_2
				icon_state = "end_left_2"
			end_left_3
				icon_state = "end_left_3"
			end_right_1
				icon_state = "end_right_1"
			end_right_2
				icon_state = "end_right_2"
			end_right_3
				icon_state = "end_right_3"


		horizontal_roof_aphros
			plane = 0
			layer = OVER_LAYER + 0.7
			density = 1
			icon = 'icons/map/obj/meranthe/aphros/roof_horizontal_aphros.dmi'
			top_left
				icon_state = "top_left"
			top_fill
				icon_state = "top_fill"
			top_middle
				icon_state = "top_middle"
			top_right
				icon_state = "top_right"
			left
				icon_state = "left"
			fill
				icon_state = "fill"
			middle
				icon_state = "middle"
			right
				icon_state = "right"
			bottom_left
				icon_state = "bottom_left"
			bottom_fill
				icon_state = "bottom_fill"
			bottom_middle
				icon_state = "bottom_middle"
			bottom_right
				icon_state = "bottom_right"
			end_left_1
				icon_state = "end_left_1"
			end_left_2
				icon_state = "end_left_2"
			end_left_3
				icon_state = "end_left_3"
			end_right_1
				icon_state = "end_right_1"
			end_right_2
				icon_state = "end_right_2"
			end_right_3
				icon_state = "end_right_3"


		horizontal_roof_delphinia
			plane = 0
			layer = OVER_LAYER + 0.7
			density = 1
			icon = 'icons/map/obj/meranthe/delphinia/roof_horizontal_delphinia.dmi'
			top_left
				icon_state = "top_left"
			top_fill
				icon_state = "top_fill"
			top_middle
				icon_state = "top_middle"
			top_right
				icon_state = "top_right"
			left
				icon_state = "left"
			fill
				icon_state = "fill"
			middle
				icon_state = "middle"
			right
				icon_state = "right"
			bottom_left
				icon_state = "bottom_left"
			bottom_fill
				icon_state = "bottom_fill"
			bottom_middle
				icon_state = "bottom_middle"
			bottom_right
				icon_state = "bottom_right"
			end_left_1
				icon_state = "end_left_1"
			end_left_2
				icon_state = "end_left_2"
			end_left_3
				icon_state = "end_left_3"
			end_right_1
				icon_state = "end_right_1"
			end_right_2
				icon_state = "end_right_2"
			end_right_3
				icon_state = "end_right_3"


		horizontal_roof_vdalion
			plane = 0
			layer = OVER_LAYER + 0.7
			density = 1
			icon = 'icons/map/obj/meranthe/vdalion/roof_horizontal_vdalion.dmi'
			top_left
				icon_state = "top_left"
			top_fill
				icon_state = "top_fill"
			top_middle
				icon_state = "top_middle"
			top_right
				icon_state = "top_right"
			left
				icon_state = "left"
			fill
				icon_state = "fill"
			middle
				icon_state = "middle"
			right
				icon_state = "right"
			bottom_left
				icon_state = "bottom_left"
			bottom_fill
				icon_state = "bottom_fill"
			bottom_middle
				icon_state = "bottom_middle"
			bottom_right
				icon_state = "bottom_right"
			end_left_1
				icon_state = "end_left_1"
			end_left_2
				icon_state = "end_left_2"
			end_left_3
				icon_state = "end_left_3"
			end_right_1
				icon_state = "end_right_1"
			end_right_2
				icon_state = "end_right_2"
			end_right_3
				icon_state = "end_right_3"



		horizontal_roof_vdalion2
			plane = 0
			layer = OVER_LAYER + 0.7
			density = 1
			icon = 'icons/map/obj/meranthe/vdalion/roof_horizontal_vdalion2.dmi'
			top_left
				icon_state = "top_left"
			top_fill
				icon_state = "top_fill"
			top_middle
				icon_state = "top_middle"
			top_right
				icon_state = "top_right"
			left
				icon_state = "left"
			fill
				icon_state = "fill"
			middle
				icon_state = "middle"
			right
				icon_state = "right"
			bottom_left
				icon_state = "bottom_left"
			bottom_fill
				icon_state = "bottom_fill"
			bottom_middle
				icon_state = "bottom_middle"
			bottom_right
				icon_state = "bottom_right"
			end_left_1
				icon_state = "end_left_1"
			end_left_2
				icon_state = "end_left_2"
			end_left_3
				icon_state = "end_left_3"
			end_right_1
				icon_state = "end_right_1"
			end_right_2
				icon_state = "end_right_2"
			end_right_3
				icon_state = "end_right_3"

		roof_aphros
			density = 1
			icon = 'icons/map/obj/meranthe/aphros/roof_aphros.dmi'
			left_1
				icon_state="left_1"
			left_2
				icon_state="left_2"
			left_3
				icon_state="left_3"
			left_4
				icon_state="left_4"
			left_5
				icon_state="left_5"
			left_6
				icon_state="left_6"
			left_7
				icon_state="left_7"
			center_1
				icon_state="center_1"
			center_2
				icon_state="center_2"
			center_3
				icon_state="center_3"
			right_1
				icon_state="right_1"
			right_2
				icon_state="right_2"
			right_3
				icon_state="right_3"
			right_4
				icon_state="right_4"
			right_5
				icon_state="right_5"
			right_6
				icon_state="right_6"
			right_7
				icon_state="right_7"


		roof_vdalion
			density = 1
			icon = 'icons/map/obj/meranthe/vdalion/roof_vdalion.dmi'
			left_1
				icon_state="left_1"
			left_2
				icon_state="left_2"
			left_3
				icon_state="left_3"
			left_4
				icon_state="left_4"
			left_5
				icon_state="left_5"
			left_6
				icon_state="left_6"
			left_7
				icon_state="left_7"
			center_1
				icon_state="center_1"
			center_2
				icon_state="center_2"
			center_3
				icon_state="center_3"
			right_1
				icon_state="right_1"
			right_2
				icon_state="right_2"
			right_3
				icon_state="right_3"
			right_4
				icon_state="right_4"
			right_5
				icon_state="right_5"
			right_6
				icon_state="right_6"
			right_7
				icon_state="right_7"


		roof_vdalion2
			density = 1
			icon = 'icons/map/obj/meranthe/vdalion/roof_vdalion2.dmi'
			left_1
				icon_state="left_1"
			left_2
				icon_state="left_2"
			left_3
				icon_state="left_3"
			left_4
				icon_state="left_4"
			left_5
				icon_state="left_5"
			left_6
				icon_state="left_6"
			left_7
				icon_state="left_7"
			center_1
				icon_state="center_1"
			center_2
				icon_state="center_2"
			center_3
				icon_state="center_3"
			right_1
				icon_state="right_1"
			right_2
				icon_state="right_2"
			right_3
				icon_state="right_3"
			right_4
				icon_state="right_4"
			right_5
				icon_state="right_5"
			right_6
				icon_state="right_6"
			right_7
				icon_state="right_7"



		roof_delphinia
			density = 1
			icon = 'icons/map/obj/meranthe/delphinia/roof_delphinia.dmi'
			left_1
				icon_state="left_1"
			left_2
				icon_state="left_2"
			left_3
				icon_state="left_3"
			left_4
				icon_state="left_4"
			left_5
				icon_state="left_5"
			left_6
				icon_state="left_6"
			left_7
				icon_state="left_7"
			center_1
				icon_state="center_1"
			center_2
				icon_state="center_2"
			center_3
				icon_state="center_3"
			right_1
				icon_state="right_1"
			right_2
				icon_state="right_2"
			right_3
				icon_state="right_3"
			right_4
				icon_state="right_4"
			right_5
				icon_state="right_5"
			right_6
				icon_state="right_6"
			right_7
				icon_state="right_7"


		wall_aphros
			density = 1
			icon = 'icons/map/obj/meranthe/aphros/wall_aphros.dmi'
			top_left
				icon_state="top_left"
			top_middle
				icon_state="top_middle"
			top_right
				icon_state="top_right"
			middle_left
				icon_state="middle_left"
			middle
				icon_state="middle"
			middle_right
				icon_state="middle_right"
			bottom_left
				icon_state="bottom_left"
			bottom
				icon_state="bottom"
			bottom_right
				icon_state="bottom_right"
			foundation_left
				icon_state="foundation_left"
			foundation_middle
				icon_state="foundation_middle"
			foundation_right
				icon_state="foundation_right"
			top_fill
				icon_state="top_fill"


		wall_delphinia
			density = 1
			icon = 'icons/map/obj/meranthe/delphinia/wall_delphinia.dmi'
			top_left
				icon_state="top_left"
			top_middle
				icon_state="top_middle"
			top_right
				icon_state="top_right"
			middle_left
				icon_state="middle_left"
			middle
				icon_state="middle"
			middle_right
				icon_state="middle_right"
			bottom_left
				icon_state="bottom_left"
			bottom
				icon_state="bottom"
			bottom_right
				icon_state="bottom_right"
			foundation_left
				icon_state="foundation_left"
			foundation_middle
				icon_state="foundation_middle"
			foundation_right
				icon_state="foundation_right"
			top_fill
				icon_state="top_fill"


		wall_vdalion
			density = 1
			icon = 'icons/map/obj/meranthe/vdalion/wall_vdalion.dmi'
			top_left
				icon_state="top_left"
			top_middle
				icon_state="top_middle"
			top_right
				icon_state="top_right"
			middle_left
				icon_state="middle_left"
			middle
				icon_state="middle"
			middle_right
				icon_state="middle_right"
			bottom_left
				icon_state="bottom_left"
			bottom
				icon_state="bottom"
			bottom_right
				icon_state="bottom_right"
			foundation_left
				icon_state="foundation_left"
			foundation_middle
				icon_state="foundation_middle"
			foundation_right
				icon_state="foundation_right"
			top_fill
				icon_state="top_fill"



		aphros_extra
			density = 1
			icon = 'icons/map/obj/meranthe/aphros/aphros_extra.dmi'
			door_bottom
				icon_state="door_bottom"
			door_top
				icon_state="door_top"
			window_1
				icon_state="window_1"
			window_2
				icon_state="window_2"
			foilage_1
				icon_state="foilage_1"
			foilage_2
				icon_state="foilage_2"
			windowbig_1
				icon_state="windowbig_1"
			windowbig_2
				icon_state="windowbig_2"
			windowbig_3
				icon_state="windowbig_3"
			windowbig_4
				icon_state="windowbig_4"

		delphinia_extra
			density = 1
			icon = 'icons/map/obj/meranthe/delphinia/delphinia_extra.dmi'
			door_bottom
				icon_state="door_bottom"
			door_top
				icon_state="door_top"
			window_1
				icon_state="window_1"
			window_2
				icon_state="window_2"
			windowbig_1
				icon_state="windowbig_1"
			windowbig_2
				icon_state="windowbig_2"

		vdalion_extra
			density = 1
			icon = 'icons/map/obj/meranthe/vdalion/vdalion_extra.dmi'
			door_bottom
				icon_state="door_bottom"
			door_top
				icon_state="door_top"
			window_1
				icon_state="window_1"
			window_2
				icon_state="window_2"
			snow_1
				icon_state="snow_1"
			snow_2
				icon_state="snow_2"
			windowbig_1
				icon_state="windowbig_1"
			windowbig_2
				icon_state="windowbig_2"
			windowbig_3
				icon_state="windowbig_3"
			windowbig_4
				icon_state="windowbig_4"
			windowbig_5
				icon_state="windowbig_5"

				roof_1_brown
					icon='icons/map/obj/meranthe/roof_brown.dmi'
					left
						left_1/icon_state="left_1"
						left_2/icon_state="left_2"
						left_3
							icon_state="left_3"
							density=1
					center
						center_1/icon_state="center_1"
						center_2/icon_state="center_2"
						center_3
							icon_state="center_3"
							density=1
					right
						right_1/icon_state="right_1"
						right_2/icon_state="right_2"
						right_3
							icon_state="right_3"
							density=1
