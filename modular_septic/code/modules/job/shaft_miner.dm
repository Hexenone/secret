/datum/job/shaft_miner
	title = "Pioneer"
	departments_list = list(
		/datum/job_department/proletariat,
	)
	department_head = list("Foreman")
	supervisors = "the foreman"

	outfit = /datum/outfit/job/miner/zoomtech

/datum/outfit/job/miner/zoomtech
	name = "ZoomTech Pioneer"

	belt = /obj/item/modular_computer/tablet/preset/cheap

	skillchips = null
