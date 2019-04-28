/obj/item/clothing/mask/gas
	name = "gas mask"
	desc = "A face-covering mask that can be connected to an air supply. Filters harmful gases from the air."
<<<<<<< HEAD
	//icon = 'icons/obj/clothing/masks_vr.dmi' // Vorestation Edit?
	icon_state = "gas_alt"
	item_flags = BLOCK_GAS_SMOKE_EFFECT | AIRTIGHT
=======
	icon_state = "gas_alt"
	item_flags = BLOCK_GAS_SMOKE_EFFECT | AIRTIGHT | ALLOW_SURVIVALFOOD
>>>>>>> 76bf550... Merge pull request #5146 from VOREStation/upstream-merge-6129
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE
	body_parts_covered = FACE|EYES
	w_class = ITEMSIZE_NORMAL
	item_state_slots = list(slot_r_hand_str = "gas_alt", slot_l_hand_str = "gas_alt")
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	siemens_coefficient = 0.9
	var/gas_filter_strength = 1			//For gas mask filters
	var/list/filtered_gases = list("phoron", "sleeping_agent")
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 75, rad = 0)

/obj/item/clothing/mask/gas/filter_air(datum/gas_mixture/air)
	var/datum/gas_mixture/gas_filtered = new

	for(var/g in filtered_gases)
		if(air.gas[g])
			gas_filtered.gas[g] = air.gas[g] * gas_filter_strength
			air.gas[g] -= gas_filtered.gas[g]

	air.update_values()
	gas_filtered.update_values()

	return gas_filtered

/obj/item/clothing/mask/gas/clear
	name = "gas mask"
	desc = "A face-covering mask with a transparent faceplate that can be connected to an air supply."
	icon_state = "gas_clear"
	flags_inv = null

/obj/item/clothing/mask/gas/half
	name = "face mask"
	desc = "A compact, durable gas mask that can be connected to an air supply."
	icon_state = "halfgas"
	siemens_coefficient = 0.7
	body_parts_covered = FACE
	w_class = ITEMSIZE_SMALL
	armor = list(melee = 10, bullet = 10, laser = 10, energy = 0, bomb = 0, bio = 55, rad = 0)

//Plague Dr suit can be found in clothing/suits/bio.dm
/obj/item/clothing/mask/gas/plaguedoctor
	name = "plague doctor mask"
	desc = "A modernised version of the classic design, this mask will not only filter out phoron but it can also be connected to an air supply."
	icon_state = "plaguedoctor"
	item_state_slots = list(slot_r_hand_str = "gas", slot_l_hand_str = "gas")
	armor = list(melee = 0, bullet = 0, laser = 2,energy = 2, bomb = 0, bio = 90, rad = 0)
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/mask/gas/swat
	name = "\improper SWAT mask"
	desc = "A close-fitting tactical mask that can be connected to an air supply."
	icon_state = "swat"
	siemens_coefficient = 0.7
	body_parts_covered = FACE|EYES

// Vox mask, has special code for eating
/obj/item/clothing/mask/gas/swat/vox
	name = "\improper alien mask"
	desc = "Clearly not designed for a human face."
	flags = PHORONGUARD
	item_flags = BLOCK_GAS_SMOKE_EFFECT | AIRTIGHT
	species_restricted = list(SPECIES_VOX)
	filtered_gases = list("oxygen", "sleeping_agent")
	var/mask_open = FALSE	// Controls if the Vox can eat through this mask
	action_button_name = "Toggle Feeding Port"

/obj/item/clothing/mask/gas/swat/vox/proc/feeding_port(mob/user)
	if(user.canmove && !user.stat)
		mask_open = !mask_open
		if(mask_open)
			body_parts_covered = EYES
			to_chat(user, "Your mask moves to allow you to eat.")
		else
			body_parts_covered = FACE|EYES
			to_chat(user, "Your mask moves to cover your mouth.")
	return

/obj/item/clothing/mask/gas/swat/vox/attack_self(mob/user)
	feeding_port(user)
	..()

<<<<<<< HEAD
=======
/obj/item/clothing/mask/gas/zaddat
	name = "Zaddat Veil"
	desc = "A clear survival mask used by the Zaddat to filter out harmful nitrogen. Can be connected to an air supply and reconfigured to allow for safe eating."
	icon_state = "zaddat_mask"
	item_state = "vax_mask"
	//body_parts_covered = 0
	species_restricted = list(SPECIES_ZADDAT)
	flags_inv = HIDEEARS //semi-transparent
	filtered_gases = list("phoron", "nitrogen", "sleeping_agent")

>>>>>>> 76bf550... Merge pull request #5146 from VOREStation/upstream-merge-6129
/obj/item/clothing/mask/gas/syndicate
	name = "tactical mask"
	desc = "A close-fitting tactical mask that can be connected to an air supply."
	icon_state = "swat"
	siemens_coefficient = 0.7

/obj/item/clothing/mask/gas/explorer
	name = "explorer gas mask"
	desc = "A military-grade gas mask that can be connected to an air supply."
	icon_state = "explorer"
	item_state_slots = list(slot_r_hand_str = "gas", slot_l_hand_str = "gas")
	armor = list(melee = 10, bullet = 5, laser = 5,energy = 5, bomb = 0, bio = 50, rad = 0)
	siemens_coefficient = 0.9

/obj/item/clothing/mask/gas/clown_hat
	name = "clown wig and mask"
	desc = "A true prankster's facial attire. A clown is incomplete without their wig and mask."
	icon_state = "clown"
	item_state_slots = list(slot_r_hand_str = "clown_hat", slot_l_hand_str = "clown_hat")

/obj/item/clothing/mask/gas/sexyclown
	name = "sexy-clown wig and mask"
	desc = "A feminine clown mask for the dabbling crossdressers or female entertainers."
	icon_state = "sexyclown"
	item_state_slots = list(slot_r_hand_str = "clown_hat", slot_l_hand_str = "clown_hat")

/obj/item/clothing/mask/gas/mime
	name = "mime mask"
	desc = "The traditional mime's mask. It has an eerie facial posture."
	icon_state = "mime"
	item_state_slots = list(slot_r_hand_str = "mime", slot_l_hand_str = "mime")

/obj/item/clothing/mask/gas/monkeymask
	name = "monkey mask"
	desc = "A mask used when acting as a monkey."
	icon_state = "monkeymask"
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/mask/gas/sexymime
	name = "sexy mime mask"
	desc = "A traditional female mime's mask."
	icon_state = "sexymime"
	item_state_slots = list(slot_r_hand_str = "mime", slot_l_hand_str = "mime")

/obj/item/clothing/mask/gas/guy
	name = "guy fawkes mask"
	desc = "A mask stylised to depict Guy Fawkes."
	icon_state = "guyfawkes"
	flags_inv = HIDEEARS|HIDEFACE
	item_state_slots = list(slot_r_hand_str = "mime", slot_l_hand_str = "mime")

/obj/item/clothing/mask/gas/commando
	name = "commando mask"
	icon_state = "fullgas"
	item_state_slots = list(slot_r_hand_str = "swat", slot_l_hand_str = "swat")
	siemens_coefficient = 0.2

/obj/item/clothing/mask/gas/cyborg
	name = "cyborg visor"
	desc = "Beep boop"
	icon_state = "death"

/obj/item/clothing/mask/gas/owl_mask
	name = "owl mask"
	desc = "Twoooo!"
	icon_state = "owl"
	body_parts_covered = HEAD|FACE|EYES
