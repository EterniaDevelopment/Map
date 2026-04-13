Lot
	parent_type = /obj
	icon = 'icons/dummy/lot.dmi'
	icon_state = "parent"
	layer = 99
	var
		lot_id // The ID of the lot, must be unique and must match a /Lot/Interior on the map somewhere.

		owner_guild // The guild that owns the lot.
		owner_player // The player paying the guild for the lot.

		cost_upfront = 0
		cost_daily = 0

		max_chests = 5
		max_shops = 1


	Warper
		// Each lot must have an Interior and Exterior warper, the exterior warper leads indoors and viseversa.
		// They must have the same lot_id as eachother and of the /Lot/Interior they belong to.
		var/Lot/Warper/linked
		Interior
			icon_state = "int_warper"
			Link()
				var/Lot/Warper/Exterior/ext = locate("lot_warper_ext_[lot_id]")
				if(ext)
					linked = ext
			New()
				..()
				tag = "lot_warper_int_[lot_id]"
		Exterior
			icon_state = "ext_warper"
			Link()
				var/Lot/Warper/Exterior/ext = locate("lot_warper_int_[lot_id]")
				if(ext)
					linked = ext

			New()
				..()
				tag = "lot_warper_ext_[lot_id]"

		proc
			Link()

	Interior
		icon = 'icons/dummy/lot.dmi'
		icon_state = "interior"
		parent_type = /area
		layer = 99
		var
			lot_id
			allowed_props = 0
		// The /Lot/Interior area must cover the entire interior of the building associated with the lot.
		// Interior decorations, chests, shopkeepers, etc are all saved/loaded relative to this region.
		// It must have the same lot_id as the two warpers associated with it.


/*
So an example building would be a simple exterior with a unique ID, you'd place the exterior warper with that ID down on the doorway.
On the interior you'd cover the entire thing with the /Lot/Interior region with the same ID, with the matching warper on the interior doorway.
Simple as that, decorations are loaded when the map loads and each interior pulls information from where it needs to.

You'll also want to place down just a /Lot object somewhere with the same lot_id, doesn't actually matter where, but ideally on the house somewhere.
The /Lot itself is where you'd set the costs and guild stuff

*/