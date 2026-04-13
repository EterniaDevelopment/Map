/obj/effect/rush_dungeon
	name = "Unnamed Rush Dungeon"
	icon_state = "dungeon"
	//invisibility = 100

	// ID of the dungeon. These are added the rush_dungeon associative list. Must be unique or you will overwrite other rush dungeons.
	var/id = "rush dungeon"

	//ID of the Warp object that everyone gets teleported to when this dungeon ends.
	var/exit_warp = ""
	var/wave_start = 0

	//How many times a person can complete this dungeon a day. If you are at or above this number, you can't enter the dungeon.
	var/daily_limit = 10
	//Is this rush dungeon party locked? You will be refused entry if you are not in a party._DarknessPlanes =
	var/party_locked = TRUE
	// How many waves does this rush dungeon have? Hint: The final boss should show up the last one.
	var/wave_count = 10
	// How much time will we wait between waves?
	var/delay_between_waves = 15
	// The cost in coins to gain access to the rush dungeon.
	var/coin_cost = 100
	//how much AP (EXP) to give after you complete the dungeon.
	var/reward_ap = 100
	// How many rush tokens do you get for completing the rush dungeon.
	var/reward_token = 10

	//the RADIUS of the rush_dungeon. It will only track and use mob spawns that are WITHIN this size.
	var/size = 10

	var/difficulty = "easy"


/mob/creature
	//If we are part of a rush_dungeon, what wave we start spawning on.
	var/_wave_start = 0
	//If we are part of a rush_dungeon, what wave we stop spawning on.
	var/_wave_end = 0
	//If something else ((((a rush dungeon)))) handles our respawning instead.
	var/tmp/outside_respawn = FALSE

	var/_rush_override_name = ""
	var/_rush_override_level = 0

/mob/creature
	//If we are part of a rush_dungeon, what wave we start spawning on.


/mob/creature/SkeletonBoss
	name = "Skeletron" //placeholder LOL
	icon = 'icons/creatures/SkeletonBoss1.dmi'

/mob/creature/slime
	name = "Green Slime"
	icon = 'icons/creatures/Blob.dmi'


/mob/creature/slime/green
	name = "Green Slime"
	icon = 'icons/creatures/Blob.dmi'
/mob/creature/slime/blue
	name = "Blue Slime"

/mob/creature/boar/king
	name = "King Boar"


/mob/creature/NecromancerBoss
	name = "Necromancer"
	icon = 'icons/player/verypale_male.dmi'



/mob/creature/Owldrake
	name = "Owldrake"
	icon = 'icons/creatures/OwlDrake.dmi'


/mob/creature/Ent
	name = "Ent"
	icon = 'icons/creatures/Ent.dmi'


/mob/creature/IronGolem
	name = "Ironmaster"
	icon = 'icons/creatures/steel_bossgolem.dmi'

/mob/creature/stinnoxking
	icon='icons/creatures/stinox.dmi'


/mob/creature/daemon/void_eye
	name = "Void's Eye"
	icon = 'icons/daemons/VoidEye.dmi'

/mob/creature/gremlin
    name = "Gremlin"
    icon = 'icons/player/gremlin.dmi'
    icon_state = "run"

/mob/creature/gremlin/grue
    name = "Grue"
    transform = matrix(2,0,0,0,2,0)
    appearance_flags = parent_type::appearance_flags|PIXEL_SCALE