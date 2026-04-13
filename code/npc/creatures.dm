mob

	creature
		// Vanilla behavior presets (see AI.dm for additional flags)
		Aggro_behavior 		= CLOSEST_TARGET | STRONGEST_TARGET | ENEMIES
		Attacked_behavior 	= BECOME_AGGRO | HIGHEST_DAM
		Chase_behavior 		= AGGRESSIVE
		Idle_behavior		= WANDER | STAND_GROUND
		Perception			= SEE | HEAR

		var
			hostile=0
			docile=0
			attack_dist=1

			totalSpells=1
			dash
			dashed
			castrate=45
			castdist=10
			corpse_state = "" // if has a corpse, give it a state
			corpse_duration = 100 // corpse remains for 10 seconds by default
			instance_monster //No spawn point, won't Leash()

			creature_exp=0
			static_exp=0
			exp_all=0 // distribute exp to all attackers based on damage ratios
			respawn_time=6000
			quest_boss

			static_follow = 0 // if nonzero, when following will appear under the leashed-to mob
		crellus
			icon='icons/creatures/crellus.dmi'
			icon_state="walk"
			name="Crellus"

		stinox
			icon='icons/creatures/stinox.dmi'
			icon_state="walk"
			name="Stinnox"

		poisonstinox
			icon='icons/creatures/stinox_poison.dmi'
			icon_state="walk"
			name="Poisonous Stinnox"

		stinnox_soveriegn
			icon='icons/creatures/stinox_sovereign.dmi'
			icon_state="walk"
			name="Queen Stinnox"

		cyclops
			//icon='icons/creatures/cyclops.dmi'
			icon_state="walk"
			name="Cyclops"

		wolf
			icon='icons/creatures/Black Direwolf.dmi'
			icon_state="walk"
			name="Direwolf"



		rat
			icon='icons/creatures/Ratling.dmi'
			icon_state="walk"
			name="Rat"


		grub
			icon='icons/creatures/Grub.dmi'
			icon_state="walk"
			name="Grub"

		yokai
			icon='icons/creatures/yokai.dmi'
			icon_state="walk"
			name="Lesser Demon"

		yokaihealer
			icon='icons/creatures/yokai_healer.dmi'
			icon_state="walk"
			name="Mutant Yokai"

		yokai2
			icon='icons/creatures/yokai2.dmi'
			icon_state="walk"
			name="Mega Demon"

		fireyokai
			icon='icons/creatures/FireYokai.dmi'
			icon_state="walk"
			name="Fire Demon"

		wateryokai
			icon='icons/creatures/WaterYokai.dmi'
			icon_state="walk"
			name="Water Demon"

		redskurn
			icon='icons/creatures/RedSkurn.dmi'
			icon_state="walk"
			name="Red Skurn"

		blueskurn
			icon='icons/creatures/BlueSkurn.dmi'
			icon_state="walk"
			name="Blue Skurn"

		yokai3
			icon='icons/creatures/yokai3.dmi'
			icon_state="walk"
			name="Giga Demon"

		yokai4
			icon='icons/creatures/yokai4.dmi'
			icon_state="walk"
			name="Tera Demon"

		archdemon
			icon='icons/creatures/archdemon.dmi'
			icon_state="walk"
			name="Arch Demon"


		kaorboss
			icon='icons/creatures/archdemon.dmi'
			icon_state="walk"
			name="Kaor Demon (BOSS)"

		dragon
			icon='icons/creatures/dragon.dmi'
			icon_state="walk"
			name="Dragon"


		phoenix
			icon='icons/creatures/phoenix.dmi'
			icon_state="walk"
			name="Phoenix"

		darkphoenix
			icon='icons/creatures/darkphoenix.dmi'
			icon_state="walk"
			name="Dark Phoenix"


		rabbit
			icon='icons/creatures/rabbit.dmi'
			icon_state="walk"
			name="Rabbit"



		boar
			icon='icons/creatures/boar.dmi'
			icon_state="walk"
			name="Boar"




