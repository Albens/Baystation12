/datum/shuttle/autodock/overmap/venturian
	name = "FTEV Venturian"
	move_time = 45
	shuttle_area = list(
		/area/venture/hab,
		/area/venture/port,
		/area/venture/starboard,
		/area/venture/engine
	)
	dock_target = "venture_dock"
	current_location = "nav_venturian_shuttle"
	landmark_transition = "nav_transit_venturian_shuttle"
	range = 1
	fuel_consumption = 3
	logging_home_tag = "nav_venturian_shuttle"
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	flags = SHUTTLE_FLAGS_PROCESS
	defer_initialisation = TRUE

/obj/overmap/visitable/ship/landable/venturian
	name = "FTEV Venturian"
	desc = "A Lynceus Orbital Shipworks Multi-Cat Model 2309, broadcasting the callsign \"FTEV Venturian\""
	shuttle = "FTEV Venturian"
	max_speed = 1/(5 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 4000
	fore_dir = NORTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

/obj/shuttle_landmark/nav_venturian_shuttle
	base_turf = /turf/space
	base_area = /area/space

/obj/shuttle_landmark/nav_venturian_shuttle/venture
	name = "Navpoint - Venturian"
	landmark_tag = "nav_venturian_shuttle"
	docking_controller = "venture_dock"

/obj/shuttle_landmark/nav_venturian_shuttle/transit
	name = "In transit"
	landmark_tag = "nav_transit_venturian_shuttle"

/obj/shuttle_landmark/nav_venturian_shuttle/torch
	name = "SEV Torch FTEV Venturian EVA Dock"
	landmark_tag = "nav_venturian_shuttle_torch_eva_dock"
	docking_controller = "eva_airlock"

/obj/machinery/computer/shuttle_control/explore/venture
	name = "Venturian control console"
	shuttle_tag = "FTEV Venturian"

/obj/machinery/computer/modular/preset/helm/spacer_all_in_one
	default_software = list(
		/datum/computer_file/program/ship/sensors/spacer,
		/datum/computer_file/program/ship/engine_control,
		/datum/computer_file/program/munitions/spacer
	)
	uncreated_component_parts = list(
		/obj/item/stock_parts/computer/ship_interface
	)
	autorun_program = /datum/computer_file/program/ship/sensors/spacer

/datum/computer_file/program/munitions/spacer
	nanomodule_path = /datum/nano_module/program/munitions/spacer
	available_on_ntnet = FALSE

/datum/nano_module/program/munitions/spacer
	access_req = null

/obj/item/stock_parts/computer/hard_drive/super/helm/spacer_all_in_one
	name = "super hard drive (sensors, engine, munitions)"
	desc = "A small hard drive with 512GQ of storage capacity for use in cluster storage solutions where capacity is more important than power efficiency. This one is pre-loaded with everything you need to fly a ship."

/obj/item/stock_parts/computer/hard_drive/super/helm/spacer_all_in_one/install_default_programs()
	..()
	create_file(new/datum/computer_file/program/ship/engine_control(src))
	create_file(new/datum/computer_file/program/ship/sensors/spacer(src))
	create_file(new/datum/computer_file/program/munitions/spacer(src))
