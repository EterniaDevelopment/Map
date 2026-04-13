obj
	map
		dragon_statue1
			icon = 'icons/map/obj/winter/dragon_statue.dmi'
			density = 1
			bound_width = 128
			bound_height = 64
			New()
				..()
				var/image/I = image(icon,src,"top",OVER_LAYER)
				overlays += I
		winter
			house
				icon='icons/map/obj/winter/house.dmi'
				icon_state="house"
				pixel_x=-80
				pixel_y=-80
				var/list/densities = list()
				New()
					..()
					for(var/turf/T in range(2,src))
						if(T.x==x&&T.y<y-1)continue
						if(T.y>y+1)continue
						densities.Add(new/obj/map/dense(T))
					var/image/I=image(icon,src,"top",OVER_LAYER)
					overlays+=I
				Del()
					for(var/obj/map/dense/D in densities)
						del(D)
					..()
			igloo
				icon='icons/map/obj/winter/igloo.dmi'
				icon_state="igloo"
				pixel_x=-32
				pixel_y=-48
				var/list/densities = list()
				New()
					..()
					for(var/turf/T in range(1,src))
						if(T.x==x&&T.y==y-1)continue
						if(T.y>y+1)continue
						densities.Add(new/obj/map/dense(T))
					var/image/I=image(icon,src,"top",OVER_LAYER)
					overlays+=I

				Del()
					for(var/obj/map/dense/D in densities)
						del(D)
					..()

			rock
				rock_1
					icon='icons/map/obj/winter/rock_1.dmi'
					icon_state="rock"
					density=1
				rock_2
					icon='icons/map/obj/winter/rock_2.dmi'
					icon_state="rock"
					density=1
				crack
					icon='icons/map/obj/winter/rock_1.dmi'
					icon_state="crack1"
					density=1
				crack2
					icon='icons/map/obj/winter/rock_1.dmi'
					icon_state="crack2"
					density=1
				crack3
					icon='icons/map/obj/winter/rock_1.dmi'
					icon_state="crack3"
					density=1
			tree
				layer=OBJ_LAYER-0.01

				tree_1
					icon = 'icons/map/obj/winter/tree_1.dmi'
					icon_state = "tree"
					bound_x = 32
					density = TRUE
					
					top
						icon_state = "top"
						layer = OVER_LAYER

					New()
						..()
						overlays += .top
						
				tree_2
					icon = 'icons/map/obj/winter/tree_2.dmi'
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
						
				tree_3
					icon = 'icons/map/obj/winter/tree_3.dmi'
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
						
				tree_4
					icon = 'icons/map/obj/winter/tree_4.dmi'
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
						
				tree_5
					icon = 'icons/map/obj/winter/tree_5.dmi'
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

				tree_rand
					icon = 'icons/map/obj/winter/tree_1.dmi'
					icon_state = "tree"
					pixel_y = -8
					New()
						..()
						var/ttype = pick(
								/obj/map/winter/tree/tree_1, 
								/obj/map/winter/tree/tree_2, 
								/obj/map/winter/tree/tree_3, 
								/obj/map/winter/tree/tree_4, 
								/obj/map/winter/tree/tree_5)
						if(usr) AddMapEvent(list(x, y, z), ttype, 0, usr.ckey)
						new ttype(loc)
						del(src)
