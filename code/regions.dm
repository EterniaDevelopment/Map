Region
    parent_type = /area
    var
        region_name // The text to display when a player enters the region
        region_color = "#CCE3EB"
        pvp_enabled = 1 // if 0 there will be no fighting regardless of FF settings and whatnot.

        sound_environment = 0

        fogIntensity = 0    // if > 0, dictates alpha of fog overlay
        fogColor = null        // if defined, sets a new fog color

        ambience = null        // if defined, is an ambient music file to play
        ambienceVol = 0        // volume of the ambience

        lighting = 0        // 0 - outside
                            // 1 - pitch black

 /***
	Begin defining Regions
*/
Region
	DarkForestDungeon
		fogIntensity = 50
		//ambience = 'sounds/ambience/dungeon_spookyforest.ogg'
		ambienceVol = 20
		region_name = "Deep in Ester Isle"
		desc = {"You feel a demonic presence."}

	DarkForest
		fogIntensity = 85
		//ambience = 'sounds/ambience/spooky_forest.ogg'
		ambienceVol = 10
		region_name = "Dreadwoods"
		desc = {"The faint pulse of the Occult can be felt in the air, alive and dangerous. It might be a good idea to turn back..."}


/obj/SeasonObject/LeafWoosh
	icon = null
	icon_state = "fart"