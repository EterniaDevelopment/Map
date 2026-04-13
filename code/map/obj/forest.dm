// Rule of thumb: anything you want to be close to the grass/ground is layer 2. This includes
// anything you want to have a pixel offset. This just makes things mesh so much nicer
// when you place it in a populated forest or something.
// Everything else should be a 2.1
TreeShadow
	parent_type = /obj/map
	icon = 'icons/map/obj/forest/tree_shadow.dmi'
	layer = TURF_LAYER
	//appearance_flags = PIXEL_SCALE
	pixel_x = 16
	alpha = 120
	New(px = 16, py = -4, state = "tree1")
		..(loc)
		pixel_x = px
		pixel_y = py
		icon_state = state
		dir = pick(NORTH, SOUTH)


/*var/list
	total_trees = list()
	global_trees = list()*/

obj
	map
		var/tmp/recolor_icon
		forest
			bush_lamp
				icon = 'icons/map/Lampost1.dmi'
				layer = OVER_LAYER + 0.51
				density = 1

				top
					icon_state = "top"
					layer = OVER_LAYER + 0.52

				two
					icon = 'icons/map/Lampost2.dmi'
					top
						icon_state = "top"
						layer = OVER_LAYER + 0.52

			flower
				layer = 2.1
			//	become_visual = 1
				density=1
				flower_1
					icon='icons/map/obj/forest/flower.dmi'
					icon_state="1"
				flower_2
					icon='icons/map/obj/forest/flower.dmi'
					icon_state="2"
				blue_flower
					icon='icons/map/obj/forest/flower.dmi'
					icon_state="blue_flower"
				pink_flower
					icon='icons/map/obj/forest/flower.dmi'
					icon_state="pink_flower"
				blue_vine
					icon='icons/map/obj/forest/flower.dmi'
					icon_state="blue_vine"
				green_vine
					icon='icons/map/obj/forest/flower.dmi'
					icon_state="green_vine"
				grass
					density = 0
					layer = 2
					New()
						pixel_x += rand(-5,5)
						pixel_y += rand(-5,5)
						..()
					flower_3
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="3"
					flower_4
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="4"
					flower_5
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="5"
					flower_6
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="6"
					flower_7
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="7"
					flower_8
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="8"
					flower_9
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="9"
					flower_10
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="10"
					flower_11
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="11"
					flower_12
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="12"
					flower_13
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="13"
					flower_14
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="14"
					flower_15
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="15"
					flower_16
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="16"
					flower_17
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="17"
					flower_18
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="18"
					flower_19
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="19"
					flower_20
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="20"
					flower_21
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="21"
					flower_22
						icon='icons/map/obj/forest/flower.dmi'
						icon_state="22"
				rosevine
					icon='icons/map/obj/forest/rosevine.dmi'
					icon_state="rosevine"
					bound_width = 64
					//become_visual = 1
			bush
				layer = 1
				//become_visual = 1
				icon='icons/map/obj/forest/bush.dmi'
				density=1
				bush_1/icon_state="1"
				bush_2/icon_state="2"
			mushroom
				layer = 2.1
				icon='icons/map/obj/forest/mushroom.dmi'
				density=1
				//become_visual = 1
				mushroom_1/icon_state="1"
				mushroom_2/icon_state="2"
				mushroom_3/icon_state="3"
				mushroom_4/icon_state="4"
				mushroom_5/icon_state="5"
				mushroom_6/icon_state="6"
				mushroom_7/icon_state="7"
				mushroom_8/icon_state="8"
			log
				layer = 2.1
				icon='icons/map/obj/forest/decals.dmi'
				icon_state="log"
				//become_visual = 1
			trunk
				layer = 2.1
				icon='icons/map/obj/forest/decals.dmi'
				icon_state="trunk"
				density=1
				//become_visual = 1
			rock
			//	become_visual = 1
				layer = 2.1
				icon='icons/map/obj/forest/decals.dmi'
				rock1/icon_state="rock1"
				rock2
					icon_state="rock2"
					density=1
				rock3/icon_state="rock3"
				rock4/icon_state="rock4"
				rock5/icon_state="rock5"
				random
					icon_state = "rock1"
					/*New()
						..()
						var/ttype = pick(/obj/map/forest/rock/rock1, /obj/map/forest/rock/rock2, /obj/map/forest/rock/rock3, /obj/map/forest/rock/rock4, /obj/map/forest/rock/rock5)
						if(usr) AddMapEvent(list(x, y, z), ttype, 0, usr.ckey)
						new ttype(loc)
						del(src)*/

			shrubbery
			//	become_visual = 1
				layer = 2 // 2 and not 2.1 to make it appear under the above decals
				icon='icons/map/obj/forest/decals.dmi'
				shrub1/icon_state="shrub1"
				shrub2/icon_state="shrub2"
				shrub3/icon_state="shrub3"
				shrub4/icon_state="shrub4"
				shrub5/icon_state="shrub5"
				shrub6/icon_state="shrub6"
				shrub7/icon_state="shrub7"
				shrub8/icon_state="shrub8"
				New()
					pixel_x += rand(-7,7)
					pixel_y += rand(-7,7)
					..()

				random
					icon_state = "shrub1"
					/*New()
						..()
						var/ttype = pick(/obj/map/forest/shrubbery/shrub1, /obj/map/forest/shrubbery/shrub2, /obj/map/forest/shrubbery/shrub3, /obj/map/forest/shrubbery/shrub4, /obj/map/forest/shrubbery/shrub5, /obj/map/forest/shrubbery/shrub6, /obj/map/forest/shrubbery/shrub7, /obj/map/forest/shrubbery/shrub8)
						if(usr) AddMapEvent(list(x, y, z), ttype, 0, usr.ckey)
						new ttype(loc)
						del(src)*/


			leaves
			//	become_visual = 1
				layer = 2
				icon='icons/map/obj/forest/decals.dmi'
				leaves1/icon_state="leaves1"
				leaves2/icon_state="leaves2"
				leaves3/icon_state="leaves3"
				leaves4/icon_state="leaves4"
				leaves5/icon_state="leaves5"
				leaves6/icon_state="leaves6"
				leaves7/icon_state="leaves7"
				leaves9/icon_state="leaves9"
				leaves10/icon_state="leaves10"
				New()
					pixel_x += rand(-4,4)
					pixel_y += rand(-4,4)
					..()
				random
					icon_state = "leaves1"
					/*New()
						..()
						var/ttype = pick(/obj/map/forest/leaves/leaves1, /obj/map/forest/leaves/leaves2, /obj/map/forest/leaves/leaves3, /obj/map/forest/leaves/leaves4, /obj/map/forest/leaves/leaves5, /obj/map/forest/leaves/leaves6, /obj/map/forest/leaves/leaves7, /obj/map/forest/leaves/leaves9, /obj/map/forest/leaves/leaves10)
						if(usr) AddMapEvent(list(x, y, z), ttype, 0, usr.ckey)
						new ttype(loc)
						del(src)*/



			butterfly
				layer = FLY_LAYER
				//icon='icons/creatures/butterfly.dmi'
				icon_state="blue"
				New()
					..()
					sleep(15)
					icon_state = pick("red", "blue", "yellow", "purple", "white", "orange")
					//Wander()

				proc/Wander()
					set waitfor = FALSE
					while(loc)
						var/const/tile_radius = 4
						var/t = rand(50, 200)
						animate(src,
							time = t,
							pixel_x = tile_radius * rand() * pick(-1, 1) * 32,
							pixel_y = tile_radius * rand() * pick(-1, 1) * 32)
						sleep(t / 2)

			rabbit_hole
				layer = 2.1
				icon='icons/map/obj/forest/decals.dmi'
				icon_state = "rabbithole"
		//		become_visual = 1

			tree_house
				layer = OBJ_LAYER+0.01
				icon = 'icons/map/turf/forest/tree_house.dmi'
				var/tmp/forced = 0
				piece
					forced = 1
				New()
					..()
					if(!forced)
						/*if(usr)
							AddMapEvent(list(x, y, z), type, 0, usr.ckey)*/
						icon_state = "0,0"
						for(var/I in icon_states(src.icon))
							if(I == "0,0") continue
							if(I == "") continue
							var/comma = findtext(I,",")
							var/x_off = text2num(copytext(I,1,comma))
							var/y_off = text2num(copytext(I,comma+1))
							var/new_x = src.x+(x_off+1)
							var/new_y = src.y+(y_off+1)
							var/obj/map/forest/tree_house/piece/new_piece = new(locate(new_x,new_y,src.z))
							if(y_off >= 3)
								new_piece.layer = OVER_LAYER+1
								new_piece.density = 0
							else if(I == "4,2" || I == "5,2" || I == "4,1" || I == "2,0" || I == "3,0" || I == "2,1" || I == "1,0")
								new_piece.density = 0
							else
								new_piece.density = 1
							new_piece.icon_state = "[I]"
							new_piece.pixel_x -= 12
						del(src)



			tree
				layer = OBJ_LAYER - 0.01
				#ifdef DISABLE_TREES
				New()
					del(src)
				#endif


				sakura
					icon = 'icons/map/obj/forest/sakura_tree.dmi'
					recolor_icon = 'icons/map/obj/forest/recolored/sakura_tree.dmi'
					icon_state = "tree"
					density = TRUE
					pixel_x = -16

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(px = 0, state = "tree3")
						..()

				trunk
					icon = 'icons/map/obj/forest/trunk.dmi'
					icon_state = "trunk"
					bound_width = 64
					density = TRUE

				big_tree
					icon = 'icons/map/obj/forest/big_tree.dmi'
					icon_state = "tree"
					bound_x = 96
					density = TRUE
					layer = OVER_LAYER + 0.59
					top
						icon_state = "top"
						layer = OVER_LAYER + 0.7
						density = FALSE
					New()
						overlays += .top
						var/TreeShadow/tree_shadow = new(px=96,state="tree2")
						tree_shadow.transform = matrix() * 2
						underlays += tree_shadow
						..()

				prairie_tree
					icon = 'icons/map/obj/forest/prairie_tree.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE
					top
						icon_state = "top"
						layer = OVER_LAYER


					New()
						overlays += .top
						underlays += new/TreeShadow(px=20+pixel_x,state="tree3")
						..()

				cypress_tree
					icon = 'icons/map/obj/forest/cypress_tree.dmi'
					icon_state = "tree"
					bound_x = 32
					pixel_x = 32
					density = TRUE
					top
						icon_state = "top"
						layer = OVER_LAYER + 0.66
						pixel_x = 0


					New()
						overlays += .top
						underlays += new/TreeShadow(px=-12,state="tree3")
						..()


				mushroom_tree1
					icon = 'icons/map/obj/forest/mushroom_tree1.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						..()

				mushroom_tree2
					icon = 'icons/map/obj/forest/mushroom_tree2.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						..()

				mushroom_tree3
					icon = 'icons/map/obj/forest/mushroom_tree3.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						..()

				mushroom_tree4
					icon = 'icons/map/obj/forest_mystic/mushroom_blue_tree1.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						..()



				mushroom_tree5
					icon = 'icons/map/obj/forest_mystic/mushroom_blue_tree2.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						..()



				mushroom_tree6
					icon = 'icons/map/obj/forest_mystic/mushroom_blue_tree3.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						..()



				mushroom_tree7
					icon = 'icons/map/obj/forest_mystic/mushroom_brown_tree1.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						..()




				mushroom_tree8
					icon = 'icons/map/obj/forest_mystic/mushroom_brown_tree2.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						..()



				mushroom_tree9
					icon = 'icons/map/obj/forest_mystic/mushroom_brown_tree3.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						..()




				tree_1_darkmystic
					icon = 'icons/map/obj/forest_mystic/dark/tree_1.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						underlays += new /TreeShadow(px = 15, state = "tree2")
						..()

				tree_2_darkmystic
					icon = 'icons/map/obj/forest_mystic/dark/tree_2.dmi'
					icon_state = "tree"
					pixel_x = -16
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(px = 0, state = "tree3")
						..()

				tree_3_darkmystic
					icon = 'icons/map/obj/forest_mystic/dark/tree_3.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(state = "tree2")
						..()

				tree_4_darkmystic
					icon = 'icons/map/obj/forest_mystic/dark/tree_4.dmi'
					icon_state = "tree"
					pixel_x = -32
					pixel_y = -12
					density = TRUE
					bound_width = 64

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(px = 32, py = 0, state = "tree1")
						..()

				tree_5_darkmystic
					icon = 'icons/map/obj/forest_mystic/dark/tree_5.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(py = 2, state = "tree1")
						..()



				tree_1_lightmystic
					icon = 'icons/map/obj/forest_mystic/light/tree_1.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						underlays += new /TreeShadow(px = 15, state = "tree2")
						..()

				tree_2_lightmystic
					icon = 'icons/map/obj/forest_mystic/light/tree_2.dmi'
					icon_state = "tree"
					pixel_x = -16
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(px = 0, state = "tree3")
						..()

				tree_3_lightmystic
					icon = 'icons/map/obj/forest_mystic/light/tree_3.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(state = "tree2")
						..()

				tree_4_lightmystic
					icon = 'icons/map/obj/forest_mystic/light/tree_4.dmi'
					icon_state = "tree"
					pixel_x = -32
					pixel_y = -12
					density = TRUE
					bound_width = 64

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(px = 32, py = 0, state = "tree1")
						..()

				tree_5_lightmystic
					icon = 'icons/map/obj/forest_mystic/light/tree_5.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(py = 2, state = "tree1")
						..()

				tree_1
					icon = 'icons/map/obj/forest/tree_1.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE
					recolor_icon = 'icons/map/obj/forest/recolored/tree_1.dmi'

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						underlays += new /TreeShadow(px = 15, state = "tree2")
						..()

				tree_2
					icon = 'icons/map/obj/forest/tree_2.dmi'
					recolor_icon = 'icons/map/obj/forest/recolored/tree_2.dmi'
					icon_state = "tree"
					pixel_x = -16
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(px = 0, state = "tree3")
						..()

				tree_3
					icon = 'icons/map/obj/forest/tree_3.dmi'
					recolor_icon = 'icons/map/obj/forest/recolored/tree_3.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(state = "tree2")
						..()

				tree_4
					icon = 'icons/map/obj/forest/tree_4.dmi'
					recolor_icon = 'icons/map/obj/forest/recolored/tree_4.dmi'
					icon_state = "tree"
					pixel_x = -32
					pixel_y = -12
					density = TRUE
					bound_width = 64

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(px = 32, py = 0, state = "tree1")
						..()

				tree_5
					icon = 'icons/map/obj/forest/tree_5.dmi'
					recolor_icon = 'icons/map/obj/forest/recolored/tree_5.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						overlays += .top
						underlays += new /TreeShadow(py = 2, state = "tree1")
						..()

				tree_rand
					icon = 'icons/map/obj/forest/tree_1.dmi'
					recolor_icon = 'icons/map/obj/forest/recolored/tree_1.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						overlays += .top
						underlays += new /TreeShadow(px = 15, state = "tree2")
						..()
					/*New()
						..()
						var/ttype = pick(
								/obj/map/forest/tree/tree_1,
								/obj/map/forest/tree/tree_2,
								/obj/map/forest/tree/tree_3,
								/obj/map/forest/tree/tree_4,
								/obj/map/forest/tree/tree_5)
						if(usr) AddMapEvent(list(x, y, z), ttype, 0, usr.ckey)
						new ttype(loc)
						del(src)*/


		forest_autumn
			//become_visual = 1
			flower
				layer = 2.1
				density=1
				flower_1
					icon='icons/map/obj/forest_autumn/flower_1.dmi'
					icon_state="1"
				flower_2
					icon='icons/map/obj/forest_autumn/flower_1.dmi'
					icon_state="2"
				flower_3
					icon='icons/map/obj/forest_autumn/flower_2.dmi'
					icon_state="1"
				flower_4
					icon='icons/map/obj/forest_autumn/flower_2.dmi'
					icon_state="2"
				flower_5
					icon='icons/map/obj/forest_autumn/flower_3.dmi'
					icon_state="1"
				flower_6
					icon='icons/map/obj/forest_autumn/flower_3.dmi'
					icon_state="2"
				flower_7
					icon='icons/map/obj/forest_autumn/flower_4.dmi'
					icon_state="1"
				flower_8
					icon='icons/map/obj/forest_autumn/flower_4.dmi'
					icon_state="2"

				blue_flower
					icon='icons/map/obj/forest_autumn/flower.dmi'
					icon_state="blue_flower"
				pink_flower
					icon='icons/map/obj/forest_autumn/flower.dmi'
					icon_state="pink_flower"
				white_flower
					icon='icons/map/obj/forest_autumn/big_flower_1.dmi'
					icon_state="white_flower"
				crimson_flower
					icon='icons/map/obj/forest_autumn/big_flower_1.dmi'
					icon_state="crimson_flower"
				white_flower
					icon='icons/map/obj/forest_autumn/big_flower_2.dmi'
					icon_state="yellow_flower"
				purple_flower
					icon='icons/map/obj/forest_autumn/big_flower_2.dmi'
					icon_state="purple_flower"

				blue_vine
					icon='icons/map/obj/forest_autumn/mushroom.dmi'
					icon_state="blue_vine"
				green_vine
					icon='icons/map/obj/forest_autumn/mushroom.dmi'
					icon_state="green_vine"
				yellowgreen_vine
					icon='icons/map/obj/forest_autumn/vines.dmi'
					icon_state="yellowgreen_vine"
				redviolet_vine
					icon='icons/map/obj/forest_autumn/vines.dmi'
					icon_state="redviolet_vine"

				grass
					density = 0
					layer = 2
					New()
						pixel_x += rand(-5,5)
						pixel_y += rand(-5,5)
						..()
					flower_3
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="3"
					flower_4
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="4"
					flower_5
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="5"
					flower_6
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="6"
					flower_7
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="7"
					flower_8
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="8"
					flower_9
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="9"
					flower_10
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="10"
					flower_11
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="11"
					flower_12
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="12"
					flower_13
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="13"
					flower_14
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="14"
					flower_15
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="15"
					flower_16
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="16"
					flower_17
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="17"
					flower_18
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="18"
					flower_19
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="19"
					flower_20
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="20"
					flower_21
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="21"
					flower_22
						icon='icons/map/obj/forest_autumn/flower.dmi'
						icon_state="22"
				rosevine
					icon='icons/map/obj/forest_autumn/rosevine.dmi'
					icon_state="rosevine"
					bound_width = 64

					rosevine2/icon='icons/map/obj/forest_autumn/rosevine_1.dmi'
					rosevine3/icon='icons/map/obj/forest_autumn/rosevine_2.dmi'
					rosevine4/icon='icons/map/obj/forest_autumn/rosevine_3.dmi'
					rosevine5/icon='icons/map/obj/forest_autumn/rosevine_4.dmi'
					rosevine6/icon='icons/map/obj/forest_autumn/rosevine_5.dmi'
					rosevine7/icon='icons/map/obj/forest_autumn/rosevine_6.dmi'
					rosevine8/icon='icons/map/obj/forest_autumn/rosevine_7.dmi'
					rosevine9/icon='icons/map/obj/forest_autumn/rosevine_8.dmi'

			bush
				layer = 2.1
				icon='icons/map/obj/forest_autumn/bush_1.dmi'
				density=1
				bush_1/icon_state="1"
				bush_2/icon_state="2"
			bush2
				layer = 2.1
				icon='icons/map/obj/forest_autumn/bush_2.dmi'
				density=1
				bush_1/icon_state="1"
				bush_2/icon_state="2"
			bush3
				layer = 2.1
				icon='icons/map/obj/forest_autumn/bush_3.dmi'
				density=1
				bush_1/icon_state="1"
				bush_2/icon_state="2"
			giant_bush
				layer = 1
				icon='icons/map/obj/forest/giant_bush.dmi'
				density=1
				bush_1/icon_state="green"
				bush_2/icon_state="orange"
			big_bush
				layer = 1
				icon='icons/map/obj/forest/big_bush.dmi'
				density=1

			giant_bush_mystic
				layer = 1
				icon='icons/map/obj/forest_mystic/giant_bush.dmi'
				density=1

			big_bush
				layer = 1
				icon='icons/map/obj/forest_mystic/big_bush.dmi'
				density=1
				bush_1/icon_state="green"
				bush_2/icon_state="orange"


			mushroom
				layer = 2.1
				icon='icons/map/obj/forest_autumn/mushroom.dmi'
				density=1
				mushroom_1/icon_state="1"
				mushroom_2/icon_state="2"
				mushroom_3/icon_state="3"
				mushroom_4/icon_state="4"
				mushroom_5/icon_state="5"
				mushroom_6/icon_state="6"
				mushroom_7/icon_state="7"
				mushroom_8/icon_state="8"
			mushroom_brown
				layer = 2.1
				icon='icons/map/obj/forest_autumn/mushroom_brown.dmi'
				density=1
				mushroom_1/icon_state="1"
				mushroom_2/icon_state="2"
				mushroom_3/icon_state="3"
				mushroom_4/icon_state="4"
				mushroom_5/icon_state="5"
				mushroom_6/icon_state="6"
				mushroom_7/icon_state="7"
				mushroom_8/icon_state="8"
			mushroom_purple
				layer = 2.1
				icon='icons/map/obj/forest_autumn/mushroom_purple.dmi'
				density=1
				mushroom_1/icon_state="1"
				mushroom_2/icon_state="2"
				mushroom_3/icon_state="3"
				mushroom_4/icon_state="4"
				mushroom_5/icon_state="5"
				mushroom_6/icon_state="6"
				mushroom_7/icon_state="7"
				mushroom_8/icon_state="8"
			mushroom_red
				layer = 2.1
				icon='icons/map/obj/forest_autumn/mushroom_red.dmi'
				density=1
				mushroom_1/icon_state="1"
				mushroom_2/icon_state="2"
				mushroom_3/icon_state="3"
				mushroom_4/icon_state="4"
				mushroom_5/icon_state="5"
				mushroom_6/icon_state="6"
				mushroom_7/icon_state="7"
				mushroom_8/icon_state="8"

			log
				layer = 2.1
				icon='icons/map/obj/forest_autumn/decals2.dmi'
				icon_state="log"
			trunk
				layer = 2.1
				icon='icons/map/obj/forest_autumn/decals2.dmi'
				icon_state="trunk"
				density=1
			rock
				layer = 2.1
				icon='icons/map/obj/forest_autumn/rocks.dmi'
				rock1/icon_state="rock1"
				rock2
					icon_state="rock2"
					density=1
				rock3/icon_state="rock3"
				rock4/icon_state="rock4"
				rock5/icon_state="rock5"

			shrubbery
				layer = 2 // 2 and not 2.1 to make it appear under the above decals
				icon='icons/map/obj/forest_autumn/decals.dmi'
				shrub1/icon_state="shrub1"
				shrub2/icon_state="shrub2"
				shrub3/icon_state="shrub3"
				shrub4/icon_state="shrub4"
				shrub5/icon_state="shrub5"
				shrub6/icon_state="shrub6"
				shrub7/icon_state="shrub7"
				shrub8/icon_state="shrub8"
				New()
					pixel_x += rand(-7,7)
					pixel_y += rand(-7,7)
					..()

				random
					icon_state = "shrub1"
					/*New()
						..()
						var/ttype = pick(/obj/map/forest/shrubbery/shrub1, /obj/map/forest/shrubbery/shrub2, /obj/map/forest/shrubbery/shrub3, /obj/map/forest/shrubbery/shrub4, /obj/map/forest/shrubbery/shrub5, /obj/map/forest/shrubbery/shrub6, /obj/map/forest/shrubbery/shrub7, /obj/map/forest/shrubbery/shrub8)
						if(usr) AddMapEvent(list(x, y, z), ttype, 0, usr.ckey)
						new ttype(loc)
						del(src)*/

			shrubbery2
				layer = 2 // 2 and not 2.1 to make it appear under the above decals
				icon='icons/map/obj/forest_autumn/decals2.dmi'
				shrub1/icon_state="shrub1"
				shrub2/icon_state="shrub2"
				shrub3/icon_state="shrub3"
				shrub4/icon_state="shrub4"
				shrub5/icon_state="shrub5"
				shrub6/icon_state="shrub6"
				shrub7/icon_state="shrub7"
				shrub8/icon_state="shrub8"
				New()
					pixel_x += rand(-7,7)
					pixel_y += rand(-7,7)
					..()

				random
					icon_state = "shrub1"
					/*New()
						..()
						var/ttype = pick(/obj/map/forest/shrubbery/shrub1, /obj/map/forest/shrubbery/shrub2, /obj/map/forest/shrubbery/shrub3, /obj/map/forest/shrubbery/shrub4, /obj/map/forest/shrubbery/shrub5, /obj/map/forest/shrubbery/shrub6, /obj/map/forest/shrubbery/shrub7, /obj/map/forest/shrubbery/shrub8)
						if(usr) AddMapEvent(list(x, y, z), ttype, 0, usr.ckey)
						new ttype(loc)
						del(src)*/


			leaves
				layer = 2
				icon='icons/map/obj/forest_autumn/decals.dmi'
				leaves1/icon_state="leaves1"
				leaves2/icon_state="leaves2"
				leaves3/icon_state="leaves3"
				leaves4/icon_state="leaves4"
				leaves5/icon_state="leaves5"
				leaves6/icon_state="leaves6"
				leaves7/icon_state="leaves7"
				leaves9/icon_state="leaves9"
				leaves10/icon_state="leaves10"
				New()
					pixel_x += rand(-4,4)
					pixel_y += rand(-4,4)
					..()

			leaves2
				layer = 2
				icon='icons/map/obj/forest_autumn/decals2.dmi'
				leaves1/icon_state="leaves1"
				leaves2/icon_state="leaves2"
				leaves3/icon_state="leaves3"
				leaves4/icon_state="leaves4"
				leaves5/icon_state="leaves5"
				leaves6/icon_state="leaves6"
				leaves7/icon_state="leaves7"
				leaves9/icon_state="leaves9"
				leaves10/icon_state="leaves10"
				New()
					pixel_x += rand(-4,4)
					pixel_y += rand(-4,4)
					..()

			butterfly
				layer = FLY_LAYER
				//icon='icons/creatures/butterfly.dmi'
				icon_state="blue"
				//become_visual = 1
				/*New()
					..()
					var/turf/spawnloc = loc
					sleep(rand(1,15))
					icon_state = pick("red", "blue", "yellow", "purple", "white", "orange")
					spawn(1)
						while(src)
							sleep(rand(20, 40))
							if(get_dist(spawnloc, loc) >= 10)
								step_to(src, spawnloc)
							else
								step_rand(src)
					spawn(0)
						while(src)
							sleep(rand(2,6))
							var/off_x = 0
							if(pixel_x >= 30)
								off_x = -1
							else if(pixel_x <= 2)
								off_x = 1
							else
								off_x = rand(-2,2)

							var/off_y = 0
							if(pixel_y >= 30)
								off_y = -1
							else if(pixel_y <= 2)
								off_y = 1
							else
								off_y = rand(-2,2)

							pixel_x += off_x
							pixel_y += off_y*/

			rabbit_hole
				layer = 2.1
				//become_visual = 1
				icon='icons/map/obj/forest_autumn/decals.dmi'
				icon_state = "rabbithole"
			rabbit_hole2
				layer = 2.1
				//become_visual = 1
				icon='icons/map/obj/forest_autumn/decals2.dmi'
				icon_state = "rabbithole"

			tree_house
				layer = OBJ_LAYER+0.01
				icon = 'icons/map/turf/forest_autumn/tree_house.dmi'
				var/tmp/forced = 0
			//	become_visual = 0
				piece
					forced = 1
				New()
					..()
					if(!forced)
						/*if(usr)
							AddMapEvent(list(x, y, z), type, 0, usr.ckey)*/
						icon_state = "0,0"
						for(var/I in icon_states(src.icon))
							if(I == "0,0") continue
							if(I == "") continue
							var/comma = findtext(I,",")
							var/x_off = text2num(copytext(I,1,comma))
							var/y_off = text2num(copytext(I,comma+1))
							var/new_x = src.x+(x_off+1)
							var/new_y = src.y+(y_off+1)
							var/obj/map/forest/tree_house/piece/new_piece = new(locate(new_x,new_y,src.z))
							if(y_off >= 3)
								new_piece.layer = OVER_LAYER+1
								new_piece.density = 0
							else if(I == "4,2" || I == "5,2" || I == "4,1" || I == "2,0" || I == "3,0" || I == "2,1" || I == "1,0")
								new_piece.density = 0
							else
								new_piece.density = 1
							new_piece.icon_state = "[I]"
							new_piece.pixel_x -= 12
						del(src)



			tree
				//become_visual = 0
				layer = OBJ_LAYER - 0.01
				#ifdef DISABLE_TREES
				New()
					del(src)
				#else

				//		HandleTree(src)
				/*New()
					..()
					if(!global_trees[src.type]) global_trees[src.type] = list()
					global_trees[src.type] += src*/
				#endif
				sakura
					icon = 'icons/map/obj/forest_autumn/sakura_tree.dmi'
					icon_state = "tree"
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 0, state = "tree3")

				trunk
					icon = 'icons/map/obj/forest_autumn/trunk.dmi'
					icon_state = "trunk"
					bound_width = 64
					density = TRUE

				tree_1
					icon = 'icons/map/obj/forest_autumn/tree_1_old.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 15, state = "tree2")

				tree_1_alt
					icon = 'icons/map/obj/forest_autumn/tree_1.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 15, state = "tree2")
				tree_1_alt2
					icon = 'icons/map/obj/forest_autumn/tree_6.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 15, state = "tree2")

				tree_2
					icon = 'icons/map/obj/forest_autumn/tree_2_old.dmi'
					icon_state = "tree"
					pixel_x = -16
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 0, state = "tree3")

				tree_2_alt
					icon = 'icons/map/obj/forest_autumn/tree_2.dmi'
					icon_state = "tree"
					pixel_x = -16
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 0, state = "tree3")
				tree_2_alt2
					icon = 'icons/map/obj/forest_autumn/tree_7.dmi'
					icon_state = "tree"
					pixel_x = -16
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 0, state = "tree3")

				tree_3
					icon = 'icons/map/obj/forest_autumn/tree_3_old.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(state = "tree2")
				tree_3_alt
					icon = 'icons/map/obj/forest_autumn/tree_3.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(state = "tree2")
				tree_3_alt2
					icon = 'icons/map/obj/forest_autumn/tree_8.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(state = "tree2")

				tree_4
					icon = 'icons/map/obj/forest_autumn/tree_4_old.dmi'
					icon_state = "tree"
					pixel_x = -32
					pixel_y = -12
					density = TRUE
					bound_width = 64

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 18, py = 0, state = "tree1")
						underlays += new /TreeShadow(px = 32, py = 0, state = "tree1")
						underlays += new /TreeShadow(px = 46, py = 0, state = "tree1")
				tree_4_alt
					icon = 'icons/map/obj/forest_autumn/tree_10.dmi'
					icon_state = "tree"
					pixel_x = -32
					pixel_y = -12
					density = TRUE
					bound_width = 64

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 18, py = 0, state = "tree1")
						underlays += new /TreeShadow(px = 32, py = 0, state = "tree1")
						underlays += new /TreeShadow(px = 46, py = 0, state = "tree1")
				tree_4_alt2
					icon = 'icons/map/obj/forest_autumn/tree_4.dmi'
					icon_state = "tree"
					pixel_x = -32
					pixel_y = -12
					density = TRUE
					bound_width = 64

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 18, py = 0, state = "tree1")
						underlays += new /TreeShadow(px = 32, py = 0, state = "tree1")
						underlays += new /TreeShadow(px = 46, py = 0, state = "tree1")
				tree_4_alt3
					icon = 'icons/map/obj/forest_autumn/tree_9.dmi'
					icon_state = "tree"
					pixel_x = -32
					pixel_y = -12
					density = TRUE
					bound_width = 64

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 18, py = 0, state = "tree1")
						underlays += new /TreeShadow(px = 32, py = 0, state = "tree1")
						underlays += new /TreeShadow(px = 46, py = 0, state = "tree1")

				tree_5
					icon = 'icons/map/obj/forest_autumn/tree_5_old.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(py = 2, state = "tree1")
				tree_5_alt
					icon = 'icons/map/obj/forest_autumn/tree_5.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(py = 2, state = "tree1")
				tree_5_alt2
					icon = 'icons/map/obj/forest_autumn/tree_11.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(py = 2, state = "tree1")



		forest_mystic
			flower_mystic
				layer = 2.1
				density=1
				flower_1
					icon='icons/map/obj/forest_mystic/flowers.dmi'
					icon_state="1"
				flower_2
					icon='icons/map/obj/forest_mystic/flowers.dmi'
					icon_state="2"
				flower_3
					icon='icons/map/obj/forest_mystic/flowers.dmi'
					icon_state="3"
				flower_4
					icon='icons/map/obj/forest_mystic/flowers.dmi'
					icon_state="4"
				flower_5
					icon='icons/map/obj/forest_mystic/flowers.dmi'
					icon_state="5"
				flower_6
					icon='icons/map/obj/forest_mystic/flowers.dmi'
					icon_state="6"
				grass_1
					icon='icons/map/obj/forest_mystic/flowers.dmi'
					icon_state="7"
				grass_2
					icon='icons/map/obj/forest_mystic/flowers.dmi'
					icon_state="8"
				grass_2
					icon='icons/map/obj/forest_mystic/flowers.dmi'
					icon_state="9"

		forest_dark
		//	become_visual = 1
			flower
			//	become_visual = 1
				layer = 2.1
				density=1
				flower_1
					icon='icons/map/obj/forest_dark/flower.dmi'
					icon_state="1"
				flower_2
					icon='icons/map/obj/forest_dark/flower.dmi'
					icon_state="2"
				blue_flower
					icon='icons/map/obj/forest_dark/flower.dmi'
					icon_state="blue_flower"
				pink_flower
					icon='icons/map/obj/forest_dark/flower.dmi'
					icon_state="pink_flower"
				blue_vine
					icon='icons/map/obj/forest_dark/flower.dmi'
					icon_state="blue_vine"
				green_vine
					icon='icons/map/obj/forest_dark/flower.dmi'
					icon_state="green_vine"
				grass
					density = 0
					layer = 2
					New()
						pixel_x += rand(-5,5)
						pixel_y += rand(-5,5)
						..()
					flower_3
						icon='icons/map/obj/forest_dark/flower.dmi'
						icon_state="3"
					flower_4
						icon='icons/map/obj/forest_dark/flower.dmi'
						icon_state="4"
					flower_5
						icon='icons/map/obj/forest_dark/flower.dmi'
						icon_state="5"
					flower_6
						icon='icons/map/obj/forest_dark/flower.dmi'
						icon_state="28"
					flower_7
						icon='icons/map/obj/forest_dark/flower.dmi'
						icon_state="29"
					flower_8
						icon='icons/map/obj/forest_dark/flower.dmi'
						icon_state="30"
					flower_9
						icon='icons/map/obj/forest_dark/flower.dmi'
						icon_state="31"
					flower_10
						icon='icons/map/obj/forest_dark/flower.dmi'
						icon_state="5555"
					flower_11
						icon='icons/map/obj/forest_dark/flower.dmi'
						icon_state="4444"
					flower_12
						icon='icons/map/obj/forest_dark/flower.dmi'
						icon_state="7777"
				rosevine
					icon='icons/map/obj/forest_dark/rosevine.dmi'
					icon_state="rosevine"
					bound_width = 64
			bush
				//become_visual = 1
				layer = 2.1
				icon='icons/map/obj/forest_dark/bush.dmi'
				density=1
				bush_1/icon_state="1"
				bush_2/icon_state="2"
			mushroom
				layer = 2.1
				icon='icons/map/obj/forest_dark/mushroom.dmi'
				density=1
				mushroom_1/icon_state="1"
				mushroom_2/icon_state="2"
			log
				layer = 2.1
				icon='icons/map/obj/forest_dark/decals.dmi'
				icon_state="log"
			trunk
				layer = 2.1
				icon='icons/map/obj/forest_dark/decals.dmi'
				icon_state="trunk"
				density=1
			rock
				layer = 2.1
				icon='icons/map/obj/forest_dark/decals.dmi'
				rock1/icon_state="rock1"
				rock2
					icon_state="rock2"
					density=1
				rock3/icon_state="rock3"
				rock4/icon_state="rock4"
				rock5/icon_state="rock5"


			shrubbery
				//become_visual = 1
				layer = 2 // 2 and not 2.1 to make it appear under the above decals
				icon='icons/map/obj/forest_dark/decals.dmi'
				shrub1/icon_state="shrub1"
				shrub2/icon_state="shrub2"
				shrub3/icon_state="shrub3"
				shrub4/icon_state="shrub4"
				shrub5/icon_state="shrub5"
				shrub6/icon_state="shrub6"
				shrub7/icon_state="shrub7"
				shrub8/icon_state="shrub8"
				New()
					pixel_x += rand(-7,7)
					pixel_y += rand(-7,7)
					..()
				random
					icon_state = "shrub1"
					/*New()
						..()
						var/ttype = pick(/obj/map/forest/shrubbery/shrub1, /obj/map/forest/shrubbery/shrub2, /obj/map/forest/shrubbery/shrub3, /obj/map/forest/shrubbery/shrub4, /obj/map/forest/shrubbery/shrub5, /obj/map/forest/shrubbery/shrub6, /obj/map/forest/shrubbery/shrub7, /obj/map/forest/shrubbery/shrub8)
						if(usr) AddMapEvent(list(x, y, z), ttype, 0, usr.ckey)
						new ttype(loc)
						del(src)*/



			leaves
				layer = 2
				icon='icons/map/obj/forest_dark/decals.dmi'
				leaves1/icon_state="leaves1"
				leaves2/icon_state="leaves2"
				leaves3/icon_state="leaves3"
				leaves4/icon_state="leaves4"
				leaves5/icon_state="leaves5"
				leaves6/icon_state="leaves6"
				leaves7/icon_state="leaves7"
				leaves9/icon_state="leaves9"
				leaves10/icon_state="leaves10"
				New()
					pixel_x += rand(-4,4)
					pixel_y += rand(-4,4)
					..()
				random
					icon_state = "leaves1"
					/*New()
						..()
						var/ttype = pick(/obj/map/forest/leaves/leaves1, /obj/map/forest/leaves/leaves2, /obj/map/forest/leaves/leaves3, /obj/map/forest/leaves/leaves4, /obj/map/forest/leaves/leaves5, /obj/map/forest/leaves/leaves6, /obj/map/forest/leaves/leaves7, /obj/map/forest/leaves/leaves9, /obj/map/forest/leaves/leaves10)
						if(usr) AddMapEvent(list(x, y, z), ttype, 0, usr.ckey)
						new ttype(loc)
						del(src)*/


			rabbit_hole
				//become_visual = 1
				layer = 2.1
				icon='icons/map/obj/forest_dark/decals.dmi'
				icon_state = "rabbithole"

			tree_house
				layer = OBJ_LAYER+0.01
				//icon = 'icons/map/turf/forest_dark/tree_house.dmi'
				var/tmp/forced = 0
				//become_visual = 0
				piece
					forced = 1
				New()
					..()
					if(!forced)
						/*if(usr)
							AddMapEvent(list(x, y, z), type, 0, usr.ckey)*/
						icon_state = "0,0"
						for(var/I in icon_states(src.icon))
							if(I == "0,0") continue
							if(I == "") continue
							var/comma = findtext(I,",")
							var/x_off = text2num(copytext(I,1,comma))
							var/y_off = text2num(copytext(I,comma+1))
							var/new_x = src.x+(x_off+1)
							var/new_y = src.y+(y_off+1)
							var/obj/map/forest/tree_house/piece/new_piece = new(locate(new_x,new_y,src.z))
							if(y_off >= 3)
								new_piece.layer = OVER_LAYER+1
								new_piece.density = 0
							else if(I == "4,2" || I == "5,2" || I == "4,1" || I == "2,0" || I == "3,0" || I == "2,1" || I == "1,0")
								new_piece.density = 0
							else
								new_piece.density = 1
							new_piece.icon_state = "[I]"
							new_piece.pixel_x -= 12
						del(src)



			tree
			//	become_visual = 0
				layer = OBJ_LAYER - 0.01
				#ifdef DISABLE_TREES
				New()
					del(src)
				#else

				/*New()
					..()
					if(!global_trees[src.type]) global_trees[src.type] = list()
					global_trees[src.type] += src*/
				#endif

				trunk
					icon = 'icons/map/obj/forest_dark/trunk.dmi'
					icon_state = "trunk"
					bound_width = 64
					density = TRUE

				tree_1
					icon = 'icons/map/obj/forest_dark/tree_1.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 15, state = "tree2")

				tree_2
					icon = 'icons/map/obj/forest_dark/tree_2.dmi'
					icon_state = "tree"
					pixel_x = -16
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 0, state = "tree3")

				tree_3
					icon = 'icons/map/obj/forest_dark/tree_3.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(state = "tree2")

				tree_4
					icon = 'icons/map/obj/forest_dark/tree_4.dmi'
					icon_state = "tree"
					pixel_x = -32
					pixel_y = -12
					density = TRUE
					bound_width = 64

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 18, py = 0, state = "tree1")
						underlays += new /TreeShadow(px = 32, py = 0, state = "tree1")
						underlays += new /TreeShadow(px = 46, py = 0, state = "tree1")

				tree_5
					icon = 'icons/map/obj/forest_dark/tree_5.dmi'
					icon_state = "tree"
					pixel_y = -8
					bound_x = 32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(py = 2, state = "tree1")

				tree_6
					icon = 'icons/map/obj/forest_dark/tree_6.dmi'
					icon_state = "tree"
					pixel_y = 0
					pixel_x = -16
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(px = 0, state = "tree3")

				tree_7
					icon = 'icons/map/obj/forest_dark/tree_7.dmi'
					icon_state = "tree"
					pixel_y = 2
					pixel_x = -32
					density = TRUE

					top
						icon_state = "top"
						layer = OVER_LAYER
						pixel_x = 0
						pixel_y = 0

					New()
						..()
						overlays += .top
						underlays += new /TreeShadow(state = "tree3")

				ruins1
					icon = 'icons/map/ruins1.dmi'
					icon_state = "ruins"
					layer = 1
					density = 0

					ruins1_plants
						icon_state="plants"

				ruins2
					icon = 'icons/map/ruins_wall.dmi'
					icon_state = "ruins"
					ruins2_plants
						icon_state="plants"

				ruins3
					icon = 'icons/map/ruins_circle.dmi'
					icon_state = "ruins"
					ruins3_plants
						icon_state="plants"



				sunflower
					icon = 'icons/map/obj/forest/sunflower.dmi'
					layer = 1
					density = 0

					sunflower1
						icon_state="1"
					sunflower2
						icon_state="2"
					sunflower3
						icon_state="3"


				runestone
					icon = 'icons/map/runestone.dmi'
					layer = 1
					density = 1

					runestone1
						icon_state="1"
					runestone2
						icon_state="2"
					runestone3
						icon_state="3"


				runestone_large
					icon = 'icons/map/runestone_large.dmi'
					layer = 1
					density = 1

					runestone1
						icon_state="1"
					runestone2
						icon_state="2"



				runestone
					icon = 'icons/map/runestone.dmi'
					layer = 1
					density = 1

					runestone1
						icon_state="1"
					runestone2
						icon_state="2"
					runestone3
						icon_state="3"


				runestone_large
					icon = 'icons/map/runestone_large.dmi'
					layer = 1
					density = 1

					runestone1
						icon_state="1"
					runestone2
						icon_state="2"


				runestone_green
					icon = 'icons/map/obj/forest_mystic/runestone_green.dmi'
					layer = 1
					density = 1

					runestone1
						icon_state="1"
					runestone2
						icon_state="2"
					runestone3
						icon_state="3"


				runestone_green_large
					icon = 'icons/map/obj/forest_mystic/runestone_green_large.dmi'
					layer = 1
					density = 1

					runestone1
						icon_state="1"
					runestone2
						icon_state="2"


				runestone_red
					icon = 'icons/map/obj/forest_mystic/runestone_red.dmi'
					layer = 1
					density = 1

					runestone1
						icon_state="1"
					runestone2
						icon_state="2"
					runestone3
						icon_state="3"


				runestone_red_large
					icon = 'icons/map/obj/forest_mystic/runestone_red_large.dmi'
					layer = 1
					density = 1

					runestone1
						icon_state="1"
					runestone2
						icon_state="2"
