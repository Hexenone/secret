// Circuit boards, spare parts, etc.

/datum/export/solar/assembly
	cost = CARGO_CRATE_VALUE * 0.25
	unit_name = "solar panel assembly"
	export_types = list(/obj/item/solar_assembly)

/datum/export/solar/tracker_board
	cost = CARGO_CRATE_VALUE * 0.5
	unit_name = "solar tracker board"
	export_types = list(/obj/item/electronics/tracker)

/datum/export/solar/control_board
	cost = CARGO_CRATE_VALUE * 0.75
	unit_name = "solar panel control board"
	export_types = list(/obj/item/circuitboard/computer/solar_control)

//Computer Tablets and Parts
/datum/export/modular_part
	cost = 1 DOLLARS
	unit_name = "miscellaneous computer part"
	export_types = list(/obj/item/computer_hardware)
	include_subtypes = TRUE

//Processors.

/datum/export/modular_part/processor
	cost = 5 DOLLARS
	unit_name = "computer processor"
	export_types = list(/obj/item/computer_hardware/processor_unit)
	include_subtypes = FALSE

/datum/export/modular_part/processor/photoic
	cost = 0
	unit_name = "advanced computer processor"
	export_types = list(/obj/item/computer_hardware/processor_unit)
	include_subtypes = FALSE

//Batteries.

/datum/export/modular_part/battery
	cost = 2.5 DOLLARS
	unit_name = "computer power cell"
	export_types = list(/obj/item/stock_parts/cell/computer/nano)
	include_subtypes = FALSE


/datum/export/modular_part/battery/upgraded
	cost = 3.5 DOLLARS
	unit_name = "upgraded computer power cell"
	export_types = list(/obj/item/stock_parts/cell/computer/micro)
	include_subtypes = FALSE


/datum/export/modular_part/battery/advanced
	cost = 4 DOLLARS
	unit_name = "advanced computer power cell"
	export_types = list(/obj/item/stock_parts/cell/computer)
	include_subtypes = FALSE

//Hard Drives.

/datum/export/modular_part/harddrive
	cost = 90 CENTS
	unit_name = "tiny computer harddrive"
	export_types = list(/obj/item/computer_hardware/hard_drive/micro)
	include_subtypes = TRUE

/datum/export/modular_part/harddrive/small
	cost = 1.5 DOLLARS
	unit_name = "small computer harddrive"
	export_types = list(/obj/item/computer_hardware/hard_drive/small)
	include_subtypes = FALSE

/datum/export/modular_part/harddrive/normal
	cost = 2.8 DOLLARS
	unit_name = "computer harddrive"
	export_types = list(/obj/item/computer_hardware/hard_drive)
	include_subtypes = FALSE

//Networking/Card Parts
/datum/export/modular_part/networkcard
	cost = 2 DOLLARS
	unit_name = "computer network card"
	export_types = list(/obj/item/computer_hardware/network_card)
	include_subtypes = TRUE

/datum/export/modular_part/idcard
	cost = 2 DOLLARS
	unit_name = "computer ID card slot"
	export_types = list(/obj/item/computer_hardware/card_slot)
	include_subtypes = TRUE

/datum/export/modular_part/intellicard
	cost = 3 DOLLARS
	unit_name = "computer intellicard slot"
	export_types = list(/obj/item/computer_hardware/ai_slot)
	include_subtypes = TRUE