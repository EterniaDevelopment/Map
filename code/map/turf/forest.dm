turf
	forest
		grass
			icon='icons/map/turf/forest/grass.dmi'
			name = "Forest Grass"
			grass_1/icon_state="1"
			grass_2/icon_state="2"
			grass_3/icon_state="3"
			grass_4/icon_state="4"
			grass_5/icon_state="5"
			jointag = "grass"
			jointagone = list("cliff", "snow", "ocean", "dirt", "road", "swamp")

			Extend(direction)
				var/list/U = underlayed
				if(direction == "center")
					var/ttype = pick(/turf/forest/grass/grass_1, /turf/forest/grass/grass_2, /turf/forest/grass/grass_3, /turf/forest/grass/grass_4, /turf/forest/grass/grass_5)
					new ttype(src)
					return

				var/turf/T = new/turf/forest/grass/edge(src)
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
				icon_state = "1"

				New()
					..()
					if(usr)
						AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()

			edge
				icon='icons/map/turf/forest/grass_edge.dmi'


		grass_edge
			jointag = "grass"
			icon='icons/map/turf/forest/grass_edge.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			jointag = "grass"
			jointagone = list("cliff", "snow", "ocean", "dirt", "road")
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"

		cliff
			//these need to be updated to new tile blocking system
			jointag = "cliff"

			icon='icons/cliff2.dmi'
			top
				left
					top/icon_state="0,4"
					middle/icon_state="0,3"
					bottom/icon_state="0,2"

				middle
					top/icon_state="2,4"
					bottom/icon_state="4,2"
					thinright/icon_state="3,4"
					thinleft/icon_state="4,4"

				right
					top/icon_state="5,4"
					middle/icon_state="5,3"
					bottom/icon_state="5,2"
			side
				density=1
				bottom
					left/icon_state="0,0"
					middle/icon_state="1,0"
					right/icon_state="5,0"
				middle
					left/icon_state="0,1"
					middle/icon_state="1,1"
					middle/two/icon_state="3,1"
					right/icon_state="5,1"
				steps
					density=0
					icon_state="2,1"
					left/icon_state="1,2"
					right/icon_state="3,2"

				ramp1
					left/icon_state="2,0"
					right/icon_state="3,0"

			rampsegs
				leftslope
					top/icon_state="0,7"
					middle/icon_state="0,6"
					bottom/icon_state="0,5"
					out
						top_out/icon_state="3,7"
						middle_out/icon_state="3,6"
						bottom_out/icon_state="3,5"

				rightslope
					top/icon_state="1,7"
					middle/icon_state="1,6"
					bottom/icon_state="1,5"
					out
						top_out/icon_state="4,7"
						middle_out/icon_state="4,6"
						bottom_out/icon_state="4,5"

				corner_left
					density = 1
					bottom_out/icon_state="2,5"
					top_a/icon_state="2,6"
					top_b/icon_state="2,7"

				corner_right
					density = 1
					bottom_out/icon_state="5,5"
					top_a/icon_state="5,6"
					top_b/icon_state="5,7";

			corners
				bottom_left/icon_state="corner1"
				bottom_right/icon_state="corner4"
				top_left/icon_state="corner2"
				top_right/icon_state="corner3"



				//edge
					//left/icon_state="left_edge"
					//middle/icon_state="middle_edge"
					//right/icon_state="right_edge"

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

		cliff
			top
				left
					top
						shadow_type=6
						Enter(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=EAST&&a.dir!=SOUTH)return Check_Dense(a)
									else return 0
							return Check_Dense(a)
						Exit(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=WEST&&a.dir!=NORTH)return 1
									else return 0
							return 1
					middle
						Enter(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=EAST)return Check_Dense(a)
									else return 0
							return Check_Dense(a)
						Exit(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=WEST)return 1
									else return 0
							return 1
					bottom
						Enter(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=EAST&&a.dir!=NORTH)return Check_Dense(a)
									else return 0
							return Check_Dense(a)
						Exit(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=WEST&&a.dir!=SOUTH)return 1
									else return 0
							return 1
				middle
					top
						shadow_type=5
						Enter(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=SOUTH)return Check_Dense(a)
									else return 0
							return Check_Dense(a)
						Exit(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=NORTH)return 1
									else return 0
							return 1
					bottom
						Enter(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=NORTH)return Check_Dense(a)
									else return 0
							return Check_Dense(a)
						Exit(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=SOUTH)return 1
									else return 0
							return 1
				right
					top
						shadow_type=4
						Enter(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=WEST&&a.dir!=SOUTH)return Check_Dense(a)
									else return 0
							return Check_Dense(a)
						Exit(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=EAST&&a.dir!=NORTH)return 1
									else return 0
							return 1
					middle
						shadow_type=3
						Enter(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=WEST)return Check_Dense(a)
									else return 0
							return Check_Dense(a)
						Exit(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=EAST)return 1
									else return 0
							return 1
					bottom
						shadow_type=3
						Enter(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=WEST&&a.dir!=NORTH)return Check_Dense(a)
									else return 0
							return Check_Dense(a)
						Exit(atom/a)
							if(a.density)
								if(istype(a,/mob))
									if(a.dir!=EAST&&a.dir!=SOUTH)return 1
									else return 0
							return 1

			rampsegs
				leftslope
					Enter(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=EAST)return Check_Dense(a)
								else return 0
						return Check_Dense(a)
					Exit(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=WEST)return 1
								else return 0
						return 1

				rightslope
					Enter(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=WEST)return Check_Dense(a)
								else return 0
						return Check_Dense(a)
					Exit(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=EAST)return 1
								else return 0
						return 1
			side
				bottom
					left
					middle
					right/shadow_type=1
				middle
					left
					middle
					right/shadow_type=2


		water
			icon='icons/map/turf/ocean/water.dmi'
			density=1
			icon_state = "2"
			New()
				..()
				for(var/turf/T in orange(1, src))
					if(T.jointag)
						T.Align()

	forest_autumn
		grass
			icon='icons/map/turf/forest_autumn/grass.dmi'
			name = "Forest Grass"
			grass_1/icon_state="1"
			grass_2/icon_state="2"
			grass_3/icon_state="3"
			grass_4/icon_state="4"
			grass_5/icon_state="5"
			jointag = "grass"
			jointagone = list("cliff", "snow", "ocean", "dirt", "road", "swamp")

			Extend(direction)
				var/list/U = underlayed
				if(direction == "center")
					var/ttype = pick(/turf/forest/grass/grass_1, /turf/forest/grass/grass_2, /turf/forest/grass/grass_3, /turf/forest/grass/grass_4, /turf/forest/grass/grass_5)
					new ttype(src)
					return

				var/turf/T = new/turf/forest/grass/edge(src)
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

			edge
				icon='icons/map/turf/forest_autumn/grass_edge.dmi'


		grass2
			icon='icons/map/turf/forest_autumn/grass_old.dmi'
			name = "Forest Grass"
			grass_1/icon_state="1"
			grass_2/icon_state="2"
			grass_3/icon_state="3"
			grass_4/icon_state="4"
			grass_5/icon_state="5"
			jointag = "grass"
			jointagone = list("cliff", "snow", "ocean", "dirt", "road", "swamp")

			Extend(direction)
				var/list/U = underlayed
				if(direction == "center")
					var/ttype = pick(/turf/forest/grass/grass_1, /turf/forest/grass/grass_2, /turf/forest/grass/grass_3, /turf/forest/grass/grass_4, /turf/forest/grass/grass_5)
					new ttype(src)
					return

				var/turf/T = new/turf/forest/grass/edge(src)
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

			edge
				icon='icons/map/turf/forest_autumn/grass_edge_old.dmi'


		grass_edge
			jointag = "grass"
			icon='icons/map/turf/forest_autumn/grass_edge.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			jointag = "grass"
			jointagone = list("cliff", "snow", "ocean", "dirt", "road")
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"

		grass_edge2
			jointag = "grass"
			icon='icons/map/turf/forest_autumn/grass_edge_old.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			jointag = "grass"
			jointagone = list("cliff", "snow", "ocean", "dirt", "road")
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"

	forest_dark
		grass
			icon='icons/map/turf/forest_dark/grass.dmi'
			name = "Forest Grass"
			grass_1/icon_state="1"
			grass_2/icon_state="2"
			grass_3/icon_state="3"
			grass_4/icon_state="4"
			grass_5/icon_state="5"
			jointag = "grass"
			jointagone = list("cliff", "snow", "ocean", "dirt", "road", "swamp")

			Extend(direction)
				var/list/U = underlayed
				if(direction == "center")
					var/ttype = pick(/turf/forest/grass/grass_1, /turf/forest/grass/grass_2, /turf/forest/grass/grass_3, /turf/forest/grass/grass_4, /turf/forest/grass/grass_5)
					new ttype(src)
					return

				var/turf/T = new/turf/forest/grass/edge(src)
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

			edge
				icon='icons/map/turf/forest_dark/grass_edge.dmi'


		grass_edge
			jointag = "grass"
			icon='icons/map/turf/forest_dark/grass_edge.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			jointag = "grass"
			jointagone = list("cliff", "snow", "ocean", "dirt", "road")
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"