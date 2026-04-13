turf
	swamp
		grass
			icon='icons/map/turf/swamp/grass.dmi'
			grass_1/icon_state="1"
			grass_2/icon_state="2"
			grass_3/icon_state="3"
			grass_4/icon_state="4"
			grass_5/icon_state="5"
			grass_6/icon_state="6"
			grass_7/icon_state="7"
			jointag = "swamp"
			jointagone = list("cliff", "snow", "ocean", "dirt", "road", "swampwater")

			Extend(direction)
				var/list/U = underlayed
				if(direction == "center")
					if(icon == 'icons/map/turf/swamp/grass.dmi' || icon == 'icons/map/turf/swamp/rocks.dmi') return // no need to redo
					var/ttype = pick(/turf/swamp/grass/grass_1, /turf/swamp/grass/grass_2, /turf/swamp/grass/grass_3, /turf/swamp/grass/grass_4, /turf/swamp/grass/grass_5, /turf/swamp/grass/grass_6, /turf/swamp/grass/grass_7)
					new ttype(src)
					return

				var/turf/T = new/turf/swamp/grass/edge(src)
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
				g1/icon_state="1"
				g2/icon_state="2"
				g3/icon_state="3"
				g4/icon_state="4"
				g5/icon_state="5"
				g6/icon_state="6"
				g7/icon_state="7"
				rocks
					icon='icons/map/turf/swamp/rocks.dmi'
				New()
					..()
					if(icon == 'icons/map/turf/swamp/rocks.dmi')
						icon_state = "[rand(1,6)]"
					if(usr)
						AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()

			edge
				icon='icons/map/turf/swamp/grass_edge.dmi'

		grass_edge
			icon='icons/map/turf/swamp/grass_edge.dmi'
			top_left/icon_state="top_left"
			top/icon_state="top"
			left/icon_state="left"
			right/icon_state="right"
			bottom_left/icon_state="bottom_left"
			bottom/icon_state="bottom"
			bottom_right/icon_state="bottom_right"
			top_right/icon_state="top_right"
			jointag = "swamp"
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"
		rocks
			icon='icons/map/turf/swamp/rocks.dmi'
			rocks_1/icon_state="1"
			rocks_2/icon_state="2"
			rocks_3/icon_state="3"
			rocks_4/icon_state="4"
			rocks_5/icon_state="5"
			rocks_6/icon_state="6"
			jointag = "swamp"
		water
			icon='icons/map/turf/swamp/water.dmi'
			icon_state="water"
			density=1
			jointag = "swampwater"
			reverse = 1
			rock
				rock_1/icon_state="rock_1"
				rock_2/icon_state="rock_2"
				rock_3/icon_state="rock_3"
				rock_4
					icon_state="rock_4"
					density=0
				rock_5
					icon_state="rock_5"
					density=0
				rock_6
					icon_state="rock_6"
					density=0
			lilypad
				lilypad_1/icon_state="lilypad_1"
				lilypad_2/icon_state="lilypad_2"
				lilypad_3/icon_state="lilypad_3"
				lilypad_4/icon_state="lilypad_4"

			Extend(direction)
				switch(direction)
					if("tl") direction = "top_left"
					if("tr") direction = "top_right"
					if("bl") direction = "bottom_left"
					if("br") direction = "bottom_right"
					if("top_right") direction = "tr"
					if("top_left") direction = "tl"
					if("bottom_left") direction = "bl"
					if("bottom_right") direction = "br"

				var/list/U = underlayed
				if(direction == "center")
					new /turf/swamp/water(src)
					return

				var/turf/T = new/turf/swamp/water/edge(src)
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
				New()
					..()
					if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)
					for(var/turf/T in orange(1, src))
						if(T.jointag)
							T.Align()

			edge/icon = 'icons/map/turf/swamp/water_edge.dmi'

		newrocks
			jointag = "swampwater"
			reverse = 1
			dense
				name = "denserock"
				density = 1

			icon='icons/map/turf/swamp/water_edge.dmi'

			Extend(direction)
				var/rockid
				if(name == "denserock")
					rockid = 1
				else
					rockid = rand(2,3)
				switch(direction)
					if("center")
						icon='icons/map/turf/swamp/water.dmi'
						if(name == "denserock")
							rockid = rand(1,3)
						else
							rockid = rand(4,6)
						icon_state = "rock_[rockid]"
					if("tr", "tl", "br", "bl", "top_right", "bottom_right", "top_left", "bottom_left")
						new /turf/swamp/water/random(src)
					else
						icon_state = "[direction]_rock_[rockid]"
			New()
				..()
				if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)

		newlilypads
			jointag = "swampwater"
			reverse = 1
			icon='icons/map/turf/swamp/water.dmi'

			Extend(direction)
				var/lilyid = rand(1,4)
				switch(direction)
					if("center")
						icon_state = "lilypad_[lilyid]"
					else
						new /turf/swamp/water/random(src)
			New()
				..()
				if(usr) AddMapEvent(list(x, y, z), type, 0, usr.ckey)

		water_edge
			icon='icons/map/turf/swamp/water_edge.dmi'
			jointag = "swampwater"
			density=1
			top_left/icon_state="top_left"
			top
				icon_state="top"
				rock_1/icon_state="top_rock_1"
				rock_2
					icon_state="top_rock_2"
					density=0
				rock_3
					icon_state="top_rock_3"
					density=0
			top_right/icon_state="top_right"
			left
				icon_state="left"
				rock_1/icon_state="left_rock_1"
				rock_2
					icon_state="left_rock_2"
					density=0
				rock_3
					icon_state="left_rock_3"
					density=0
			right
				icon_state="right"
				rock_1/icon_state="right_rock_1"
				rock_2
					icon_state="right_rock_2"
					density=0
				rock_3
					icon_state="right_rock_3"
					density=0
			bottom_left/icon_state="bottom_left"
			bottom
				icon_state="bottom"
				rock_1/icon_state="bottom_rock_1"
				rock_2
					icon_state="bottom_rock_2"
					density=0
				rock_3
					icon_state="bottom_rock_3"
					density=0
			bottom_right/icon_state="bottom_right"
			corner
				tl/icon_state="tl"
				tr/icon_state="tr"
				bl/icon_state="bl"
				br/icon_state="br"