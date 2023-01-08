/datum/job/chief_engineer
	title = "Foreman"
	departments_list = list(
		/datum/job_department/nobility,
	)
	department_head = list("Caretakeer")
	supervisors = "the doge"

	outfit = /datum/outfit/job/ce/zoomtech

/datum/outfit/job/ce/zoomtech
	name = "ZoomTech Foreman"

	backpack = /obj/item/storage/backpack/leather
	satchel =/obj/item/storage/backpack/leather
	duffelbag = /obj/item/storage/backpack/leather
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/storage/belt/utility/full/engi = 1,
	)
	belt = /obj/item/modular_computer/tablet/preset/advanced/command/engineering
	l_pocket = null

	skillchips = null
