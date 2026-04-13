// NOTE: Certain objects such as manholes and hero statues require you to use "Generate Instances From Icon-States" within the map editor itself

obj
	map
		village
			reaper_statue
				icon = 'icons/map/obj/village/reaper_statue.dmi'
				density = 1
				bound_width = 64
				bound_x = 32
				bound_height = 64
				layer = OVER_LAYER + 0.55
				pixel_y = 8

			dirt_pile
				icon = 'icons/map/turf/village/dirt_pile.dmi'
				icon_state = "1"
			gravestones
				small
					icon = 'icons/map/obj/village/gravestones_32x32.dmi'
					icon_state = "1"
				medium
					icon = 'icons/map/obj/village/gravestones_48x48.dmi'
					icon_state = "1"
				large
					icon = 'icons/map/obj/village/gravestones_64x64.dmi'
					icon_state = "1"
			hedges
				icon = 'icons/map/obj/village/hedges.dmi'
				icon_state = "0,0"
				density = 1
				// Use generate instances from icon_states for this one, and mine carts

			firepit
				icon = 'icons/map/obj/village/firepit.dmi'
				icon_state = "unlit"
				density = 1
			star
				icon = 'icons/map/obj/village/star.dmi'
				icon_state = "full"
				bound_width = 224
				bound_height = 64
				density = 1
				top
					icon_state = "top"
					layer = OVER_LAYER
				New()
					..()
					overlays += .top
			manhole
				icon = 'icons/map/obj/village/manholes.dmi'
				icon_state = "1"

			large_fountain
				icon = 'icons/map/obj/village/large_fountain.dmi'
				density = 1
				bound_width = 160
				bound_height = 160

			lion_statue
				icon = 'icons/map/obj/village/lionstatue.dmi'
				density = 1
				icon_state = "lion"
				pedestal
					icon_state = "pedestal"
					density = 0
			giant_fountain
				icon = 'icons/map/obj/village/giant_fountain.dmi'
				density = 1
				bound_width = 288
				bound_height = 224
				layer = OVER_LAYER
			lamppost
				icon='icons/map/obj/village/lamppost.dmi'
				density=1
				bound_height = 32
				layer = OVER_LAYER
				pixel_y = 8

			crystal_aether
				icon = 'icons/map/obj/village/crystal_aether.dmi'
				density = 1
				bound_height = 64
				bound_width = 96
				layer = OVER_LAYER
				pixel_y = 8

			hero_statues
				icon = 'icons/map/obj/village/hero_statues.dmi'
				icon_state = "warrior"
				density = 1
				bound_width = 64
				bound_x = 32
				bound_height = 64
				layer = OVER_LAYER
				pixel_y = 8




			runegates
				icon = 'icons/map/dungeon_gates.dmi'
				density = 1
				bound_width = 64
				bound_x = 32
				bound_height = 64
				layer = OVER_LAYER + 0.55
				//pixel_y = 8

				red
					icon_state = "red"
				blue
					icon_state = "blue"
				yellow
					icon_state = "yellow"
				red_inactive
					icon_state = "red_inactive"
				blue_inactive
					icon_state = "blue_inactive"
				yellow_inactive
					icon_state = "yellow_inactive"


			statues_meranthe
				icon = 'icons/statues_meranthe.dmi'
				density = 1
				bound_width = 64
				bound_x = 32
				bound_height = 64
				layer = OVER_LAYER + 0.55
				//pixel_y = 8

				enarr
					icon_state = "enarr"
				enarr_ruin
					icon_state = "enarr_ruin"
				mestra
					icon_state = "mestra"
				mestra_ruin
					icon_state = "mestra_ruin"
				nemea
					icon_state = "nemea"
				nemea_ruin
					icon_state = "nemea_ruin"
				ymir
					icon_state = "ymir"
				ymir_ruin
					icon_state = "ymir_ruin"
				athelios
					icon_state = "athelios"
				athelios_ruin
					icon_state = "athelios_ruin"

			statueslarge_meranthe
				icon = 'icons/statueslarge_meranthe.dmi'
				density = 1
				bound_width = 64
				bound_x = 32
				bound_height = 64
				layer = OVER_LAYER + 0.55
				//pixel_y = 8

				robed_dark
					icon_state = "robed_dark"
				robed_light
					icon_state = "robed_light"
				fae_dark
					icon_state = "fae_dark"
				fae_light
					icon_state = "fae_light"
				giant_dark
					icon_state = "giant_dark"
				giant_light
					icon_state = "giant_light"

			esshar_banners
				icon = 'icons/map/obj/village/esshar_banners.dmi'
				icon_state = "1" // To use the other states use 'Generate Instances from Icon States' inside of the map editor.

			metal_fence
				icon = 'icons/map/obj/village/metal_fence.dmi'
				density = 1
				one
					icon_state = "1"
				two
					icon_state = "2"
				three
					icon_state = "3"
				four
					icon_state = "4"
				five
					icon_state = "5"
				six
					icon_state = "6"
				seven
					icon_state = "7"
				eight
					icon_state = "8"
				nine
					icon_state = "9"
				ten
					icon_state = "10"
				eleven
					icon_state = "11"
				twelve
					icon_state = "12"
				thirteen
					icon_state = "13"
				fourteen
					icon_state = "14"
				fifteen
					icon_state = "15"
				sixteen
					icon_state = "16"
				seventeen
					icon_state = "17"
				eighteen
					icon_state = "18"
				nineteen
					icon_state = "19"
				twenty
					icon_state = "20"
				twentyone
					icon_state = "21"
				twentytwo
					icon_state = "22"
			banners
				layer = OVER_LAYER
				icon = 'icons/map/obj/village/banners.dmi'
				Byson
					icon_state = "byson"
				Danarium
					icon_state = "danarium"
				Frostvale
					icon_state = "frostvale"
				Nostvale
					icon_state = "nostvale"
				Tilandre
					icon_state = "tilandre"
				Valley
					icon_state = "valley"
			small_boat
				icon = 'icons/map/obj/village/small_boat.dmi'
				one
					top
						icon_state = "boat1_top"
					bottom
						icon_state = "boat1_bottom"
				two
					top
						icon_state = "boat2_top"
					bottom
						icon_state = "boat2_bottom"
				three
					top
						icon_state = "boat3_top"
					bottom
						icon_state = "boat3_bottom"
				four
					top
						icon_state = "boat4_top"
					bottom
						icon_state = "boat4_bottom"
			smalltent_red
				icon = 'icons/map/obj/village/smalltent_red.dmi'
				icon_state = "bottom"
				density = 1
				New()
					..()
					overlays += image(src.icon,"top",layer=OVER_LAYER)
			pier
				icon = 'icons/map/obj/village/pier.dmi'
				pier_left
					icon_state = "pier_left"
				pier_middle
					icon_state = "pier_middle"
				pier_right
					icon_state = "pier_right"
				b
					icon_state = "b"
				bl
					icon_state = "bl"
				br
					icon_state = "br"
				left
					icon_state = "left"
				middle
					icon_state = "middle"
				right
					icon_state = "right"
				tl
					icon_state = "tl"
				t
					icon_state = "t"
				tr
					icon_state = "tr"

			dead_fish
				icon = 'icons/map/obj/village/dead_fish.dmi'
				icon_state = "3,6"
				two
					icon_state = "4,6"
				three
					icon_state = "5,6"
			buckets
				icon = 'icons/map/obj/village/buckets.dmi'
				icon_state = "1"
				full
					icon_state = "2"
			brown_rocks
				icon = 'icons/map/obj/village/brown_rocks.dmi'
				density = 0
				icon_state = "1"
				two
					icon_state = "2"
				three
					icon_state = "3"
				four
					icon_state = "4"
				five
					icon_state = "5"
				six
					icon_state = "6"
				seven
					icon_state = "7"
			lamp
				icon='icons/map/obj/village/lamp.dmi'
				icon_state="bottom"
				density=1

			window
				icon='icons/map/obj/village/window.dmi'
				window_1/icon_state="1"
				window_2/icon_state="2"
				window_3/icon_state="3"
				window_4/icon_state="4"
				window_5/icon_state="5"
				window_6/icon_state="6"
				window_7/icon_state="7"
				window_8/icon_state="8"
			statue
				density=1
				pixel_x=2
				var/needs_overlay = 1 // If the statue still uses the old overlaying effect instead of bounds shifting.
				New()
					..()
					if(needs_overlay)
						var/image/I=image(icon,src,"[icon_state]_top",OVER_LAYER)
						overlays+=I
				mage
					icon='icons/map/obj/village/statue_mage.dmi'
					left/icon_state="left"
					right/icon_state="right"
				soldier
					icon='icons/map/obj/village/statue_soldier.dmi'
					left/icon_state="left"
					right/icon_state="right"
				angel
					icon='icons/map/obj/village/statue_angel.dmi'
					left/icon_state="left"
					right/icon_state="right"
				dragon
					icon='icons/map/obj/village/statue_dragon.dmi'
					left/icon_state="left"
					right/icon_state="right"
				kraus
					needs_overlay = 0
					icon='icons/map/obj/village/statue_kraus.dmi'
					pixel_x = -28
					bounds = "1,1 to 64,64"
					layer = OVER_LAYER

			fountain
				density=1
				pixel_x=2
				icon='icons/map/obj/village/fountain.dmi'
				New()
					..()
					var/turf/T=get_step(src,EAST)
					if(T)T.density=1
					var/image/I=image(icon,src,"top",OVER_LAYER)
					overlays+=I

				oscuri
					density=1
					icon='icons/map/obj/village/fountain_oscuri.dmi'
					pixel_x = 16


			well
				icon='icons/map/obj/village/well.dmi'
				icon_state="well"
				density=1

			stall
				icon='icons/map/obj/village/stall.dmi'
				density=1
				left/icon_state="1"
				middle/icon_state="2"
				right/icon_state="3"
				back_left/icon_state="4"
				back_right/icon_state="5"
			chimney
				icon='icons/map/obj/village/chimney.dmi'
				left/icon_state="left"
				right/icon_state="right"
			stall_top
				layer=OVER_LAYER
				jointag = "stalltop"
				reverse = 1
				Extend(direction)
					switch(direction)
						if("center") direction = "middle"
						if("bl") direction = "bottom_left"
						if("br") direction = "bottom_right"
						if("tr") direction = "top_right"
						if("tl") direction = "top_left"
					if(direction == "center") direction = "middle"
					icon_state = direction

				red
					icon='icons/map/obj/village/stall_top_red.dmi'
					top_left/icon_state="top_left"
					top/icon_state="top"
					top_right/icon_state="top_right"
					left/icon_state="left"
					middle/icon_state="middle"
					right/icon_state="right"
					bottom_left/icon_state="bottom_left"
					bottom/icon_state="bottom"
					bottom_right/icon_state="bottom_right"
					random
						New()
							..()
							if(usr)
								AddMapEvent(list(x, y, z), type, 0, usr.ckey)
							for(var/obj/map/village/stall_top/T in orange(1, src))
								T.Align()
							Align()

				blue
					icon='icons/map/obj/village/stall_top_blue.dmi'
					top_left/icon_state="top_left"
					top/icon_state="top"
					top_right/icon_state="top_right"
					left/icon_state="left"
					middle/icon_state="middle"
					right/icon_state="right"
					bottom_left/icon_state="bottom_left"
					bottom/icon_state="bottom"
					bottom_right/icon_state="bottom_right"

					random
						New()
							..()
							if(usr)
								AddMapEvent(list(x, y, z), type, 0, usr.ckey)
							for(var/obj/map/village/stall_top/T in orange(1, src))
								T.Align()
							Align()