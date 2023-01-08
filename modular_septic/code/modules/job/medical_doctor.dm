/datum/job/doctor
	title = "Humorist"
	departments_list = list(
		/datum/job_department/proletariat,
	)
	department_head = list("Hippocrite")
	supervisors = "the hippocrite"

	outfit = /datum/outfit/job/doctor/zoomtech

/datum/outfit/job/doctor/zoomtech
	name = "ZoomTech Humorist"

	suit = /obj/item/clothing/suit/hooded/medical
	belt = /obj/item/modular_computer/tablet/preset/cheap
	backpack_contents = list(/obj/item/storage/belt/medical/humorist=1)

	skillchips = null
