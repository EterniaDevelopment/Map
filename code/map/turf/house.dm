turf
	house
		wooden_door
			icon = 'icons/map/turf/house/wooden_door.dmi'
			icon_state = "1"
		wooden_window
			icon = 'icons/map/turf/house/wooden_window.dmi'
			icon_state = "small1"
		horizontal
			icon = 'icons/map/turf/house/horizontal.dmi'
			dark
				left
					icon_state = "dark_left"
					top
						icon_state = "dark_top_left"
				middle
					icon_state = "dark_middle"
					top
						icon_state = "dark_top"
				right
					icon_state = "dark_right"
					top
						icon_state = "dark_top_right"
			light
				left
					icon_state = "light_left"
					top
						icon_state = "light_top_left"
				middle
					icon_state = "light_middle"
					top
						icon_state = "dark_top"
				right
					icon_state = "dark_right"
					top
						icon_state = "dark_top_right"

			left
				icon_state = "left"
				bottom
					icon_state = "bottom_left"
				top
					icon_state = "top_left"

			right
				icon_state = "right"
				bottom
					icon_state = "bottom_right"
				top
					icon_state = "top_right"

			old
				left
					icon_state = "old_left"
					bottom
						icon_state = "old_bottom_left"
					top
						icon_state = "old_top_left"

				right
					icon_state = "old_right"
					bottom
						icon_state = "old_bottom_right"
					top
						icon_state = "old_top_right"
		ignore = 1
		floor/icon='icons/map/turf/house/floor.dmi'
		wall
			density=1
			icon='icons/map/turf/house/wall.dmi'
			bottom
				left/icon_state="bottom_left"
				bottom_1/icon_state="bottom_1"
				bottom_2/icon_state="bottom_2"
				right/icon_state="bottom_right"
				door
					icon='icons/map/turf/house/door.dmi'
					open
						icon_state="open"
						density=0
					close/icon_state="close"
			middle
				left/icon_state="left"
				middle_1/icon_state="middle_1"
				middle_2/icon_state="middle_2"
				right/icon_state="right"
				door
					icon_state="door"
					layer=OVER_LAYER
					density=0
		roof
			icon='icons/map/turf/house/roof.dmi'
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
					new /turf/house/roof/middle(src)
					return

				var/turf/T = new/turf/house/roof/edge(src)
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