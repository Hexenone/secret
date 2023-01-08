/datum/job/bartender
	title = "Innkeeper"
	departments_list = list(
		/datum/job_department/bourgeouis,
	)
	department_head = list("Mayor")
	supervisors = "your greed"

	outfit = /datum/outfit/job/bartender/zoomtech

/datum/outfit/job/bartender/zoomtech
	name = "ZoomTech Innkeeper"

	uniform = /obj/item/clothing/under/rank/civilian/formal
	belt = /obj/item/modular_computer/tablet/preset/cheap

	skillchips = null
