obj
	map
		jianghu
			stall
				icon='icons/map/obj/jianghu/stalls.dmi'
				pixel_x = -16
				layer = HUD_LAYER

				stall1/icon_state = "stall1"
				stall2/icon_state = "stall2"
				stall3/icon_state = "stall3"
				stall4
					density = 1
					pixel_x = 0
					icon_state = "stall4"
				stall5
					density = 1
					pixel_x = 0
					icon_state = "stall5"
				stall6
					density = 1
					pixel_x = 0
					icon_state = "stall6"

			beds
				icon = 'icons/map/obj/jianghu_house/tall_decorations.dmi'
				icon_state = "bed1"
				name = "Bed - 1"
				density = 1
				bound_height = 64
				bed2
					name = "Bed - 2"
					icon_state = "bed2"




			decorations
				icon = 'icons/map/obj/jianghu_house/decorations.dmi'
				name = "Nightstand"
				icon_state = "stand"
				density = 1

				stand2
					name = "Small Stand"
					icon_state = "stand2"

				vases
					name = "Vase - 1"
					icon_state = "vase1"
					vase2
						name = "Vase - 2"
						icon_state = "vase2"
					vase3
						name = "Vase - 3"
						icon_state = "vase3"
					vase4
						name = "Vase - 4"
						icon_state = "vase4"
					vase5
						name = "Vase - 5"
						icon_state = "vase5"
					vase6
						name = "Vase - 6"
						icon_state = "vase6"
					vase7
						name = "Vase - 7"
						icon_state = "vase7"
					vase8
						name = "Vase - 8"
						icon_state = "vase8"
					vase9
						name = "Vase - 9"
						icon_state = "vase9"
					vase10
						name = "Vase - 10"
						icon_state = "vase10"
					vase11
						name = "Vase - 11"
						icon_state = "vase11"
				silkchairS
					name = "Silk Chair South"
					icon_state = "chairS"
					density = 0
					pixel_y = 5
				silkchairN
					name = "Silk Chair North"
					icon_state = "chairN"
					density = 0
					pixel_y = 5
				silkchairE
					name = "Silk Chair East"
					icon_state = "chairE"
					density = 0
					pixel_y = 5
				silkchairW
					name = "Silk Chair West"
					icon_state = "chairW"
					density = 0
					pixel_y = 5
				woodchairS
					name = "Wood Chair South"
					icon_state = "wchairS"
					density = 0
				woodchairN
					name = "Wood Chair North"
					icon_state = "wchairN"
					density = 0
				woodchairE
					name = "Wood Chair East"
					icon_state = "wchairE"
					density = 0
				woodchairW
					name = "Wood Chair West"
					icon_state = "wchairW"
					density = 0
				cushion1
					name = "Cushion - 1"
					icon_state = "cushion1"
					density = 0
				cushion2
					name = "Cushion - 2"
					icon_state = "cushion2"
					density = 0
				yellowlamp
					name = "Standing Lamp - Yellow"
					icon_state = "yellowlamp"
					appearance_flags = TILE_BOUND

				redlamp
					name = "Standing Lamp - Red"
					icon_state = "redlamp"
					appearance_flags = TILE_BOUND

				wallshelf1
					name = "Wall Shelf - 1"
					icon_state = "wallshelf1"
					pixel_y = -6
				wallshelf2
					name = "Wall Shelf - 2"
					icon_state = "wallshelf2"
					pixel_y = -6
				teatable1
					name = "Teatable - 1"
					icon_state = "teatable1"
				teatable2
					name = "Teatable - 2"
					icon_state = "teatable2"
				painting1
					name = "Painting - 1"
					icon_state = "painting1"
					pixel_y = 16
				painting2
					name = "Painting - 2"
					icon_state = "painting2"
					pixel_y = 16

			hanging_light
				name = "Hanging Lamp - Red - 1"
				layer = MOB_LAYER + 1
				density = 0
				icon = 'icons/map/obj/jianghu_house/decorations.dmi'
				icon_state = "redlight1"


				red2
					name = "Hanging Lamp - Red - 2"
					icon_state = "redlight2"
				yellow1
					name = "Hanging Lamp - Yellow - 1"
					icon_state = "yellowlight1"
				yellow2
					name = "Hanging Lamp - Yellow - 2"
					icon_state = "yellowlight2"

			hanging_string
				name = "Hanging Lamp String"
				layer = MOB_LAYER + 0.999
				density = 0
				icon = 'icons/map/obj/jianghu_house/decorations.dmi'
				icon_state = "lightstring"

			separator
				icon = 'icons/map/obj/jianghu_house/tall_decorations.dmi'
				icon_state = "separator"
				name = "Separator"
				density = 1
				New()
					..()
					if(loc)
						OrientLayer(MOB_LAYER - 0.5/world.maxy)

				tl
					name = "Separator - Topeft"
					icon_state = "separator_tl"
				tr
					name = "Separator - Topright"
					icon_state = "separator_tr"
				bl
					name = "Separator - Bottomleft"
					icon_state = "separator_bl"
				br
					name = "Separator - Bottomright"
					icon_state = "separator_br"
				l
					name = "Separator - Left"
					icon_state = "separator_l"
				r
					name = "Separator - Right"
					icon_state = "separator_r"

			shelves
				name = "Bookshelf - 1"
				icon = 'icons/map/obj/jianghu_house/bookshelves.dmi'
				icon_state = "bookshelf1"
				density = 1
				New()
					..()
					if(loc) OrientLayer(MOB_LAYER)

				bookshelf2
					name = "Bookshelf - 2"
					icon_state = "bookshelf2"
					bound_width = 64
				longshelf
					name = "Longshelf"
					icon_state = "longshelf"
					bound_width = 64

			tables
				name = "Table - 1"
				icon = 'icons/map/obj/jianghu_house/tables.dmi'
				icon_state = "table1"
				bound_width = 64
				bound_height = 32
				density = 1
				table2
					name = "Table - 2"
					icon_state = "table2"
					bound_width = 32
					bound_height = 64
				table3
					name = "Table - 3"
					icon_state = "table3"
					bound_width = 32
					bound_height = 64

				regal1
					name = "Regal Table - 1"
					icon_state = "regal1"
					bound_width = 32
					bound_height = 64
				regal2
					name = "Regal Table - 2"
					icon_state = "regal2"
					bound_width = 32
					bound_height = 32

				calligraphy
					name = "Calligraphy Table"
					icon_state = "calligraphy"
					pixel_y = -5

			outdoors

				Lamp
					name = "Street Lamp - 1"
					icon='icons/map/obj/jianghu/lampposts.dmi'
					icon_state="1"
					density=1
					pixel_x = -32

					alt
						name = "Street Lamp - 2"
						icon_state = "2"


				Fence1
					icon = 'icons/map/turf/jianghu/fence1.dmi'
					density = 1
					bl
						name = "Fence1 - Bottomleft"
						icon_state = "bottom_left"
					br
						name = "Fence1 - Bottomright"
						icon_state = "bottom_right"
					side
						name = "Fence1 - Side"
						icon_state = "side"
					middle
						name = "Fence1 - Middle"
						icon_state = "middle"
					tl
						name = "Fence1 - Topleft"
						icon_state = "top_left"
					tr
						name = "Fence1 - Topright"
						icon_state = "top_right"

					endr
						name = "Fence1 - Right End"
						icon_state = "right_end"
					endl
						name = "Fence1 - Left End"
						icon_state = "left_end"

					endt
						name = "Fence1 - Top End"
						icon_state = "top_end"

					endb
						name = "Fence1 - Bottom End"
						icon_state = "bottom_end"


				Statues
					density = 1
					pixel_x=2
					var/needs_overlay = 1 // If the statue still uses the old overlaying effect instead of bounds shifting.
					New()
						..()
						if(needs_overlay && loc)
							var/image/I=image(icon,src,"[icon_state]_top",OVER_LAYER)
							overlays+=I
					mage
						left
							name = "Lion Statue 1 - Left"
							icon = 'icons/map/obj/jianghu_house/tall_decorations.dmi'
							icon_state="statue_left_1"
						left_2
							name = "Lion Statue 2 - Left"
							icon = 'icons/map/obj/jianghu_house/tall_decorations.dmi'
							icon_state="statue_left_2"
						right
							name = "Lion Statue 1 - Right"
							icon = 'icons/map/obj/jianghu_house/tall_decorations.dmi'
							icon_state="statue_right_1"
						right_2
							name = "Lion Statue 2 - Right"
							icon = 'icons/map/obj/jianghu_house/tall_decorations.dmi'
							icon_state="statue_right_2"

				Floor
					name = "Brick Floor"
					icon='icons/map/turf/jianghu/brickfloor.dmi'



				FourfoldEngraving
					density = 1
					icon='icons/map/turf/jianghu_house/wall.dmi'
					name = "Wall - Fourfold Engraving"
					icon_state = "yinyang"

					red
						name = "Red Wall - Fourfold Engraving"
						icon='icons/map/turf/jianghu_house/wall_red.dmi'
					green
						name = "Green Wall - Fourfold Engraving"
						icon='icons/map/turf/jianghu_house/wall_green.dmi'
					blue
						name = "Blue Wall - Fourfold Engraving"
						icon='icons/map/turf/jianghu_house/wall_blue.dmi'

				IlluminatedEngraving
					density = 1

					icon='icons/map/turf/jianghu_house/wall.dmi'
					name = "Wall - Illuminated Engraving"
					icon_state = "fox"

					red
						name = "Red Wall - Illuminated Engraving"
						icon='icons/map/turf/jianghu_house/wall_red.dmi'
					green
						name = "Green Wall - Illuminated Engraving"
						icon='icons/map/turf/jianghu_house/wall_green.dmi'
					blue
						name = "Blue Wall - Illuminated Engraving"
						icon='icons/map/turf/jianghu_house/wall_blue.dmi'

