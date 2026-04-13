
/datum/dungeon
	var/name = "Generic Dungeon"
	var/setup = FALSE //has this dungeon been initialized?
	var/active = FALSE //should we check for players?
	var/last_inhabited = 0 //tick time of when the last player inhabited the dungeon, used for tracking when to reset.
	var/completed = FALSE //is this dungeon completed?

	var/party_locked = TRUE //is this dungeon locked to a party?
	var/Party/party //if this is party_locked, only let people that are in this party inside.

	var/area/owner_area

	var/list/mob/creature/monsters = list() //a list of monsters that will spawn in the dungeon.
	var/monster_level = 1

	var/mob/creature/boss //this is the instance of the boss
	var/mob/creature/boss_type = /mob/creature/boar //if defined, this is the boss for the dungeon, and on it's death, will drop the boss chest.
	var/boss_level = 1 //override for manually setting the boss level per dungeon instead of per boss
	var/boss_exp = 1000 //how much EXP you get from killing the boss
	var/boss_gold = 100 //how much gold you get from killing the boss
	var/obj/Warp/boss_exit/dungeon_exit //the Warp to exit the dungeon, only enables once boss is defeated.

/area/dungeon
	name = "Generic Dungeon Area"
	icon = 'icons/map/editor/warp.dmi'
	icon_state = "boss"

/obj/item/dungeon_key //used for keys
	icon = 'icons/items/Items.dmi'




/area/dungeon
	name = "Generic Dungeon Area"
	var/datum/dungeon/dungeon_datum = /datum/dungeon

/obj/effect/dungeon
	icon = 'icons/map/editor/warp.dmi'
	invisibility = 100

/obj/effect/dungeon/boss
	name = "Boss Spawn"
	icon_state = "boss"

/obj/effect/dungeon/monster
	name = "Monster Spawn"
	icon_state = "randspawn"

//BOSS EXIT WARP
obj/Warp/boss_exit
	icon = 'icons/map/dungeon_gates.dmi'
	icon_state = "red_closed"
	var/icon_state_open = "red"
	pixel_x = -32
	pixel_y = 0
	density = TRUE