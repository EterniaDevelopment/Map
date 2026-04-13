var/list/global_stalls

ShopStall
	parent_type = /Lot
	icon = 'icons/dummy/lot.dmi'
	icon_state = "shop"
	layer = 6
	var
		stall_state = "stall1"
		shopkeeper_state = "nobleman"
		shopkeeper_msg
		center_x
		center_y // This'll offset the shopkeeper NPC by [x] tiles from the bottom left
		center_px
		center_py

		nametag_px = 16
		nametag_py = 0 // And their nametag if needed

		revenue_stored = 0



