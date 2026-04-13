
atom
	var
		special_description // If this isn't empty it'll display a description box whe clicked.

turf
	void
		density=1
		icon='icons/map/turf/other/void.dmi'
		icon_state="void"
	pathway
		icon='icons/map/turf/other/void.dmi'
		icon_state="void"

	var/step_sounds
obj
	map
		dense
			density = 1

		viewBlock
			icon = 'icons/map/editor/opaque.dmi'
			invisibility = 101
			density = 1
			New()
				..()
				icon = null

		noDenseMarker
			icon = 'icons/map/editor/nodense.dmi'
			invisibility = 101
			layer = 100
			New()
				..()
				var/turf/location = loc
				if(location && location.density)
					location.density = 0
				icon = null

		DenseMarker
			icon = 'icons/map/editor/dense.dmi'
			invisibility = 101
			layer = 100
			New()
				..()
				var/turf/location = loc
				if(location && !location.density)
					location.density = 1
				icon = null


/**
	Natural interior lighting
*/

		window_light
			icon = 'icons/map/editor/light.dmi'
			invisibility = 100
			layer = 100

		cave_light
			icon = 'icons/map/editor/light.dmi'
			invisibility = 100
			layer = 100




/**
	Door object
*/
/*obj/map
	building_door
		icon='icons/map/turf/house/door.dmi'
		density = 1
		var
			/** A door's assigned chunk */
			MapChunk/assignedChunk = null

			/** The linked door */
			obj/map/building_door/linked

			/** Nonzero if animating */
			animating = 0

			/** Defined if this door is only set to 'close' if locked */
			onlyLockState


		exterior
			icon_state="close"
			main
				name = "_main"
				var/obj/destroyMarker

				door2
					icon='icons/map/turf/village/door_2.dmi'

				castle
					icon='icons/map/obj/castle/gate.dmi'
					onlyLockState = 1

				invis
					invisibility = 100
					layer = 100
					//alpha = 102

				gehenna1
					icon='icons/map/turf/gehenna_house/door1.dmi'

				gehenna2
					icon='icons/map/turf/gehenna_house/door2.dmi'

				gehenna3
					icon='icons/map/turf/gehenna_house/door3.dmi'


			castle
				icon='icons/map/turf/castle_int/doorl.dmi'

			gehenna1
				icon='icons/map/turf/gehenna_house/door1.dmi'

			gehenna2
				icon='icons/map/turf/gehenna_house/door2.dmi'

			gehenna3
				icon='icons/map/turf/gehenna_house/door3.dmi'

			gehenna4
				icon='icons/map/turf/gehenna_house/door4.dmi'

			dungeon
				icon='icons/map/obj/dungeon/door.dmi'



		interior
			invisibility = 50
			layer = 100
			icon_state="side"
			main
				name = "_main"

				door2
					icon='icons/map/turf/village/door_2.dmi'

				castle
					icon='icons/map/obj/castle/gate.dmi'
					onlyLockState = 1

			dungeon
				icon='icons/map/obj/dungeon/door.dmi'

			castle
				icon='icons/map/turf/castle_int/doorl.dmi'

		__link
			var/obj/bumpLinked*/



var/list/private_arenas = list()

/obj/effect/private_arena
	name = "Forest" //this needs to be unique or it will be overrwritten by another arena (L)
	icon = 'icons/map/editor/warp.dmi'
	invisibility = 100
	var/size = 30

/obj/effect/private_arena/proc/GetCenter()
	return locate(x + round(size / 2), y + round(size / 2), z)
