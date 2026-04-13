obj/TitleEye
	icon='icons/map/editor/eye.dmi'
	invisibility = 10

obj/Warp
	var
		Dest_ID=""
		fade=1
		EDir
		toggled = 1 // 0 means off
		list/messaged = list()
		obj/dungeon_key = null
	icon='icons/map/editor/warp.dmi'
	dir = SOUTH
	invisibility = 10

	//Rush Dungeon stuff
	var/rush_dungeon_id //if set, will try to grab the rush dungeon in global.rush_dungeons. Used for teleporting INTO rush dungeons.