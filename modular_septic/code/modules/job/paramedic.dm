/datum/job/paramedic
	title = "Sanitar"
	departments_list = list(
		/datum/job_department/proletariat,
	)
	department_head = list("Hippocrite")
	supervisors = "the hippocrite"

	outfit = /datum/outfit/job/paramedic/zoomtech


/datum/outfit/job/paramedic/zoomtech
	name = "ZoomTech Paramedic"

	belt = /obj/item/storage/belt/medical/paramedic
	backpack_contents = list(
		/obj/item/roller = 1,
		/obj/item/modular_computer/tablet/preset/cheap = 1,
	)

	skillchips = null
