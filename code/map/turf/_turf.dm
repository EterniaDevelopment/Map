turf
	var/moves = NORTH | SOUTH | EAST | WEST

	var/enter_block_move //these are used to block one specific move above all else, even if moves bit would allow it
	var/exit_block_move

	layer = 1
	density = 0

	Enter(atom/movable/a)
		if(!a.loc || !a.density) return ..()
		var/move = get_dir(src, a)
		if((src.moves & move) != move || (get_dir(a, src) == enter_block_move))
			return 0
		return ..()

	Exit(atom/movable/a)
		if(!a.density) return ..()
		if((src.moves & a.dir) != a.dir || a.dir == exit_block_move)
			return 0
		return ..()

	proc/get_density()
		if(density) return 1
		for(var/atom/a in src)
			if(a.density)
				return 1
		return 0

	proc/check_enter_move(atom/movable/a)
		var/move = get_dir(src, a)
		if((src.moves & move) != move)
			return 0
		return 1

	proc/check_exit_move(atom/movable/a)
		if((src.moves & a.dir) != a.dir)
			return 0
		return 1

turf
	void

	var
		projectile_wall=0
		shadow_type=0
	proc
		Check_Dense(var/atom/a)
			for(var/atom/A in src)
				if(A.density && a.density) return 0
			return 1
		/*Build_Shadow()
			switch(shadow_type)
				if(1)
					var/image
						A=image('icons/map/turf/shadow/cliff.dmi',src,"09",SHADOW_LAYER)
						B=image('icons/map/turf/shadow/cliff.dmi',src,"08",SHADOW_LAYER)
						C=image('icons/map/turf/shadow/cliff.dmi',src,"07",SHADOW_LAYER)
					B.pixel_x=32
					C.pixel_x=64
					overlays+=A
					overlays+=B
					overlays+=C
				if(2)
					var/image
						A=image('icons/map/turf/shadow/cliff.dmi',src,"12",SHADOW_LAYER)
						B=image('icons/map/turf/shadow/cliff.dmi',src,"05",SHADOW_LAYER)
					A.pixel_x=32
					B.pixel_x=64
					overlays+=A
					overlays+=B
				if(3)
					var/image
						A=image('icons/map/turf/shadow/cliff.dmi',src,"12",SHADOW_LAYER)
						B=image('icons/map/turf/shadow/cliff.dmi',src,"06",SHADOW_LAYER)
					A.pixel_x=32
					B.pixel_x=64
					overlays+=A
					overlays+=B
				if(4)
					var/image
						A=image('icons/map/turf/shadow/cliff.dmi',src,"12",SHADOW_LAYER)
						B=image('icons/map/turf/shadow/cliff.dmi',src,"04",SHADOW_LAYER)
						C=image('icons/map/turf/shadow/cliff.dmi',src,"01",SHADOW_LAYER)
						D=image('icons/map/turf/shadow/cliff.dmi',src,"02",SHADOW_LAYER)
						E=image('icons/map/turf/shadow/cliff.dmi',src,"03",SHADOW_LAYER)
					A.pixel_x=32
					B.pixel_x=64
					C.pixel_y=32
					D.pixel_x=32
					D.pixel_y=32
					E.pixel_x=64
					E.pixel_y=32
					overlays+=A
					overlays+=B
					overlays+=C
					overlays+=D
					overlays+=E
				if(5)
					var/image
						A=image('icons/map/turf/shadow/cliff.dmi',src,"01",SHADOW_LAYER)
					A.pixel_y=32
					overlays+=A
				if(6)
					var/image
						A=image('icons/map/turf/shadow/cliff.dmi',src,"00",SHADOW_LAYER)
					A.pixel_y=32
					overlays+=A*/
	desert
		cliff
			Align(list/images_to_underlay = null)
				if(images_to_underlay)
					underlayed = images_to_underlay

				for(var/image/I in underlayed)
					I.loc = src
					underlays.Add(I)
				for(var/N in underlayed)
					if(!(N in underlays))
						underlays.Add(N)

			top
				left
					top
						shadow_type = 6
						moves = EAST | SOUTH
					middle
						moves = EAST | NORTH | SOUTH
					bottom
						moves = EAST | NORTH
				middle
					top
						shadow_type = 5
						moves = SOUTH | EAST | WEST
					bottom
						moves = NORTH | EAST | WEST
				right
					top
						shadow_type = 4
						moves = WEST | SOUTH
					middle
						shadow_type = 3
						moves = WEST | NORTH | SOUTH
					bottom
						shadow_type = 3
						moves = WEST | NORTH
			side //side is density = 1, no need for moves
				bottom
					left
					middle
					right
						shadow_type=1
				middle
					left
					middle
					right
						shadow_type=2
				edge
					left
					middle
					right
						shadow_type=2
	prairie
		cliff
			Align(list/images_to_underlay = null)
				if(images_to_underlay)
					underlayed = images_to_underlay

				for(var/image/I in underlayed)
					I.loc = src
					underlays.Add(I)
				for(var/N in underlayed)
					if(!(N in underlays))
						underlays.Add(N)

			top
				left
					top
						shadow_type = 6
						moves = EAST | SOUTH
					middle
						moves = EAST | NORTH | SOUTH
					bottom
						moves = EAST | NORTH
				middle
					top
						shadow_type = 5
						moves = SOUTH | EAST | WEST
					bottom
						moves = NORTH | EAST | WEST
				right
					top
						shadow_type=4
						moves = WEST | SOUTH
					middle
						shadow_type=3
						moves = WEST | NORTH | SOUTH
					bottom
						shadow_type=3
						moves = WEST | NORTH
			side
				bottom
					left
					middle
					right
						shadow_type=1
				middle
					left
					middle
					right
						shadow_type=2
				edge
					left
					middle
					right
						shadow_type=2
	winter
		cliff
			Align(list/images_to_underlay = null)
				if(images_to_underlay)
					underlayed = images_to_underlay

				for(var/image/I in underlayed)
					I.loc = src
					underlays.Add(I)
				for(var/N in underlayed)
					if(!(N in underlays))
						underlays.Add(N)

			top
				left
					top
						shadow_type = 6
						moves = EAST | SOUTH
					middle
						moves = EAST | NORTH | SOUTH
					bottom
						moves = EAST | NORTH
				middle
					top
						shadow_type = 5
						moves = SOUTH | EAST | WEST
					bottom
						moves = NORTH | EAST | WEST
				right
					top
						shadow_type=4
						moves = WEST | SOUTH
					middle
						shadow_type=3
						moves = WEST | NORTH | SOUTH
					bottom
						shadow_type=3
						moves = WEST | NORTH
			side
				bottom
					left
					middle
					right/shadow_type=1
				middle
					left
					middle
					right/shadow_type=2
				edge
					left
					middle
					right/shadow_type=2
	cave
		Align(list/images_to_underlay = null)
			if(images_to_underlay)
				underlayed = images_to_underlay

			for(var/image/I in underlayed)
				I.loc = src
				underlays.Add(I)
			for(var/N in underlayed)
				if(!(N in underlays))
					underlays.Add(N)

		ledge
			top
				moves = SOUTH | EAST | WEST
			top_left
				moves = SOUTH | EAST
			top_right
				moves = SOUTH | WEST
			left
				moves = NORTH | SOUTH | EAST
			right
				moves = NORTH | SOUTH | WEST
			bottom
				moves = NORTH | EAST | WEST
			bottom_left
				moves = NORTH | EAST
			bottom_right
				moves = NORTH | WEST

	cave/roof
		projectile_wall=1
		top
			projectile_wall=0
		top_left
			projectile_wall=0
		top_right
			projectile_wall=0

	dungeon/roof
		projectile_wall=1
		top
			projectile_wall=0
		top_left
			projectile_wall=0
		top_right
			projectile_wall=0

	house/roof
		projectile_wall=1
		door
			projectile_wall=0
		top
			projectile_wall=0
		top_left
			projectile_wall=0
		top_right
			projectile_wall=0

	castle
		roof
			top_left
				moves = EAST | SOUTH
			top_right
				moves = WEST | SOUTH
			top
				moves = SOUTH | EAST | WEST
			left
				moves = EAST | NORTH | SOUTH
			right
				moves = WEST | NORTH | SOUTH
			corner
				tl
					exit_block_move = NORTHWEST
					enter_block_move = SOUTHEAST
				tr
					exit_block_move = NORTHEAST
					enter_block_move = SOUTHWEST
	village
		fence
			left
				moves = EAST | NORTH | SOUTH
			right
				moves = WEST | NORTH | SOUTH
	boat
		floor
			steps
				moves = NORTH | SOUTH
	boat_int
		stairs
			moves = NORTH | SOUTH

	castle_int
		stairs
			top_left
				moves = NORTH | SOUTH | EAST
			top_right
				moves = NORTH | SOUTH | WEST
			left
				moves = NORTH | SOUTH | EAST
			right
				moves = NORTH | SOUTH | WEST
			bottom_left
				moves = NORTH | SOUTH | EAST
			bottom_right
				moves = NORTH | SOUTH | WEST
	shop_int
		stairs
			top_left
				moves = NORTH | SOUTH | EAST
			top_right
				moves = NORTH | SOUTH | WEST
			left
				moves = NORTH | SOUTH | EAST
			right
				moves = NORTH | SOUTH | WEST
			bottom_left
				moves = NORTH | SOUTH | EAST
			bottom_right
				moves = NORTH | SOUTH | WEST
	inn
		roof
			top_left
				moves = EAST | SOUTH
			top_right
				moves = WEST | SOUTH
			top
				moves = SOUTH | EAST | WEST
			left
				moves = EAST | NORTH | SOUTH
			right
				moves = WEST | NORTH | SOUTH
			corner
				tl
					exit_block_move = NORTHWEST
					enter_block_move = SOUTHEAST
				tr
					exit_block_move = NORTHEAST
					enter_block_move = SOUTHWEST
		rail
			left
				moves = NORTH | SOUTH | EAST
			right
				moves = NORTH | SOUTH | WEST
	academy
		rail
			left
				moves = NORTH | SOUTH | EAST
			right
				moves = NORTH | SOUTH | WEST
turf
	village
		stairs
			top_left
				moves = NORTH | SOUTH | EAST
			top_right
				moves = NORTH | SOUTH | WEST
			left
				moves = NORTH | SOUTH | EAST
			right
				moves = NORTH | SOUTH | WEST
			bottom_left
				moves = NORTH | SOUTH | EAST
			bottom_right
				moves = NORTH | SOUTH | WEST