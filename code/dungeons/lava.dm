/datum/dungeon/lava
	name = "Lava"
	boss_type = /mob/creature/daemon/ignifox/inferfox
	boss_level = 100
	monsters = list(/mob/creature/daemon/domice,/mob/creature/daemon/blazon/blazard)
	monster_level = 50

/area/dungeon/lava
	name = "Lava Dungeon"
	dungeon_datum = /datum/dungeon/lava

/obj/item/dungeon_key/lava
	icon_state = "key1"
