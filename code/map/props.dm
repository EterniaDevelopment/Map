obj/map
	billboard
		icon='icons/map/obj/village/billboard.dmi'
		icon_state = "billboard"
		pixel_x = -32
		density = 1
		var
			list/messages = list()
			tmp
				lot_id
				obj/map/billboard_invis/dense1
				obj/map/billboard_invis/dense2
				Lot/linked_lot

				linked_guild

obj
	map
		star
			icon='icons/map/turf/other/void.dmi'
			icon_state="star1"
			layer = 1
			New()
				..()
				icon_state = "star[rand(1,4)]"
				pixel_x = rand(-32,32)
				pixel_y = rand(-32,32)
		trigger
			sign
				icon='icons/map/obj/props/sign.dmi'
				icon_state="sign"
				var/sign_text=""
				density = 1
		props
			training_dummy
				icon = 'icons/map/obj/props/training_dummy.dmi'
				density = 1
				icon_state = "idle"
				Click()
					if(get_dist(src,usr) <= 1)
						flick("hit",src)
			study_desk
				icon = 'icons/map/obj/props/study_desk.dmi'
				density = 1
				one
					icon_state = "desk1_b"
				two
					icon_state = "desk2_b"
			small_table
				icon = 'icons/map/obj/props/small_table.dmi'
				density = 1
				one
					icon_state = "1"
				two
					icon_state = "2"
			markings
				icon = 'icons/map/obj/props/markings.dmi'
				azrael
					icon_state = "azrael_sign"
				blue
					icon_state = "blue_runes"
			piano_chair
				icon = 'icons/map/obj/props/piano_chair.dmi'
				left
					icon_state = "l"
				right
					icon_state = "r"
			grand_piano
				icon = 'icons/map/obj/props/grand_piano.dmi'
				icon_state = "bottom"
				density = 1
				bounds = "1,1 to 64,32"
				var
					tmp
						image/note_overlay
						playing_notes = 0

			wagons
				icon_state = "wagon"
				one
					icon = 'icons/map/obj/props/wagon_1.dmi'
				two
					icon = 'icons/map/obj/props/wagon_2.dmi'
				three
					icon = 'icons/map/obj/props/wagon_3.dmi'
				four
					icon = 'icons/map/obj/props/wagon_4.dmi'
				five
					icon = 'icons/map/obj/props/wagon_5.dmi'
				six
					icon = 'icons/map/obj/props/wagon_6.dmi'
			wolf_totem
				icon = 'icons/map/obj/props/wolf_totem.dmi'
				density = 1
				icon_state = "bottom"

			barrel
				icon='icons/map/obj/props/barrel.dmi'
				icon_state="barrel"
				density=1
			display
				icon='icons/map/obj/props/display.dmi'
				density=1
				pixel_y=10
				apples/icon_state="1"
			chair
				icon='icons/map/obj/props/chair.dmi'
				left/icon_state="left"
				right/icon_state="right"
				down/icon_state="down"
				up/icon_state="up"
			vase
				icon='icons/map/obj/props/vase.dmi'
				empty/icon_state="vase"
				flowers/icon_state="flowers"
				density=1
			plant
				icon='icons/map/obj/props/plant.dmi'
				icon_state="1"
				density=1
			lantern
				icon='icons/map/obj/props/lantern.dmi'
				icon_state="lantern"
				layer=OVER_LAYER

			witchlight  //a sign of namarre/sareen's work.....
				icon='icons/map/obj/props/lantern.dmi'
				icon_state="witchlight"
				layer=OVER_LAYER
			rope
				icon='icons/map/obj/props/rope.dmi'
				icon_state="rope"
				density=1
			basket
				icon='icons/map/obj/props/basket.dmi'
				density=1
				flowers/icon_state="flowers"
			bench
				density=0
				bench_1
					icon='icons/map/obj/props/bench_1.dmi'
					east
						bench_1/icon_state="1e"
						bench_2/icon_state="2e"
						bench_3/icon_state="3e"
					south
						bench_1/icon_state="1s"
						bench_2/icon_state="2s"
						bench_3/icon_state="3s"
					west
						bench_1/icon_state="1w"
						bench_2/icon_state="2w"
						bench_3/icon_state="3w"
				bench_2
					icon = 'icons/map/turf/coliseum/coliseumtiles.dmi'
					east_to_west
						left
							icon_state="53"
						middle
							icon_state="54"
						right
							icon_state="55"
					north_to_south
						top
							icon_state="58"
						middle
							icon_state="57"
						bottom
							icon_state="56"
				bench_3
					icon = 'icons/map/obj/props/bench_2.dmi'
					left
						icon_state = "l"
					middle
						icon_state = "m"
					right
						icon_state = "r"
			chest
				icon='icons/map/obj/props/chest.dmi'
				density=1
				open/icon_state="open"
				close/icon_state="close"
			crate
				icon='icons/map/obj/props/crate.dmi'
				density=1
				crate_1/icon_state="1"
				crate_2/icon_state="2"
				crate_3/icon_state="3"
				crate_4/icon_state="4"
				crate_5/icon_state="5"
				crate_6/icon_state="6"
				crate_7/icon_state="7"
				crate_8/icon_state="8"
				crate_9/icon_state="9"
				crate_10/icon_state="10"
				crate_11/icon_state="11"
			crate_pile
				icon='icons/map/obj/props/crate_pile.dmi'
				icon_state="crates"
				density=1
				pixel_x=-8
			wagon
				left/icon='icons/map/obj/props/wagon_2.dmi'
				right/icon='icons/map/obj/props/wagon_1.dmi'
				icon_state="wagon"
				density=1

		ocean
			starfish1
				icon='icons/map/obj/ocean/starfish.dmi'
				icon_state="starfish1"
				density=0
			starfish2
				icon='icons/map/obj/ocean/starfish.dmi'
				icon_state="starfish2"
				density=0
			barnacles
				icon='icons/map/obj/ocean/barnacles.dmi'
				icon_state="barnacles"
				density=0
			coral1
				icon='icons/map/obj/ocean/coral.dmi'
				icon_state="coral1"
				density=0
			bubbles1
				icon='icons/map/obj/ocean/seabubbles.dmi'
				icon_state="bubbles1"
				density=0
		armory
			empty_rack
				icon='icons/map/obj/armory/rack.dmi'
				icon_state="rack"
				density=1
				pixel_y=8
			rack
				icon='icons/map/obj/armory/rack.dmi'
				density=1
				rack_1
					icon_state="1"
					pixel_y=6
				rack_2
					icon_state="2"
					pixel_y=6
				rack_3/icon_state="3"
			wall
				swords
					icon='icons/map/obj/armory/sword.dmi'
					icon_state="mount"
			shelf
				swords
					icon='icons/map/obj/armory/sword.dmi'
					icon_state="shelf"
			shield
				shield
					icon='icons/map/obj/armory/shield.dmi'
					icon_state="shields"
					pixel_y=2


		church
			book1
				icon='icons/map/obj/props/church.dmi'
				icon_state="book1"
				density=0
			book2
				icon='icons/map/obj/props/church.dmi'
				icon_state="book2"
				density=0
			book3
				icon='icons/map/obj/props/church.dmi'
				icon_state="book3"
				density=1

		signs
			kitty
				icon='icons/map/obj/props/signs.dmi'
				icon_state="kitty"
				density=0
			clinic
				icon='icons/map/obj/props/signs.dmi'
				icon_state="clinic"
				density=0
			bar
				icon='icons/map/obj/props/signs.dmi'
				icon_state="bar"
				density=0


		seashells
			seashell1
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="seashell1"
				density=0
			seashell2
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="seashell2"
				density=0
			seashell3
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="seashell3"
				density=0
			seashell4
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="seashell4"
				density=0
			seashell5
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="seashell5"
				density=0
			seashell6
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="seashell6"
				density=0
			seashell7
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="seashell7"
				density=0
			seashell8
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="seashell8"
				density=0
			branch
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="branch"
				density=0

		grandfather_clocks
			grandfather1
				icon='icons/map/obj/props/grandfather_clocks.dmi'
				icon_state="1"
				density=0
			grandfather2
				icon='icons/map/obj/props/grandfather_clocks.dmi'
				icon_state="2"
				density=0

		random
			osrona_throne
				icon='icons/map/obj/props/osrona_throne.dmi'
				density=0
			firepit
				icon='icons/map/obj/village/firepit.dmi'
				density=0
				icon_state="lit"
			bonsai
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="bonsai"
				density=0
			woodpile
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="woodpile"
				density=0
			log
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="log"
				density=0
			sack
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="sack"
				density=0
			yellowbag
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="yellowbag"
				density=0
			greenbag
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="greenbag"
				density=0
			skully
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="skully"
				density=1
			bones_top
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="bones_top"
				density=1
			bones_bottom
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="bones_bottom"
				density=0
			blood1
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="blood1"
				density=0
			blood2
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="blood2"
				density=0
			blood3
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="blood3"
				density=0
			blood4
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="blood4"
				density=0
			blood5
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="blood5"
				density=0
			home
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="home"
				density=0
			notsafe
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="notsafe"
				density=0
			badplace
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="badplace"
				density=0
			shhh
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="shhh"
				density=0
			smash
				icon='icons/map/obj/props/random_stuff.dmi'
				icon_state="smash"
				density=0


		ocean
			starfish1
				icon='icons/map/obj/ocean/starfish.dmi'
				icon_state="starfish1"
				density=0
			starfish2
				icon='icons/map/obj/ocean/starfish.dmi'
				icon_state="starfish2"
				density=0
			barnacles
				icon='icons/map/obj/ocean/barnacles.dmi'
				icon_state="barnacles"
				density=0
			coral1
				icon='icons/map/obj/ocean/coral.dmi'
				icon_state="coral1"
				density=0
			bubbles1
				icon='icons/map/obj/ocean/seabubbles.dmi'
				icon_state="bubbles1"
				density=0


/obj/SeasonObject/Destroyable/SnowPile //relatively simplistic, only spawns in one season
	name = "Snow Pile"
	icon = 'icons/season_objects32.dmi'
	icon_state = "SnowPile1"

/obj/SeasonObject/Destroyable/LeafPile //more complex, spawns in all seasons with different icons
	name = "Leaf Pile"
	icon = 'icons/season_objects32.dmi'
	icon_state = "SpringSummer1"

/obj/SeasonObject/Destroyable/Leaves //more complex, spawns in all seasons with different icons
	name = "Leaves"
	icon = 'icons/map/season_leaves32.dmi'
	icon_state = "summer1"
