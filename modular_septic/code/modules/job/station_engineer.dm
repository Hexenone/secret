/datum/job/station_engineer
	title = "Mechanist"
	departments_list = list(
		/datum/job_department/proletariat,
	)
	department_head = list("Foreman")
	supervisors = "the foreman"

	total_positions = 0
	spawn_positions = 0

	outfit = /datum/outfit/job/engineer/zoomtech

/datum/outfit/job/engineer/zoomtech
	name = "ZoomTech Mechanist"

	backpack = /obj/item/storage/backpack/leather
	satchel =/obj/item/storage/backpack/leather
	duffelbag = /obj/item/storage/backpack/leather
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/cheap=1)

	skillchips = null
