turf
	structure
		bridge
			vertical
				icon='icons/map/turf/structure/bridge_v.dmi'
				top_left
					icon_state="top_left"
					Enter(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=EAST)return Check_Dense(a)
								else return 0
						return Check_Dense(a)
					Exit(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=WEST)return 1
								else return 0
						return 1
					New()
						..()
						var/image/I=image(icon,src,"top_left_o",OVER_LAYER)
						overlays+=I
				top/icon_state="top"
				top_right
					icon_state="top_right"
					Enter(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=WEST)return Check_Dense(a)
								else return 0
						return Check_Dense(a)
					Exit(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=EAST)return 1
								else return 0
						return 1
					New()
						..()
						var/image/I=image(icon,src,"top_right_o",OVER_LAYER)
						overlays+=I
				left
					icon_state="left"
					Enter(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=EAST)return Check_Dense(a)
								else return 0
						return Check_Dense(a)
					Exit(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=WEST)return 1
								else return 0
						return 1

					New()
						..()
						var/image/I=image(icon,src,"left_o",OVER_LAYER)
						overlays+=I
				middle/icon_state="middle"
				right
					icon_state="right"
					Enter(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=WEST)return Check_Dense(a)
								else return 0
						return Check_Dense(a)
					Exit(atom/a)
						if(a.density)
							if(istype(a,/mob))
								if(a.dir!=EAST)return 1
								else return 0
						return 1
					New()
						..()
						var/image/I=image(icon,src,"right_o",OVER_LAYER)
						overlays+=I
				bottom_left/icon_state="bottom_left"
				bottom/icon_state="bottom"
				bottom_right/icon_state="bottom_right"

			horizontal
				icon='icons/map/turf/structure/bridge_h.dmi'
				top_left
					icon_state="bridge_top_left"
					New()
						..()
						var/image/I=image(icon,src,"post_top_left")
						I.pixel_y=32
						overlays+=I
				top
					icon_state="bridge_top"
					var/olay = 1
					var/left = 0
					var/right = 0
					New()
						..()
						if(olay)
							var/image/I
							if(left) I=image(icon,src,"post_top",,EAST)
							else if(right) I=image(icon,src,"post_top",,NORTH)
							else I=image(icon,src,"post_top")
							I.pixel_y=32
							overlays+=I
						else
							dir = NORTH
				top_right
					icon_state="bridge_top_right"
					New()
						..()
						var/image/I=image(icon,src,"post_top_right")
						I.pixel_y=32
						overlays+=I
				middle/icon_state="bridge_middle"
				bottom_left
					icon_state="bridge_bottom_left"
					New()
						..()
						var/image/I=image(icon,src,"post_bottom_left",OVER_LAYER)
						var/image/I2=image(icon,src,"post",TURF_LAYER+0.01)
						I2.pixel_y=-32
						overlays+=I
						overlays+=I2
				bottom
					icon_state="bridge_bottom"
					var/olay = 1
					var/left = 0
					var/right = 0
					New()
						..()
						if(olay)
							var/image/I
							var/image/I2=image(icon,src,"post",TURF_LAYER+0.01)
							if(left)
								I=image(icon,src,"post_bottom",OVER_LAYER,EAST)
							else if(right)
								I=image(icon,src,"post_bottom",OVER_LAYER,NORTH)
							else
								I=image(icon,src,"post_bottom",OVER_LAYER)
							I2.pixel_y=-32
							overlays+=I
							overlays+=I2
				bottom_right
					icon_state="bridge_bottom_right"
					New()
						..()
						var/image/I=image(icon,src,"post_bottom_right",OVER_LAYER)
						var/image/I2=image(icon,src,"post",TURF_LAYER+0.01)
						I2.pixel_y=-32
						overlays+=I
						overlays+=I2
				left/icon_state="left"
				right/icon_state="right"