var/global/const/access_venture = "ACCESS_VENTURE"
/datum/access/venture
	id = access_venture
	desc = "FTEV Venturian"
	region = ACCESS_REGION_NONE

/obj/item/card/id/venture
	access = list(access_venture)

/datum/job/submap/venturian
	title = "Contract Engineer"
	total_positions = 2
	outfit_type = /singleton/hierarchy/outfit/job/venturian
	is_semi_antagonist = TRUE
	supervisors = "the engineering firm you work for"
	info = "You're a Contract Engineer onboard the FTEV Venturian, \
	here on a job to find a site somewhere in the system and recover something from it. \
	Your mission comes first, but you can enlist or fight the Torch shuttles if you have to. \
	It's recommended you pick spacer for this job, your shuttle is made for them!"
	required_language = LANGUAGE_SPACER
	whitelisted_species = list(
		SPECIES_HUMAN,
		SPECIES_SPACER,
		SPECIES_GRAVWORLDER,
		SPECIES_VATGROWN,
		SPECIES_MULE
	)
	min_skill = list(
		SKILL_HAULING = SKILL_TRAINED,
		SKILL_MECH = SKILL_MAX,
		SKILL_PILOT = SKILL_TRAINED,
		SKILL_EVA = SKILL_EXPERIENCED,
		SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
		SKILL_ELECTRICAL = SKILL_TRAINED,
		SKILL_ATMOS = SKILL_TRAINED,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_ENGINES = SKILL_TRAINED,
		SKILL_COMBAT = SKILL_TRAINED,
		SKILL_WEAPONS = SKILL_TRAINED
	)

	skill_points = 15

/singleton/hierarchy/outfit/job/venturian
	l_ear = /obj/item/device/radio/headset/map_preset/venturian
	uniform = /obj/item/clothing/under/rank/ntwork/nanotrasen //looks good, not nt related.
	r_pocket = /obj/item/device/radio/map_preset/venturian
	l_pocket = null
	shoes = /obj/item/clothing/shoes/workboots
	gloves = /obj/item/clothing/gloves/thick/duty
	id_types = list(/obj/item/card/id/venture)
	pda_type = null
	flags =  OUTFIT_EXTENDED_SURVIVAL
	back = /obj/item/storage/backpack/messenger/brown