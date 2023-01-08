/datum/job/detective
	title = "Bobby"
	departments_list = list(
		/datum/job_department/bourgeouis,
	)
	department_head = list("Constable")
	supervisors = "the Constable"

	total_positions = 2
	spawn_positions = 2

	outfit = /datum/outfit/job/detective/zoomtech

/datum/outfit/job/detective/zoomtech
	name = "Bobby"

	head = /obj/item/clothing/head/helmet/bobby
	glasses = null
	mask = null
	neck = null
	suit = /obj/item/clothing/suit/armor/vest/alt/bobby
	uniform = /obj/item/clothing/under/rank/security/bobby
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/jackboots/bobby
	belt = /obj/item/modular_computer/tablet/preset/cheap
	backpack_contents = list(/obj/item/melee/truncheon=1)

	skillchips = null
