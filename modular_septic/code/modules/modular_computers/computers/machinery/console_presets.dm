// ===== IDENTIFICATION CONSOLE =====
/obj/machinery/modular_computer/console/preset/id

/obj/machinery/modular_computer/console/preset/id/install_programs()
	. = ..()
	var/obj/item/computer_hardware/hard_drive/hard_drive = cpu.all_components[MC_HDD
	hard_drive.store_file(new/datum/computer_file/program/taxes())
