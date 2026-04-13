obj/map/jungle
	tree
		layer = OBJ_LAYER - 0.01
		icon = 'icons/map/obj/jungle/trees.dmi'
		pixel_x = -32
		density = 1

		New()
			..()
			OrientLayer(MOB_LAYER - 0.01/world.maxy)

		tree_1
			icon_state = "1"

		tree_2
			icon_state = "2"

		tree_3
			icon_state = "3"
