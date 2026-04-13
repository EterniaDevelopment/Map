turf
	expanded_castle
		density = 1
		icon = 'icons/map/expanded_castle.dmi'
		top
			icon_state = "Top_Middle"
			left
				icon_state = "Top_Left"
				two
					icon_state = "Top_Left_2"
				corner
					icon_state = "Top_Left_Corner"
					two
						icon_state = "Top_Left_Corner_2"
			right
				icon_state= "Top_Right"
				two
					icon_state = "Top_Right_2"
				corner
					icon_state = "Top_Right_Corner"
					two
						icon_state = "Top_Right_Corner_2"

		bottom
			left
				icon_state = "Bottom_Left"
				two
					icon_state = "Bottom_Left_2"
			right
				icon_state = "Bottom_Right"
				two
					icon_state = "Bottom_Right_2"
			corner
				one
					icon_state = "Bottom_Corner_1"
				two
					icon_state = "Bottom_Corner_2"
				three
					icon_state = "Bottom_Corner_3"
				four
					icon_state = "Bottom_Corner_4"
		left
			icon_state = "Left"
		right
			icon_state = "Right"
		bars
			icon_state = "Middle_Bars"

		windows
			icon_state = "Middle_Window"
			left
				icon_state = "Left_Window"
				multiple
					icon_state = "Left_Windows"
					two
						icon_state = "Left_Windows_2"
				square
					icon_state = "Left_Square_Window"
					two
						icon_state = "Left_Square_Window_2"
			right
				icon_state = "Right_Window"
				multiple
					icon_state = "Right_Windows"
					two
						icon_state = "Right_Windows_2"
				square
					icon_state = "Right_Square_Window"
					two
						icon_state = "Right_Square_Window_2"

		wall
			icon_state = "Wall_Middle"
			left
				icon_state = "Wall_Left"
			right
				icon_state = "Wall_Right"

			bottom
				left
					icon_state = "Wall_Bottom_Left"
				right
					icon_state = "Wall_Bottom_Right"
				middle
					icon_state = "Wall_Bottom_Middle"
		top
			icon_state = "Middle_Top"
		moss
			left
				icon_state = "Moss_Left"
			right
				icon_state = "Moss_Right"
			bottom
				left
					icon_state = "Moss_Bottom_Left"
				right
					icon_state = "Moss_Bottom_Right"
			stairs
				icon_state = "Moss_Stairs"
				density = 0
		cracks
			left
				icon_state = "Cracks_Left"
			right
				icon_state = "Cracks_Right"



turf
	expanded_castle2
		density = 1
		icon = 'icons/map/expanded_castle2.dmi'
		top
			middle
				icon_state = "Top_Middle"
				left
					icon_state = "Top_Left_Corner_2"
				right
					icon_state = "Top_Right_Corner_2"
			left
				icon_state = "Left"
				one
					icon_state = "Left_Bottom_1"
				two
					icon_state = "Left_Bottom_2"
				three
					icon_state = "Left_Bottom_3"
				corner
					icon_state = "Top_Left"
					top
						icon_state = "Top_Left_Corner"
					bottom
						icon_state = "Top_Left_2"
			right
				icon_state = "Right"
				one
					icon_state = "Right_Bottom_1"
				two
					icon_state = "Right_Bottom_2"
				three
					icon_state = "Right_Bottom_3"
				corner
					icon_state = "Top_Right"
					top
						icon_state = "Top_Right_Corner"
					bottom
						icon_state = "Top_Right_2"
		bottom
			left
				icon_state = "Bottom_Left_2"
				corner
					icon_state = "Bottom_Corner_2"
			right
				icon_state = "Bottom_Right_2"
				corner
					icon_state = "Bottom_Corner_3"
		wall
			bottom
				icon_state = "Wall_Bottom_Middle"
				moss
					icon_state = "Moss_Bottom_Middle"
				left
					icon_state ="Wall_Bottom_Left"
					moss
						icon_state = "Moss_Bottom_Left"
				right
					icon_state = "Wall_Bottom_Right"
					moss
						icon_state = "Moss_Bottom_Right"
			middle
				icon_state = "Wall_Middle"
				window
					icon_state = "Middle_Window"
				left
					icon_state = "Wall_Left"
					moss
						icon_state = "Moss_Left"
					cracks
						icon_state = "Cracks_Left"
					window
						icon_state = "Left_Window"
					windows
						icon_state = "Left_Windows"
						bottom
							icon_state ="Left_Windows_2"
					square
						icon_state = "Left_Square_Window"
						bottom
							icon_state = "Left_Square_Window_2"
				right
					icon_state = "Wall_Right"
					moss
						icon_state = "Moss_Right"
					cracks
						icon_state = "Cracks_Right"
					window
						icon_state = "Right_Window"
					windows
						icon_state = "Right_Windows"
						bottom
							icon_state ="Right_Windows_2"
					square
						icon_state = "Right_Square_Window"
						bottom
							icon_state = "Right_Square_Window_2"

turf
	expanded_castle2_dark
		ignore = 1
		floor/icon='icons/map/turf/castle_dark/floor.dmi'
		density = 1
		icon = 'icons/map/turf/castle_dark/expanded_castle_dark.dmi'
		top
			middle
				icon_state = "Top_Middle"
				left
					icon_state = "Top_Left_Corner_2"
				right
					icon_state = "Top_Right_Corner_2"
			left
				icon_state = "Left"
				one
					icon_state = "Left_Bottom_1"
				two
					icon_state = "Left_Bottom_2"
				three
					icon_state = "Left_Bottom_3"
				corner
					icon_state = "Top_Left"
					top
						icon_state = "Top_Left_Corner"
					bottom
						icon_state = "Top_Left_2"
			right
				icon_state = "Right"
				one
					icon_state = "Right_Bottom_1"
				two
					icon_state = "Right_Bottom_2"
				three
					icon_state = "Right_Bottom_3"
				corner
					icon_state = "Top_Right"
					top
						icon_state = "Top_Right_Corner"
					bottom
						icon_state = "Top_Right_2"
		bottom
			left
				icon_state = "Bottom_Left_2"
				corner
					icon_state = "Bottom_Corner_2"
			right
				icon_state = "Bottom_Right_2"
				corner
					icon_state = "Bottom_Corner_3"
		wall
			base
				icon_state = "Base_Middle"
				left_bottom
					icon_state = "Base_Left_1"
					left_top
						icon_state = "Base_Left_2"
				right_bottom
					icon_state = "Base_Right_1"
					right_top
						icon_state = "Base_Right_2"
			bottom
				icon_state = "Wall_Bottom_Middle"
				moss
					icon_state = "Moss_Bottom_Middle"
				left
					icon_state ="Wall_Bottom_Left"
					moss
						icon_state = "Moss_Bottom_Left"
				right
					icon_state = "Wall_Bottom_Right"
					moss
						icon_state = "Moss_Bottom_Right"
			middle
				icon_state = "Wall_Middle"
				window
					icon_state = "Middle_Window"
				left
					icon_state = "Wall_Left"
					moss
						icon_state = "Moss_Left"
					cracks
						icon_state = "Cracks_Left"
					window
						icon_state = "Left_Window"
					windows
						icon_state = "Left_Windows"
						bottom
							icon_state ="Left_Windows_2"
					square
						icon_state = "Left_Square_Window"
						bottom
							icon_state = "Left_Square_Window_2"
				right
					icon_state = "Wall_Right"
					moss
						icon_state = "Moss_Right"
					cracks
						icon_state = "Cracks_Right"
					window
						icon_state = "Right_Window"
					windows
						icon_state = "Right_Windows"
						bottom
							icon_state ="Right_Windows_2"
					square
						icon_state = "Right_Square_Window"
						bottom
							icon_state = "Right_Square_Window_2"