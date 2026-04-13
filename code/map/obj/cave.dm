obj/map/crystals_big
	icon='icons/map/CrystalsBig.dmi'
	crystal_1/icon_state="1"
	crystal_2/icon_state="2"
	crystal_3/icon_state="3"
	crystal_4/icon_state="4"
	crystal_5/icon_state="5"
	crystal_6/icon_state="6"
	crystal_7/icon_state="7"
obj/map/crystals_medium
	icon='icons/map/CrystalsMedium.dmi'
	crystal_1/icon_state="1"
	crystal_2/icon_state="2"
	crystal_3/icon_state="3"
	crystal_4/icon_state="4"
	crystal_5/icon_state="5"
	crystal_6/icon_state="6"
	crystal_7/icon_state="7"
obj/map/crystals_small
	icon='icons/map/CrystalsSmall.dmi'
	crystal_1/icon_state="1"
	crystal_2/icon_state="2"
	crystal_3/icon_state="3"
	crystal_4/icon_state="4"
	crystal_5/icon_state="5"
	crystal_6/icon_state="6"
	crystal_7/icon_state="7"


obj
	map
		cave
			//become_visual = 2
			mine_tracks
				icon = 'icons/map/obj/cave/mine_tracks.dmi'
				icon_state = "0,0"
				New()
					if(!density)
						if(isturf(loc) && loc.density) loc.density = 0
					..()
			ladder
				icon = 'icons/map/obj/cave/ladder.dmi'
				top
					icon_state = "top"
				middle
					icon_state = "middle"
				bottom
					icon_state = "bottom"
				New()
					if(!density)
						if(isturf(loc) && loc.density) loc.density = 0
					..()
			door
				outside_1
					icon='icons/map/obj/cave/exit_1.dmi'
					icon_state="exit"
				outside_2
					icon='icons/map/obj/cave/exit_2.dmi'
					icon_state="exit"
				inside_1
					icon='icons/map/obj/cave/door_1.dmi'
					icon_state="door"
				inside_2
					icon='icons/map/obj/cave/door_2.dmi'
					icon_state="door"
			stalagmite
				//become_visual = 1
				stalagmite_1
					icon='icons/map/obj/cave/stalagmite_1.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
				stalagmite_black
					icon='icons/map/obj/cave/stalagmite_3.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
				stalagmite_2
					icon='icons/map/obj/cave/stalagmite_2.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
					layer = MOB_LAYER
			rocks
				icon = 'icons/map/obj/cave/rocks.dmi'
				density = 1
				rock1/icon_state = "rock1"
				rock2/icon_state = "rock2"
				rock3/icon_state = "rock3"


		cave_beach
			//become_visual = 1
			door
				outside_1
					icon='icons/map/obj/cave_beach/exit_1.dmi'
					icon_state="exit"
				outside_2
					icon='icons/map/obj/cave_beach/exit_2.dmi'
					icon_state="exit"
				inside_1
					icon='icons/map/obj/cave_beach/door_1.dmi'
					icon_state="door"
				inside_2
					icon='icons/map/obj/cave_beach/door_2.dmi'
					icon_state="door"
			stalagmite
				stalagmite_1
					icon='icons/map/obj/cave_beach/stalagmite_1.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
				stalagmite_black
					icon='icons/map/obj/cave_beach/stalagmite_3.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
				stalagmite_2
					icon='icons/map/obj/cave_beach/stalagmite_2.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
					layer = MOB_LAYER

		cave_crystal
		//	become_visual = 1
			door
				outside_1
					icon='icons/map/obj/cave_crystal/exit_1.dmi'
					icon_state="exit"
				outside_2
					icon='icons/map/obj/cave_crystal/exit_2.dmi'
					icon_state="exit"
				inside_1
					icon='icons/map/obj/cave_crystal/door_1.dmi'
					icon_state="door"
				inside_2
					icon='icons/map/obj/cave_crystal/door_2.dmi'
					icon_state="door"
			stalagmite
				stalagmite_1
					icon='icons/map/obj/cave_crystal/stalagmite_1.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
				stalagmite_black
					icon='icons/map/obj/cave_crystal/stalagmite_3.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
				stalagmite_2
					icon='icons/map/obj/cave_crystal/stalagmite_2.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
					New()
						OrientLayer(MOB_LAYER)
						..()

		cave_ice
		//	become_visual = 1
			door
				outside_1
					icon='icons/map/obj/cave_ice/exit_1.dmi'
					icon_state="exit"
				outside_2
					icon='icons/map/obj/cave_ice/exit_2.dmi'
					icon_state="exit"
				inside_1
					icon='icons/map/obj/cave_ice/door_1.dmi'
					icon_state="door"
				inside_2
					icon='icons/map/obj/cave_ice/door_2.dmi'
					icon_state="door"
			stalagmite
				stalagmite_1
					icon='icons/map/obj/cave_ice/stalagmite_1.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
				stalagmite_black
					icon='icons/map/obj/cave_ice/stalagmite_3.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
				stalagmite_2
					icon='icons/map/obj/cave_ice/stalagmite_2.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
					New()
						IMAGECHECK(icon)
						OrientLayer(MOB_LAYER)
						..()

		cave_volcano
		//	become_visual = 1
			/*lava_light
				icon = 'icons/map/editor/light.dmi'
				invisibility = 100
				layer = 100

				New()
					light = getLight(loc,2)
					//light.loc = loc
					light.color = rgb(40, 5, 5)
					//light.transform = matrix() * 2
					..()*/
			door
				outside_1
					icon='icons/map/obj/cave_volcano/exit_1.dmi'
					icon_state="exit"
				outside_2
					icon='icons/map/obj/cave_volcano/exit_2.dmi'
					icon_state="exit"
				inside_1
					icon='icons/map/obj/cave_volcano/door_1.dmi'
					icon_state="door"
				inside_2
					icon='icons/map/obj/cave_volcano/door_2.dmi'
					icon_state="door"
			stalagmite
				stalagmite_1
					icon='icons/map/obj/cave_volcano/stalagmite_1.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
				stalagmite_black
					icon='icons/map/obj/cave_volcano/stalagmite_3.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
				stalagmite_2
					icon='icons/map/obj/cave_volcano/stalagmite_2.dmi'
					icon_state="stalagmite"
					density=1
					pixel_y=4
					New()
						OrientLayer(MOB_LAYER)
						..()

			cave_extra
				density=1
				icon='icons/map/turf/cave/cave_extra.dmi'
				cave_bottom
					icon_state="cave_bottom"
				cave_bottom_right
					icon_state="cave_bottom_right"
				cave_bottom_left
					icon_state="cave_bottom_left"
				cave_top_left
					icon_state="cave_top_left"
				cave_top_right
					icon_state="cave_top_right"
				silcave_bottom_left
					icon_state="silcave_bottom_left"
				silcave_bottom
					icon_state="silcave_bottom"
				silcave_bottom_right
					icon_state="silcave_bottom_right"
				silcave_top_left
					icon_state="silcave_top_left"
				silcave_top_right
					icon_state="silcave_top_right"
				silcave_top_left_2
					icon_state="silcave_top_left_2"
				silcave_top_right_2
					icon_state="silcave_top_right_2"
				sandcave_bottom_left
					icon_state="sandcave_bottom_left"
				sandcave_bottom
					icon_state="sandcave_bottom"
				sandcave_bottom_right
					icon_state="sandcave_bottom_right"
				sandcave_top_left
					icon_state="sandcave_top_left"
				sandcave_top_right
					icon_state="sandcave_top_right"
				sandcave_top_left_2
					icon_state="sandcave_top_left_2"
				sandcave_top_right_2
					icon_state="sandcave_top_right_2"
				dark
					icon_state ="dark_bottom"
					dark_bottom_left
						icon_state ="dark_bottom_left"
					dark_bottom_right
						icon_state ="dark_bottom_right"
					dark_top_left
						icon_state ="dark_top_left"
					dark_top_right
						icon_state ="dark_top_right"


			lavafall
				icon = 'icons/map/obj/cave_volcano/lavafall.dmi'
				density = 0
				layer = 4
				top
					icon_state = "1"
				middle
					icon_state = "2"
				middle2
					icon_state = "3"
				bottom
					icon_state = "4"


			hole_entrance
				icon = 'icons/map/obj/cave/hole.dmi'
				icon_state = "hole"

				ladder
					icon_state = "ladder"
		cave_dark
		//	become_visual = 1
			door
				wide
					icon='icons/map/obj/cave_dark/wide_door.dmi'
					entrance
						icon_state="entrance"
					exit
						icon_state="exit"
				thin
					icon='icons/map/obj/cave_dark/thin_door.dmi'
					entrance
						icon_state="entrance"
					exit
						icon_state="exit"
			stalagmite
				icon='icons/map/obj/cave_dark/stalagmite.dmi'
				density=1
				stalagmite_1
					icon_state="stalagmite_1"
				stalagmite_2
					icon_state="stalagmite_2"
					layer = MOB_LAYER
			rocks
				icon='icons/map/obj/cave_dark/rocks.dmi'
				small
					rock_1
						icon_state="rock_1"
					rock_2
						icon_state="rock_2"
					rock_3
						icon_state="rock_3"
					rock_4
						icon_state="rock_4"
					rock_5
						icon_state="rock_5"
					rock_6
						icon_state="rock_6"
				big
					density=1
					bigrock_1
						icon_state="bigrock_1"
					bigrock_2
						icon_state="bigrock_2"
					bigrock_3
						icon_state="bigrock_3"
			mushrooms
				icon='icons/map/obj/cave_dark/mushrooms.dmi'
				mushroom_1
					icon_state="mushroom_1"
				mushroom_2
					icon_state="mushroom_2"
				mushroom_3
					icon_state="mushroom_3"
				mushroom_4
					icon_state="mushroom_4"
				mushroom_5
					icon_state="mushroom_5"
				mushroom_6
					icon_state="mushroom_6"
				mushroom_7
					icon_state="mushroom_7"
				mushroom_8
					icon_state="mushroom_8"