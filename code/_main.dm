/* Layer definitions: */

#define AREA_LAYER 1
#define TURF_LAYER 2
#define SHADOW_LAYER 2.5
#define TILEBUFF_LAYER 2.6
#define TAR_LAYER 2.7
#define OBJ_LAYER 3

#define MOB_LAYER 4

#define TICK_LAG world.tick_lag

// Mob-relative layers: (lowest to greatest trend)
#define SPELL_UNDER 	FLOAT_LAYER-0.20

#define FOOT_LAYER		FLOAT_LAYER-0.17
#define SHIRT_LAYER		FLOAT_LAYER-0.16
#define ARMOR_LAYER		FLOAT_LAYER-0.15
#define ARM_LAYER		FLOAT_LAYER-0.145
#define HAND_LAYER		FLOAT_LAYER-0.14
#define CLOAK_LAYER		FLOAT_LAYER-0.13
#define HAIR_LAYER 		FLOAT_LAYER-0.12
#define SPECIAL_LAYER 	FLOAT_LAYER-0.11
#define CROWN_LAYER 	FLOAT_LAYER-0.11

#define SPELL_OVER 		FLOAT_LAYER-0.10
#define EFFECT_UNDER	FLOAT_LAYER-0.09

#define MONSTER_LAYER 5
#define FLY_LAYER 5
#define OVER_LAYER 6
//#define SPECIAL_LAYER 7
#define NUM_LAYER 8
#define FADE_LAYER 9
#define HUD_LAYER 10
#define FRAME_LAYER 11
#define TEXT_LAYER 12
#define INPUT_LAYER 13
#define HUD_EFFECTS 14


// Prop flags
#define PROPS_ALL 0
#define PROPS_SLUMS 1
#define PROPS_STANDARD 2
#define PROPS_WEALTHY 4

world
	fps = 20
	icon_size = 32
	view = 10



mob
	density = 0
	var/levelcap = 54


/* Dummy functions */

proc/IMAGECHECK()
	return

atom
	var
		jointag
		reverse
		underlayed
		ignore
		jointagone
		noignore

	proc/Extend()
		return

	proc/Align()
		return

	proc/OrientLayer()
		return

proc/AddMapEvent()
	return

proc/find_most_abundant()
	return

/area
    icon = 'icons/editor.dmi'
    icon_state = "area"

/turf
	icon = 'icons/editor.dmi'
	icon_state = "turf"