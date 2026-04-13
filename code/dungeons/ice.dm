/datum/dungeon/ice
	name = "Ice"
	boss_type = /mob/creature/daemon/arachator
	boss_level = 100
	monsters = list(/mob/creature/daemon/swuisarme,/mob/creature/daemon/coldette)
	monster_level = 50

/area/dungeon/ice
	name = "Ice Dungeon"
	dungeon_datum = /datum/dungeon/ice

/obj/item/dungeon_key/ice
	icon_state = "key1"
