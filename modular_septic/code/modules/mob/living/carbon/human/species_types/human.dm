/datum/species/human
	mutant_bodyparts = list()
	default_mutant_bodyparts = list(
		"ears" = "None",
		"tail" = "None",
		"dick" = "Dick",
		"tits" = "Tits",
	)
	inherent_traits = list(
		TRAIT_EASYDISMEMBER,
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_CAN_STRIP,
		TRAIT_CAN_USE_FLIGHT_POTION,
	)
	liked_food = JUNKFOOD | FRIED
	disliked_food = GROSS | RAW | CLOTH | SEWAGE
	limbs_id = "human"
	limbs_icon = DEFAULT_BODYPART_ICON_ORGANIC

/datum/species/human/get_scream_sound(mob/living/carbon/human/human)
	if(human.gender != FEMALE)
		return "modular_septic/sound/emotes/terror_scream_male[rand(1,6)].ogg"
	return "modular_septic/sound/emotes/terror_scream_female[rand(1,7)].ogg"
