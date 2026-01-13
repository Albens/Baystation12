//Exosuit
/mob/living/exosuit/premade/venture
	name = "\improper Venture Star"
	desc = "A lightweight utility Mech for a contracted Engineering firm. It's tagged 'FTEV Venturian'."

/mob/living/exosuit/premade/venture/Initialize()
	if(!body)
		body = new /obj/item/mech_component/chassis/light(src)
		body.color = COLOR_BRONZE
	if(!legs)
		legs = new /obj/item/mech_component/propulsion/light(src)
		legs.color = COLOR_BRONZE
	if(!arms)
		arms = new /obj/item/mech_component/manipulators/light(src)
		arms.color = COLOR_BRONZE
	if(!head)
		head = new /obj/item/mech_component/sensors/light(src)
		head.color = COLOR_BRONZE

	. = ..()

/mob/living/exosuit/premade/venture/spawn_mech_equipment()
	install_system(new /obj/item/mech_equipment/light(src), HARDPOINT_HEAD)
	install_system(new /obj/item/mech_equipment/clamp(src), HARDPOINT_RIGHT_HAND)
	install_system(new /obj/item/mech_equipment/mounted_system/melee/mechete(src), HARDPOINT_LEFT_HAND)
	install_system(new /obj/item/mech_equipment/ionjets(src), HARDPOINT_BACK)
	install_system(new /obj/item/mech_equipment/mounted_system/taser/plasma(src), HARDPOINT_LEFT_SHOULDER)



//Custom Air Alarm set to 22kpa nitrogen and 1kpa oxygen
/obj/machinery/alarm/lownitrogen/
	req_access = list()
	breach_pressure = 18
	report_danger_level = 0

/obj/machinery/alarm/lownitrogen/Initialize()
	. = ..()
	TLV["pressure"] = list(HAZARD_LOW_PRESSURE*0.80,22,WARNING_HIGH_PRESSURE*0.80,HAZARD_HIGH_PRESSURE*0.80)
	TLV[GAS_OXYGEN] =    list(-1, -1, 1, 1.5)
	TLV[GAS_NITROGEN] = list(16, 22, 135, 140)


//lore, money, safe, etc.

/obj/machinery/suit_storage_unit/engineering/venturian
	name = "Venturian Engineering Voidsuit Storage Unit"
	req_access = list(access_venture)
	mask = /obj/item/clothing/mask/breath/scba

/obj/item/spacecash/bundle/c30k
	name = "30000 Thaler"
	icon_state = "spacecash1000"
	desc = "It's worth 30,000 Thalers."
	worth = 30000

/obj/item/paper/memo/venture
	name = "pickup timeline"
	info = {"A stack of travel, booking, and passage papers regarding transport of the vessel 'FETV Venturian' from a long-haul Alden-Saraspova drive equipped mothership 'FTU Cesar Ritz'. Dropoff date was a few weeks ago, with pickup in 4 months time."}

/obj/item/paper/memo/venture/ipcmag
	name = "scandalous magazine"
	info = {"An issue of the 'Piston', showcasing only the hottest new collections of Integrated Frames, why a machine would need so many counterweights is a mystery every reader must solve for themselves."}
	icon_state = "pamphlet"
	item_state = "pamphlet"
	//joke item

/obj/item/storage/secure/safe/venture
	l_code = "90210"
	l_set = 1
	startswith = list(
		/obj/item/spacecash/bundle/c30k = 1,
		/obj/item/disk/astrodata = 1,
		/obj/item/card/id/venture = 2,
		/obj/item/boombox = 1,
		/obj/item/paper/memo/venture = 1
	)

/obj/item/storage/box/large/mealfortwo
	name = "workcrew meal for two"
	desc = "Working lunch for two crew! Coffee cups and serving bowls not included."
	startswith = list(
		/obj/item/reagent_containers/food/condiment/capsaicin,
		/obj/item/material/utensil/chopsticks/titanium = 2,
		/obj/random/mre/main = 2,
		/obj/item/storage/mrebag/menu9 = 2,
		/obj/item/reagent_containers/food/condiment/small/packet/coffee = 2,
		/obj/item/reagent_containers/pill/pod/cream_soy = 2,
		/obj/item/reagent_containers/food/condiment/small/packet/sugar = 1,
		/obj/item/reagent_containers/food/drinks/cans/waterbottle = 2
	)


//Custom floor tiles because these cannot be edited in map and still work
/turf/simulated/floor/tiled/techmaint/lownitrogen
	initial_gas = list("nitrogen" = 25)

/turf/simulated/floor/tiled/techfloor/lownitrogen
	initial_gas = list("nitrogen" = 25)

/turf/simulated/floor/tiled/techfloor/grid/lownitrogen
	initial_gas = list("nitrogen" = 25)

/turf/simulated/floor/reinforced/lownitrogen
	initial_gas = list("nitrogen" = 25)


//These should be defined in torch files for use elsewhere. What file do they belong in?
/turf/simulated/floor/reinforced/airless
	initial_gas = newlist()
	map_airless = 1

/obj/machinery/atmospherics/binary/passive_gate/on/fuelautovent
	name = "fuel overpressure vent pressure regulator"
	regulate_mode = 1
	target_pressure = 34000
	use_power = 1
	//Fuel pipes burst at ~35,500kpa.

/obj/machinery/atmospherics/unary/outlet_injector/fuelautovent
	injecting = 1
	use_power = 1
	volume_rate = 700

/obj/item/reagent_containers/hypospray/autoinjector/peridaxon
	name = "autoinjector (lung-fix)"
	starts_with = list(/datum/reagent/peridaxon = 5)

/obj/machinery/power/smes/buildable/preset/midrange
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil = 3)
	_fully_charged = TRUE
	_input_maxed = TRUE
	_input_on = TRUE
	_output_maxed = TRUE
	_output_on = TRUE


/obj/machinery/portable_atmospherics/powered/pump/venturian
	start_pressure = 90 * ONE_ATMOSPHERE

/obj/machinery/portable_atmospherics/powered/pump/venturian/New()
	..()

	src.air_contents.adjust_multi(GAS_OXYGEN, 0.27 * MolesForPressure(), GAS_NITROGEN, 0.73 * MolesForPressure())
