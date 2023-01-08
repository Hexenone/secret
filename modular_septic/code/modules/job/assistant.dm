/datum/job/assistant
	title = "Beggar"
	departments_list = list(
		/datum/job_department/unpeople,
	)
	department_head = list("Mayor")
	no_dresscode = TRUE
	required_languages = null

	outfit = /datum/outfit/job/assistant/zoomtech

/datum/job/assistant/after_spawn(mob/living/spawned, client/player_client)
	. = ..()
	ADD_TRAIT(spawned, TRAIT_ILLITERATE, "[type]")

/datum/outfit/job/assistant/zoomtech
	name = "ZoomTech Beggar"

	uniform = /obj/item/clothing/under/color/grey/ancient
	id = null
	belt = null

	skillchips = null
