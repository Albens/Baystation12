/obj/overmap/visitable/ship/cargo_tug
	name = "ICV Black Betty"
	desc = "Sensors detect an undamaged, depowered inner-system cargo tug. No signs of human activity."
	color = "#61462d"
	hide_from_reports = TRUE
	vessel_mass = 28000
	max_speed = 1/(4 SECONDS)
	burn_delay = 4 SECONDS
	initial_generic_waypoints = list(
		"nav_cargo_tug_1",
		"nav_cargo_tug_2",
		"nav_cargo_tug_3",
		"nav_cargo_tug_4",
	)

/datum/map_template/ruin/away_site/cargo_tug
	name = "Cargo Tug"
	id = "awaysite_cargo_tug"
	description = "different looted old freighter."
	suffixes = list("cargo_tug.dmm")
	spawn_cost = 1
	area_usage_test_exempted_root_areas = list(/area/ship/cargo_tug)
	apc_test_exempt_areas = list(
		/area/ship/cargo_tug/exterior = NO_SCRUBBER|NO_VENT
	)

/area/ship/cargo_tug
	name = "Cargo Tug Interior"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg')
	icon_state = "amaint"

/area/ship/cargo_tug/exterior
	name = "Cargo Tug Exterior"
	icon_state = "engineering_supply"
	turfs_airless = TRUE

/area/ship/cargo_tug/exterior/container
	name = "Cargo container"

/area/ship/cargo_tug/exterior/container/two
	name = "Cargo container"

/area/ship/cargo_tug/exterior/container/three
	name = "Cargo container"

/obj/item/paper/cargo_tug
	language = LANGUAGE_HUMAN_RUSSIAN
	name = "Love Letter"
	info = "Dear Karina,<BR><BR>Finally, I got an easy, legal job that actually does some good. Client says this new pattern of bot can build and maintain colonies from the ground up, and if this goes well I have myself a high paying transportation contract for the rest of my career.<br>Sounds like Epsiol-Theia needs it real bad, too, judging by the sound of things. <br>You wanted me to stop dealing with pirates, so this is me turning over a new leaf. <br><br>I miss you, and I hope you see how much I'm trying to improve. <br>I can't wait to see you again, I hope this means we can get back together.<br><br>Love,<br><br>Victor Chichmuch"

/obj/item/paper/memo/cargo_tug
	language = LANGUAGE_HUMAN_RUSSIAN
	name = "Dear Victor"
	info = "A destroyed letter you can't read much of. You can tell this was a 'Dear John' rejection letter, from someone named Karina to a Victor. It's been crumbled and has obviously been wet at some point, perhaps tears."
	icon_state = "scrap"

/obj/item/paper/memo/cargo_tug/disaster
	name = "Disaster on Epsiol"
	info = "This is a series of newspaper articles detailing a disaster on the colony on Epsiol-Theia. Half the colony was destroyed by meteor impact and humanitarian aid has struggled to find its way there due to the secluded nature of the colony. Lack of manpower and trained engineering personnel has meant that the population has been surviving on rapidly dwindling backup systems."
	icon_state = "docs_part"

/obj/item/paper/memo/cargo_tug/disaster/manifest
	name = "Cargo manifest"
	info = "This manifest is dated early 2230 detailing various cargo contained in the pods. Notably written in the margins is various complaints from the crew about rising shipping costs and worries about the ongoing conflict."

obj/item/paper/memo/cargo_tug/disaster/shipinfo
	name = "Ship details"
	info = "The ML-200 series 'in-system' Tug is a centuries old design still in use in various periphery and poorer states across human space. Featuring a semi-modular mounting rig for various cargo it is a slow, but reliable, piece of hardware."

/obj/shuttle_landmark/cargo_tug/fore
	name = "Freighter Fore Navpoint"
	landmark_tag = "nav_cargo_tug_1"

/obj/shuttle_landmark/cargo_tug/aft
	name = "Freighter Aft Navpoint"
	landmark_tag = "nav_cargo_tug_2"

/obj/shuttle_landmark/cargo_tug/port
	name = "Freighter Port Navpoint"
	landmark_tag = "nav_cargo_tug_3"

/obj/shuttle_landmark/cargo_tug/starboard
	name = "Freighter Starboard Navpoint"
	landmark_tag = "nav_cargo_tug_4"

/obj/item/reagent_containers/food/snacks/proteinbar/tcbar
	name = "Frontier Bar"
	desc = "This prepackaged preserved and dried meal-bar was produced by the Terran Commonwealth to help spearhead their early colonization drive. Expires Jan 2430."
	icon_state = "blue1"
	trash = /obj/item/trash/proteinbar/tcbar
	icon = 'maps/away/cargotug/cargo_tug.dmi'

/obj/item/trash/proteinbar/tcbar
	name = "frontier bar"
	icon_state = "blue2"
