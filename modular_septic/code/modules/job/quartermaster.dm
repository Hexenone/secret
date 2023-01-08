/datum/job/quartermaster
	title = "Merchant"
	departments_list = list(
		/datum/job_department/bourgeouis,
	)
	department_head = list("Mayor")
	supervisors = "the doge"
	mind_traits = list(TRAIT_CAPITALIST_MOOD)

	outfit = /datum/outfit/job/quartermaster/zoomtech

/datum/outfit/job/quartermaster/zoomtech
	name = "ZoomTech Merchant"

	glasses = /obj/item/clothing/glasses/sunglasses/sungrasses
	suit = /obj/item/clothing/suit/cargo/merchant
	uniform = /obj/item/clothing/under/rank/civilian/formal/grey
	belt = /obj/item/modular_computer/tablet/preset/cheap
	shoes = /obj/item/clothing/shoes/laceup

	skillchips = null
