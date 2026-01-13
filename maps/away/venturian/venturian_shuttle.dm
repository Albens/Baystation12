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