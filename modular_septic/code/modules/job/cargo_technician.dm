/datum/job/cargo_technician
	title = "Freighter"
	departments_list = list(
		/datum/job_department/proletariat,
	)
	department_head = list("Merchant")
	supervisors = "the merchant"

	outfit = /datum/outfit/job/cargo_tech/zoomtech

/datum/outfit/job/cargo_tech/zoomtech
	name = "ZoomTech Freighter"

	head = /obj/item/clothing/head/cargo
	suit = /obj/item/clothing/suit/cargo
	gloves = /obj/item/clothing/gloves/color/latex/nitrile
	uniform = /obj/item/clothing/under/rank/civilian/formal
	belt = /obj/item/modular_computer/tablet/preset/cheap
	shoes = /obj/item/clothing/shoes/laceup

	skillchips = null
