turf
	white_castle
		ignore = 1
		floor/icon='icons/map/turf/castle/black/floor.dmi'
		wall
			density=1
			icon='icons/map/turf/castle/white/whiteexteriorwall.dmi'
			bottom
				left/icon_state="bottom_left"
				middle/icon_state="bottom"
				right/icon_state="bottom_right"
			middle
				left/icon_state="left"
				middle/icon_state="middle"
				middle/mosscracks1/icon_state="moss/cracks"
				middle/mosscracks2/icon_state="moss/cracks2"
				middle/cracks1/icon_state="cracks1"
				middle/cracks2/icon_state="cracks2"
				right/icon_state="right"
			top
				left/icon_state="top_left"
				middle/icon_state="top"
				middle/moss1/icon_state="topmoss1"
				middle/moss2/icon_state="topmoss2"
				middle/cracks/icon_state="topcracks"
				right/icon_state="top_right"
		roof
			icon='icons/map/turf/castle/white/whiteroof.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left
				bottom_left/icon_state="left_1"
				left/icon_state="left_2"
				top_left/icon_state="left_3"
			right
				bottom_right/icon_state="right_1"
				right/icon_state="right_2"
				top_right/icon_state="right_3"
			corner
				tl
					icon_state="tl"
				tr
					icon_state="tr"
		exteriorroof
			icon='icons/map/turf/castle/white/whiteExteriorroof.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left
				bottom_left/icon_state="left_1"
				left/icon_state="left_2"
				top_left/icon_state="left_3"
			right
				bottom_right/icon_state="right_1"
				right/icon_state="right_2"
				top_right/icon_state="right_3"
			corner
				tl
					icon_state="tl"
				tr
					icon_state="tr"
	black_castle
		ignore = 1
		floor/icon='icons/map/turf/castle/black/floor.dmi'
		wall
			density=1
			icon='icons/map/turf/castle/black/wall.dmi'
			bottom
				left/icon_state="bottom_left"
				middle/icon_state="bottom"
				right/icon_state="bottom_right"
			middle
				left/icon_state="left"
				middle/icon_state="middle"
				middle/mosscracks1/icon_state="moss/cracks"
				middle/mosscracks2/icon_state="moss/cracks2"
				middle/cracks1/icon_state="cracks1"
				middle/cracks2/icon_state="cracks2"
				right/icon_state="right"
			top
				left/icon_state="top_left"
				middle/icon_state="top"
				middle/moss1/icon_state="topmoss1"
				middle/moss2/icon_state="topmoss2"
				middle/cracks/icon_state="topcracks"
				right/icon_state="top_right"
		roof
			icon='icons/map/turf/castle/black/roof.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left
				bottom_left/icon_state="left_1"
				left/icon_state="left_2"
				top_left/icon_state="left_3"
			right
				bottom_right/icon_state="right_1"
				right/icon_state="right_2"
				top_right/icon_state="right_3"
			corner
				tl
					icon_state="tl"
				tr
					icon_state="tr"
	castle
		ignore = 1
		floor/icon='icons/map/turf/castle/floor.dmi'
		wall
			density=1
			icon='icons/map/turf/castle/wall.dmi'
			bottom
				left/icon_state="bottom_left"
				middle/icon_state="bottom"
				right/icon_state="bottom_right"
			middle
				left/icon_state="left"
				middle/icon_state="middle"
				middle/mosscracks1/icon_state="moss/cracks"
				middle/mosscracks2/icon_state="moss/cracks2"
				middle/cracks1/icon_state="cracks1"
				middle/cracks2/icon_state="cracks2"
				right/icon_state="right"
			top
				left/icon_state="top_left"
				middle/icon_state="top"
				middle/moss1/icon_state="topmoss1"
				middle/moss2/icon_state="topmoss2"
				middle/cracks/icon_state="topcracks"
				right/icon_state="top_right"
		roof
			icon='icons/map/turf/castle/roof.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left
				bottom_left/icon_state="left_1"
				left/icon_state="left_2"
				top_left/icon_state="left_3"
			right
				bottom_right/icon_state="right_1"
				right/icon_state="right_2"
				top_right/icon_state="right_3"
			corner
				tl
					icon_state="tl"
				tr
					icon_state="tr"

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

		tower
			icon='icons/map/turf/castle/tower.dmi'
			density=1
			bottom
				left/icon_state="bottom_left"
				right/icon_state="bottom_right"
			middle
				left/icon_state="left"
				right/icon_state="right"

			Align(list/images_to_underlay = null)
				if(images_to_underlay)
					underlayed = images_to_underlay

				for(var/image/I in underlayed)
					I.loc = src
					underlays.Add(I)
				for(var/N in underlayed)
					if(!(N in underlays))
						underlays.Add(N)

	castle_int
		ignore = 1
		floor/icon='icons/map/turf/castle_int/floor.dmi'
		wall
			icon='icons/map/turf/castle_int/wall.dmi'
			density=1
			bottom
				left/icon_state="bottom_left"
				middle/icon_state="bottom"
				right/icon_state="bottom_right"
				door
					icon='icons/map/turf/castle_int/door.dmi'
					open
						icon_state="open"
						density=0
					close/icon_state="close"
			middle
				left/icon_state="left"
				middle/icon_state="middle"
				right/icon_state="right"
				door
					icon='icons/map/turf/castle_int/door.dmi'
					open
						icon_state="open_top"
						layer=OVER_LAYER
						density=0
						New()
							..()
							var/image/I=image(icon,src,"open_under",TURF_LAYER)
							underlays+=I
					close/icon_state="close_top"
			top
				left/icon_state="top_left"
				middle/icon_state="top"
				right/icon_state="top_right"
				door
					icon='icons/map/turf/castle_int/door.dmi'
					open
						icon_state="open_top_2"
						layer=OVER_LAYER
						density=0
						New()
							..()
							var/image/I=image(icon,src,"open_under",TURF_LAYER)
							underlays+=I
					close/icon_state="close_top_2"
		roof
			icon='icons/map/turf/castle_int/roof.dmi'
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

			Extend(direction)
				switch(direction)
					if("tl") direction = "top_left"
					if("tr") direction = "top_right"
					if("bl") direction = "bottom_left"
					if("br") direction = "bottom_right"
					if("top_left") direction = "tl"
					if("top_right") direction = "tr"
					if("bottom_left") direction = "bl"
					if("bottom_right") direction = "br"

				if(direction == "center")
					new /turf/castle_int/roof/middle(src)
					return

				var/turf/T = new/turf/castle_int/roof/edge(src)
				T.icon_state = direction


			random
				New()
					..()
					if(usr)
						AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()

			edge

		rug
			icon='icons/map/turf/castle_int/rug.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			reverse = 1
			noignore = 1
			blue
				icon='icons/map/turf/castle_int/rug2.dmi'
				top_left/icon_state="top_left"
				top/icon_state="top"
				top_right/icon_state="top_right"
				left/icon_state="left"
				middle/icon_state="middle"
				right/icon_state="right"
				bottom_left/icon_state="bottom_left"
				bottom/icon_state="bottom"
				bottom_right/icon_state="bottom_right"

				Extend(direction)
					switch(direction)
						if("tl") direction = "top_left"
						if("tr") direction = "top_right"
						if("bl") direction = "bottom_left"
						if("br") direction = "bottom_right"
					var/list/U = underlayed
					if(direction == "center")
						new /turf/castle_int/rug/blue/middle(src)
						return

					var/turf/T = new/turf/castle_int/rug/blue/edge(src)
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
						if(!T.underlayed)
							T.underlayed = list()
						T.underlayed += I
						I.loc = T
						T.underlays.Add(I)

				random
					icon_state = "middle"
					New()
						..()
						if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
						for(var/turf/T in orange(1, src))
							if(T.jointag)
								T.Align()
						Align()

				edge

			jointag = "dirt"
			Extend(direction)
				switch(direction)
					if("tl") direction = "top_left"
					if("tr") direction = "top_right"
					if("bl") direction = "bottom_left"
					if("br") direction = "bottom_right"

				var/list/U = underlayed
				if(direction == "center")
					new /turf/castle_int/rug/middle(src)
					return

				var/turf/T = new/turf/castle_int/rug/edge(src)
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
					if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()
					Align()

			edge

		ledge
			icon='icons/map/turf/castle_int/ledge.dmi'
			density=1
			top_left/icon_state="top_left"
			top_right/icon_state="top_right"
			left_1/icon_state="left_1"
			left_2/icon_state="left_2"
			middle/icon_state="middle"
			right_1/icon_state="right_1"
			right_2/icon_state="right_2"
			bottom_left/icon_state="bottom_left"
			bottom_right/icon_state="bottom_right"
		stairs
			icon='icons/map/turf/castle_int/stairs.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
		column
			icon='icons/map/turf/castle_int/column.dmi'
			roof
				icon_state="roof"
				density=0
				layer=OVER_LAYER
			top
				icon_state="top"
				density=0
				layer=OVER_LAYER
			middle
				icon_state="middle"
				density=0
				layer=OVER_LAYER
			bottom
				icon_state="bottom"
				density=1
//white castle stuff starts here
	white_castle_int
		ignore = 1
		floor/icon='icons/map/turf/graytile.dmi'
		wall
			icon='icons/map/turf/castle_int/whiteinteriorwall.dmi'
			density=1
			bottom
				left/icon_state="bottom_left"
				middle/icon_state="bottom"
				right/icon_state="bottom_right"
				door
					icon='icons/map/turf/castle_int/whitedoor.dmi'
					open
						icon_state="open"
						density=0
					close/icon_state="close"
			middle
				left/icon_state="left"
				middle/icon_state="middle"
				right/icon_state="right"
				door
					icon='icons/map/turf/castle_int/whitedoor.dmi'
					open
						icon_state="open_top"
						layer=OVER_LAYER
						density=0
						New()
							..()
							var/image/I=image(icon,src,"open_under",TURF_LAYER)
							underlays+=I
					close/icon_state="close_top"
			top
				left/icon_state="top_left"
				middle/icon_state="top"
				right/icon_state="top_right"
				door
					icon='icons/map/turf/castle_int/whitedoor.dmi'
					open
						icon_state="open_top_2"
						layer=OVER_LAYER
						density=0
						New()
							..()
							var/image/I=image(icon,src,"open_under",TURF_LAYER)
							underlays+=I
					close/icon_state="close_top_2"
		whiteroof
			icon='icons/map/turf/castle_int/whiteroof.dmi'
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

			Extend(direction)
				switch(direction)
					if("tl") direction = "top_left"
					if("tr") direction = "top_right"
					if("bl") direction = "bottom_left"
					if("br") direction = "bottom_right"
					if("top_left") direction = "tl"
					if("top_right") direction = "tr"
					if("bottom_left") direction = "bl"
					if("bottom_right") direction = "br"

				if(direction == "center")
					new /turf/castle_int/roof/middle(src)
					return

				var/turf/T = new/turf/castle_int/roof/edge(src)
				T.icon_state = direction


			random
				New()
					..()
					if(usr)
						AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()

			edge
		rug
			icon='icons/map/turf/castle_int/rug.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			reverse = 1
			noignore = 1
			green
				icon='icons/map/turf/castle_int/rug3.dmi'
				top_left/icon_state="top_left"
				top/icon_state="top"
				top_right/icon_state="top_right"
				left/icon_state="left"
				middle/icon_state="middle"
				right/icon_state="right"
				bottom_left/icon_state="bottom_left"
				bottom/icon_state="bottom"
				bottom_right/icon_state="bottom_right"

				Extend(direction)
					switch(direction)
						if("tl") direction = "top_left"
						if("tr") direction = "top_right"
						if("bl") direction = "bottom_left"
						if("br") direction = "bottom_right"
					var/list/U = underlayed
					if(direction == "center")
						new /turf/white_castle_int/rug/green/middle(src)
						return

					var/turf/T = new/turf/white_castle_int/rug/green/edge(src)
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
						if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
						for(var/turf/T in orange(1, src))
							if(T.jointag)
								T.Align()
						Align()

				edge

			jointag = "dirt"
			Extend(direction)
				switch(direction)
					if("tl") direction = "top_left"
					if("tr") direction = "top_right"
					if("bl") direction = "bottom_left"
					if("br") direction = "bottom_right"

				var/list/U = underlayed
				if(direction == "center")
					new /turf/castle_int/rug/middle(src)
					return

				var/turf/T = new/turf/castle_int/rug/edge(src)
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
					if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()
					Align()

			edge
		ledge
			icon='icons/map/turf/castle_int/whiteledge.dmi'
			density=1
			top_left/icon_state="top_left"
			top_right/icon_state="top_right"
			left_1/icon_state="left_1"
			left_2/icon_state="left_2"
			middle/icon_state="middle"
			right_1/icon_state="right_1"
			right_2/icon_state="right_2"
			bottom_left/icon_state="bottom_left"
			bottom_right/icon_state="bottom_right"
		stairs
			icon='icons/map/turf/castle_int/whitestairs.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			top_right/icon_state="top_right"
			left/icon_state="left"
			middle/icon_state="middle"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
		column
			icon='icons/map/turf/castle_int/whitecolumn.dmi'
			roof
				icon_state="roof"
				density=0
				layer=OVER_LAYER
			top
				icon_state="top"
				density=0
				layer=OVER_LAYER
			middle
				icon_state="middle"
				density=0
				layer=OVER_LAYER
			bottom
				icon_state="bottom"
				density=1