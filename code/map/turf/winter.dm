turf
	winter
		snow
			icon='icons/map/turf/winter/snow.dmi'
			snow_1
				icon_state="1"
			snow_2
				icon_state="2"

			jointag = "snow"
			jointagone = list("cliff", "ocean", "dirt", "road")

			Extend(direction)
				var/list/U = underlayed
				if(direction == "center")
					var/ttype
					if(icon_state == "1")
						ttype = /turf/winter/snow/snow_1
					else
						ttype = /turf/winter/snow/snow_2
					new ttype(src)
					return

				var/turf/t = find_most_abundant(src, 1)
				var/turf/T = new/turf/winter/snow/edge(src)
				T.underlayed = U
				T.icon_state = direction
				if(istype(t, /turf/winter/ice))
					T.icon = 'icons/map/turf/winter/ice_edge.dmi'

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
				a/icon_state = "1"
				b/icon_state = "2"
				New()
					..()
					if(usr)
						AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()

			edge/icon='icons/map/turf/winter/snow_edge.dmi'


		snow_edge
			jointag = "snow"
			icon='icons/map/turf/winter/snow_edge.dmi'
			top_left/icon_state="top_left"
			top_right/icon_state="top_right"
			top/icon_state="top"
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
		ice
			icon='icons/map/turf/winter/ice.dmi'
			icon_state="ice"
			random
				New()
					..()
					if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()

		ice_edge
			icon='icons/map/turf/winter/ice_edge.dmi'
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
		cliff
			top
				icon='icons/map/turf/winter/cliff_top.dmi'
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
			side
				icon='icons/map/turf/winter/cliff_side.dmi'
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