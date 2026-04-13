/**
	Blocks players (only players) from exiting the tile in the direction this object
	points to.
*/

obj/DirDensity
	icon = 'icons/map/editor/dir_density.dmi'
	layer = 100
	invisibility = 101
	var/hardCheck = 0

	west
		icon_state = "dirs"
		dir = WEST
	east
		icon_state = "dirs"
		dir = EAST
	north
		icon_state = "dirs"
		dir = NORTH
	south
		icon_state = "dirs"
		dir = SOUTH
	northwest
		icon_state = "dirs"
		dir = NORTHWEST
		hardCheck = 1
	northeast
		icon_state = "dirs"
		dir = NORTHEAST
		hardCheck = 1
	southwest
		icon_state = "dirs"
		dir = SOUTHWEST
		hardCheck = 1
	southeast
		icon_state = "dirs"
		dir = SOUTHEAST
		hardCheck = 1

	southwesteast
		icon_state = "dirs"
		dir = SOUTH|WEST|EAST
		hardCheck = 0

	northwesteast
		icon_state = "dirs"
		dir = NORTH|WEST|EAST
		hardCheck = 0

	eastwest
		icon_state = "dirs"
		dir = EAST|WEST
		hardCheck = 0

	northsouth
		icon_state = "dirs"
		dir = NORTH|SOUTH
		hardCheck = 0
