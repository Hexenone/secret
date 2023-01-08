/datum/job/botanist
	title = "Seeder"
	departments_list = list(
		/datum/job_department/bourgeouis,
	)
	department_head = list("Mayor", "Gatekeeper")
	supervisors = "the innkeeper"

	outfit = /datum/outfit/job/botanist/zoomtech

/datum/outfit/job/botanist/zoomtech
	name = "ZoomTech Seeder"

	belt = /obj/item/modular_computer/tablet/preset/cheap

	skillchips = null
