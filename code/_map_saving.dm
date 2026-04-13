world/New()
	..()
	log = "errors.txt"

proc
	Maps2Save()
		var/levels = world.maxz
		var/cur_level = 1
		var/list/errors = list()
		while(cur_level <= levels)
			var/list/json_list = list()
			var/list/map_list = list()
			var/list/appearances = list()
			var/list/dynamic_warps
			var/MapLimit/limits = locate("Limits_[cur_level]")in world
			var/BuildingDetails/details = locate("Details_[cur_level]") in world
			if(!details)
				errors += "\t<b><font color=red>ERROR: z=[cur_level]: Does not have a /BuildingDetails, moving on...</font></b>"
				cur_level++
				continue
			var/mname = details.building_name
			if(!limits)
				errors += "\t<b><font color=red>ERROR: [mname] (z=[cur_level]): Does not have a /MapLimit, moving on...</font></b>"
				cur_level++
				continue
			var/errored = 0
			if(!details.building_name)
				errors += "\t<b><font color=red>ERROR: [mname] (z=[cur_level]): The building does not have a name set.</font></b>"
				errored = 1
			if(!details.building_desc)
				errors +=  "\t<b><font color=red>ERROR: [mname] (z=[cur_level]): The building does not have a description set.</font></b>"
				errored = 1
			if(!details.building_cost)
				errors += "\t<b><font color=red>ERROR: [mname] (z=[cur_level]): The building does not have a cost set.</font></b>"
				errored = 1
			if(!details.building_category)
				errors += "\t<b><font color=red>ERROR: [mname] (z=[cur_level]): The building does not have a category set.</font></b>"
				errored = 1
			if(errored)
				cur_level++
				continue

			var/mx = limits.x
			var/my = limits.y
			var/interior = 0
			var/InteriorCell/cell_type
			if(details.building_interior)
				interior = 1
				cell_type = cell_types["[mx]x[my]"]
				if(!cell_type)
					errors += "\t<b><font color=red>ERROR: [mname] (z=[cur_level]) does not have a valid interior size, moving on...</font></b>"
					cur_level++
			world << "<b><u>Saving map: [details.building_name][interior?" (Interior)": "(Exterior)"]</b></u>"
			world << "\t<small>Size: [mx]x[my]"
			world << "\t<small>Cost: [details.building_cost]"
			world << "\t<small>Rent: [details.building_rent]"
			world << "\t<small>Rent Upfront: [details.building_rent_upfront]"
			world << "\t<small>Description: [details.building_desc]"
			world << "\t<small>Category: [details.building_category]"
			world << "\t<small>Guild: [details.building_guild]"
			world << "\t<small>Watchtower: [details.building_watchtower?"yes":"no"]"
			world << "\t<small>Settlement only: [details.building_settlement_only?"yes":"no"]"
			for(var/turf/tile in block(locate(1,1,cur_level),locate(mx,my,cur_level)))
				if(istype(tile,/turf/void))
					continue
				map_list["[tile.x-1],[tile.y-1]"] = list("type"=tile.type)
				if(tile.layer != initial(tile.layer))
					map_list["[tile.x-1],[tile.y-1]"]["layer"] = tile.layer
				if(tile.density != initial(tile.density))
					map_list["[tile.x-1],[tile.y-1]"]["density"] = tile.density
				var/list/tile_list = map_list["[tile.x-1],[tile.y-1]"]

				for(var/obj/O in tile)
					if(istype(O,/SmallPreview)) continue
					if(istype(O,/BuildingDetails)) continue
					if(istype(O,/MapLimit)) continue
					if(!tile_list["objects"]) tile_list["objects"] = list()

					if(istype(O,/Building/Warper/Dynamic))
						var/Building/Warper/Dynamic/warp = O
						if(!dynamic_warps) dynamic_warps = list()
						dynamic_warps["[O.x-1],[O.y-1]"] = warp.dynamic_id
					tile_list["objects"] += O.type
				if(tile_list["objects"] && length(tile_list["objects"]) <= 0)
					tile_list -= "objects"
				if(tile.underlays && length(tile.underlays) || tile.overlays && length(tile.overlays))
					var/mutable_appearance/new_app = new(tile.appearance)
					new_app.invisibility = 0
					appearances["[tile.x-1],[tile.y-1]"] = new_app

			json_list["name"] = details.building_name
			json_list["desc"] = details.building_desc
			json_list["guild"] = details.building_guild
			json_list["category"] = details.building_category
			json_list["width"] = mx
			json_list["height"] = my
			json_list["cost"] = details.building_cost
			json_list["rent_cost"] = details.building_rent
			json_list["rent_upfront"] = details.building_rent_upfront
			json_list["watchtower"] = details.building_watchtower
			json_list["settlement_only"] = details.building_settlement_only
			json_list["expansion"] = details.building_expansion
			json_list["dynamic"] = details.building_dynamic
			if(details.building_no_interior) json_list["no_interior"] = 1
			if(cell_type) json_list["cell_type"] = cell_type.type
			json_list["map"] = map_list
			if(dynamic_warps)
				json_list["warps"] = dynamic_warps
			var/file_name = "construction/templates/buildings/[ckey(details.building_category)]/[ckey(details.building_name)]/[interior?"interior":"exterior"].json"
			if(appearances && length(appearances))
				var/appearance_file_name = "construction/templates/buildings/[ckey(details.building_category)]/[ckey(details.building_name)]/appearances_[interior?"interior":"exterior"].sav"
				fdel(appearance_file_name)
				var/savefile/appearance_file = new("[appearance_file_name]")
				appearance_file["appearances"] << appearances
			fdel(file_name)
			text2file(json_encode(json_list),"[file_name]")
			Map2PNG(map_name=details.building_name,map_category=details.building_category,interior=interior,level=cur_level,mx=mx,my=my)
			world << "<b><font color=green>Successfully saved map [details.building_name] ([interior?"Interior":"Exterior"])</b></font>"
			cur_level++
			sleep(1)
		world << "<b><font color=blue>All maps successfully saved!</b></font>"
		if(errors && length(errors))
			world << "<b><font color=red>The following errors were found:</font></b>"
			for(var/e in errors)
				world << e

	Map2PNG(map_name,map_category,interior=0,level=1,mx=world.maxx,my=world.maxy)
		world << "<b><u><font color=blue>Generating preview image(s) for [map_name][interior?"(Interior)":"(Exterior)"]...</font></u></b>"
		var/icon/canvas = new('icons/blank.dmi')
		var/icon/canvas_small

		var/icon/tint = new('icons/blank_alpha.dmi')
		var/map_width = (mx*32)
		var/map_height = (my*32)

		var/preview_x = 0
		var/preview_y = 0
		var/preview_x_end = 0
		var/preview_y_end = 0

		var/SmallPreview/Start/preview_start = locate("PreviewStart_[level]") in world
		var/SmallPreview/End/preview_end = locate("PreviewEnd_[level]") in world

		if(preview_start)
			world << "\t<small>Found /SmallPreview/Start at [preview_start.x],[preview_start.y]</small>"
			if(preview_start.x == 1) preview_x = 32
			else preview_x = (preview_start.x-1)*32
			if(preview_start.y == 1) preview_y = 32
			else preview_y = (preview_start.y-1)*32

		else
			world << "\t<small><font color=red>Unable to find /SmallPreview/Start, using 1,1</font></small>"
			preview_x = 1
			preview_y = 1

		if(preview_end)
			world << "\t<small>Found /SmallPreview/End at [preview_end.x],[preview_end.y]</small>"
			preview_x_end = preview_end.x*32
			preview_y_end = preview_end.y*32

		else
			world << "\t<small><font color=red>Unable to find /SmallPreview/End, using [mx],[my]</font></small>"
			preview_x_end = mx*32
			preview_y_end = my*32

		canvas.Scale(map_width,map_height)
		tint.Scale(map_width,map_height)

		for(var/turf/tile in block(locate(1,1,level),locate(mx,my,level)))
			if(istype(tile,/turf/void)) continue
			var/icon/tile_icon = new(tile.icon,tile.icon_state,frame=1)
			for(var/UL in tile.underlays)
				var/icon/I = icon(UL:icon,UL:icon_state,frame=1)
				tile_icon.Blend(I,ICON_UNDERLAY)
			for(var/OL in tile.overlays)
				var/icon/I = icon(OL:icon,OL:icon_state,frame=1)
				tile_icon.Blend(I,ICON_OVERLAY)
			for(var/obj/O in tile)
				if(istype(O,/SmallPreview)) continue
				if(istype(O,/BuildingDetails)) continue
				if(istype(O,/MapLimit)) continue
				if(istype(O,/obj/generic_shadow)) continue
				canvas.Blend(icon(O.icon,O.icon_state,frame=1),ICON_OVERLAY,O.pixel_x+(tile.x*32)-32,O.pixel_y+(tile.y*32)-32)
			canvas.Blend(tile_icon,ICON_UNDERLAY,(tile.x*32)-32,(tile.y*32)-32)
		canvas.Crop(1,1,map_width,map_height) // In case something else caused it to extend larger
		if(preview_x && preview_y && !interior)
			canvas_small = icon(canvas)
			canvas_small.Crop(preview_x,preview_y,preview_x_end,preview_y_end)
		if(canvas_small)
			fcopy(canvas_small,"construction/templates/buildings/[ckey(map_category)]/[ckey(map_name)]/preview_small.png")
		if(tint && !interior)
			canvas.Blend(tint,ICON_OVERLAY,1,1)
		canvas.Crop(1,1,map_width,map_height) // In case something else caused it to extend larger
		var/file_name = "construction/templates/buildings/[ckey(map_category)]/[ckey(map_name)]/preview.png"
		if(interior) file_name = "construction/templates/buildings/[ckey(map_category)]/[ckey(map_name)]/preview_interior.png"
		world << "<b><font color=green>Preview image(s) for [map_name] successfully generated to: [file_name]</font></b>"
		fcopy(canvas,"[file_name]")

mob/verb/SaveMaps()
	set name = "Save Maps"
	src << "<u><font color=blue><b>Beginning save of [world.maxz] map layers...</b></font></u>"
	Maps2Save()


SmallPreview
	parent_type = /obj
	layer = 99
	icon = 'icons/editor_cursor.dmi'
	Start
		New()
			..()
			tag = "PreviewStart_[z]"
	End
		New()
			..()
			tag = "PreviewEnd_[z]"

var/list/cell_types = list()

world/New()
	for(var/cell_type in typesof(/InteriorCell)-/InteriorCell)
		var/InteriorCell/cell = new cell_type
		cell_types["[cell.width]x[cell.height]"] = cell
	..()


InteriorCell
	parent_type = /obj
	var
		width = 0
		height = 0




	// We do odd numbers here to give interiors a symetrical size (so there's the same amount of tiles from the "center" all the way around.
	Tiny
		width = 11
		height = 11

	Small
		width = 15
		height = 15

	Average
		width = 21
		height = 21

	Modest
		width = 25
		height = 25

	Moderate
		width = 31
		height = 31

	Fourty
		width = 41
		height = 41

	Large
		width = 51
		height = 51

	Huge
		width = 101
		height = 101

Building
	Warper
		parent_type = /obj
		icon = 'icons/dummy/lot.dmi'
		layer = 99
		mouse_opacity = 2

		New()
			..()
			icon = null

		Exterior
			icon_state = "ext_warper"

		Interior
			icon_state = "int_warper"


		Dynamic
			icon_state = "door"
			var/dynamic_id


BuildingDetails
	parent_type = /obj
	icon = 'icons/gift.dmi'
	icon_state = "heart"
	var
		building_name
		building_desc
		building_cost = 0
		building_category
		building_guild
		building_watchtower = 0
		building_interior = 0
		building_settlement_only = 0

		building_rent = 100
		building_rent_upfront = 500

		building_no_interior = 0 // Set this to 1 if the building has no interior.

		building_dynamic = 0 // Set this to 1 if the building saves/loads using an ID instead of location.
		building_expansion = 0 // Set this to 1 if the building can only be placed within/on another building (apartments for example)

	New()
		..()
		tag = "Details_[z]"



MapLimit
	parent_type = /obj
	icon = 'icons/gift.dmi'
	icon_state = "heart"
	color = "yellow"
	// Place in in the upper-right corner of your map to handle saving all maps in one pass.
	New()
		..()
		tag = "Limits_[z]"
