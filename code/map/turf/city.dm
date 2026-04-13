turf
	city
		railing
			icon = 'icons/map/city_tiles_railing.dmi'
			top
				icon_state = "Top_Middle"
				two
					icon_state = "Top_Middle_2"
				left
					icon_state = "Top_Left"
					one
						icon_state = "Top_Left_1"
					two
						icon_state = "Top_Left_2"
				right
					icon_state = "Top_Right"
					one
						icon_state = "Top_Right_1"
					two
						icon_state = "Top_Right_2"

			left
				icon_state = "Left"
			right
				icon_state = "Right"

			bottom
				icon_state = "Bottom_Middle"
				left
					icon_state = "Bottom_Left"
					one
						icon_state = "Bottom_Left_1"
					two
						icon_state = "Bottom_Left_2"
				right
					icon_state = "Bottom_Right"
					one
						icon_state = "Bottom_Right_1"
					two
						icon_state = "Bottom_Right_2"
			end
				left
					icon_state = "End_Left_1"
					two
						icon_state = "End_Left_2"
				right
					icon_state = "End_Right_1"
					two
						icon_state = "End_Right_2"
		stairs
			icon = 'icons/map/city_tiles_stairs.dmi'
			icon_state = "Middle"
			bottom
				icon_state = "Bottom"
			left
				one
					icon_state = "Left_1"
				two
					icon_state = "Left_2"
				three
					icon_state = "Left_3"
				four
					icon_state = "Left_4"
				five
					icon_state = "Left_5"
			right
				one
					icon_state = "Right_1"
				two
					icon_state = "Right_2"
				three
					icon_state = "Right_3"
				four
					icon_state = "Right_4"
				five
					icon_state = "Right_5"
			extra
				one
					icon_state = "Extra_1"
				two
					icon_state = "Extra_2"
				three
					icon_state = "Extra_3"
				four
					icon_state = "Extra_4"
		wall
			density = 1
			icon = 'icons/map/city_tiles_wall.dmi'
			icon_state = "Middle"
			two
				icon_state = "Middle2"
				left
					icon_state = "Middle2_Left1"
					top
						icon_state = "Middle2_Left2"
				right
					icon_state = "Middle2_Right1"
					top
						icon_state = "Middle2_Right2"
			top
				icon_state = "Top_Middle"
				left
					icon_state = "Top_Left"
				right
					icon_state = "Top_Right"
			bottom
				icon_state = "Bottom_Middle"
				left
					icon_state ="Bottom_Left"
				right
					icon_state = "Bottom_Right"
			gap
				density = 0
				layer = MOB_LAYER+2
				icon_state = "Left_Gap"
				right
					icon_state ="Right_Gap"

			blue
				icon = 'icons/map/city_tiles_bluewall.dmi'
				icon_state = "Middle"
				top
					icon_state = "Top_Middle"
					left
						icon_state = "Top_Left"
					right
						icon_state = "Top_Right"
				bottom
					icon_state = "Bottom_Middle"
					left
						icon_state ="Bottom_Left"
					right
					icon_state = "Bottom_Right"

				corner
					top
						right
							icon_state = "Top_Right_Corner"
						left
							icon_state = "Top_Left_Corner"
					bottom
						right
							icon_state = "Bottom_Right_Corner"
						left
							icon_state = "Bottom_Left_Corner"