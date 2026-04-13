mob/creature/var

	Aggro_behavior = 0		// behavior associated with acquiring a target (will only try to acquire targets if hostile)

	/* Aggro behavior 	 (bitwise enumerations) */
#define CLOSEST_TARGET 	(1 << 0) 	// will prefer closer targets
#define FURTHEST_TARGET	(1 << 1)	// will prefer further targets				 (0, 1, 2, 3 may be used in pairs)
#define WEAKEST_TARGET	(1 << 2)	// will prefer weaker targets (lower levels)
#define STRONGEST_TARGET (1 << 3)	// will prefer stronger targets
#define ALLIES			(1 << 4)	// will prefer to target things with the same faction (for healers and whatnot)
#define ENEMIES			(1 << 5)	// will prefer to target things with a faction that isn't their own
#define PROTECT_GUARD	(1 << 6)	// will target things that aggro the protected mob


	Attacked_behavior = 0	// behavior associated with being attacked (or having a guarded mob attacked)

	/* Attacked behavior (bitwise enumerations) */
#define BECOME_AGGRO	(1 << 0)	// will become aggroed if not already aggro'd
#define HIGHEST_DAM		(1 << 1)	// will switch targets to the highest attacker
#define FOCUSED			(1 << 2)	// will NEVER switch aggro target when attacked


	Chase_behavior = 0		// behavior associated with chasing or being chased

	/* Chase behavior 	 (etc)*/
#define AGGRESSIVE		(1 << 0)	// will chase targets and attack them
#define PASSIVE			(1 << 1)	// will run away from targets and try to lose them
#define FIDGETY			(1 << 2)	// will occasionally move around randomly
#define CALL_ALLY		(1 << 3)	// will make other creatures of the same faction aggro the thing its chasing
#define KITER			(1 << 4)	// will move around the target, maintaining a minimum distance

	Idle_behavior = 0		// behavior associated with having no target (a leashed guard mob doesn't count as a target)

	/* Idle behavior */
#define WANDER			(1 << 0)	// will occasionally walk around randomly
#define STAND_GROUND	(1 << 1)	// will not go away W_RANGE tiles from respawn_turf
#define IDLE_SPELL		(1 << 2)	// will cast spells with benign=1 at castrate
#define IDLE_GROUNDED	(1 << 3)	// will not move

	/* Perception (associated with aggro acquisition) */
	Perception = 0			// behavior associated with attempting to locate a target
#define SEE				(1 << 0)	// will only aggro enemies they can see
#define HEAR			(1 << 1)	// will only aggro enemies who run, dash, or cast spells/melee attacks
#define PSIONIC			(1 << 2)	// will aggro all enemies in range
#define MOVEMENT		(1 << 3)	// will only aggro enemies that have recently moved

	AI_State		= 0		// the current AI state

	/* States Possible */
#define	NONE			0			// will not process any AI
#define IDLE			1			// no target acquired, initiating Idle_behavior
#define CHASE			2			// target acquired, initiating Chase_behavior
#define FOLLOW			3			// no target acquired, following src.guard



#define MAX_AGGRO 18




	Aggro_Message			// message to display locally when aggro acquired