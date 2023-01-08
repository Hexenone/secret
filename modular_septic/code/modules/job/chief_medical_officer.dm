/datum/job/chief_medical_officer
	title = "Hippocrite"
	departments_list = list(
		/datum/job_department/nobility,
	)
	department_head = list("Mayor")
	supervisors = "the doge"

	outfit = /datum/outfit/job/cmo/zoomtech

/datum/outfit/job/cmo/zoomtech
	name = "ZoomTech Hippocrite"

	suit = /obj/item/clothing/suit/hooded/medical/cmo
	belt = /obj/item/modular_computer/tablet/preset/cheap
	backpack_contents = list(/obj/item/melee/baton/telescopic=1,
							/obj/item/storage/belt/medical/humorist=1)
	skillchips = null
