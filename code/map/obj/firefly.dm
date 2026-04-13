obj/map/firefly
	icon = 'icons/creatures/firefly.dmi'

obj/map/firefly_evil
	icon = 'icons/creatures/firefly.dmi'


/obj/map/critter/butterfly
	name = "butterfly"
	//icon = 'icons/creatures/butterfly.dmi'

/obj/map/critter/butterfly/New()
	icon_state = pick("blue","red","yellow","purple","white","orange")
	..()

/obj/map/critter/beetle
	name = "beetle"
	icon_state = "beetle"

/obj/map/critter/dragonfly
	name = "dragonfly"
	icon_state = "dragonfly"

/obj/map/critter/bee
	name = "bee"
	icon_state = "bee"

/obj/map/critter/firefly
	name = "firefly"
	icon_state = "firefly"

/obj/map/critter/bird
	name = "white bird"
	icon = 'icons/creatures/small_bird.dmi'
	icon_state = "idle"

/obj/effect/critter_shadow
	icon = 'icons/creatures/small_bird.dmi'
	icon_state = "shadow"
	layer = SHADOW_LAYER

/obj/map/critter/bird/red
	name = "red bird"
	icon = 'icons/creatures/red_bird.dmi'

/obj/map/critter/bird/blue
	name = "blue bird"
	icon = 'icons/creatures/blue_bird.dmi'

/obj/map/critter/bird/yellow
	name = "yellow bird"
	icon = 'icons/creatures/small_bird.dmi'

/obj/map/critter/bird/purple
	name = "purple bird"
	icon = 'icons/creatures/black_bird.dmi'

/obj/map/critter/bird/orange
	name = "orange bird"
	icon = 'icons/creatures/small_bird.dmi'