/*
	egun projectiles go here
*/

/obj/item/projectile/beam/stun/disabler	//pseudo disabler
	name = "disabler beam"
	icon_state = "stun"
	taser_effect = 0
	agony = 20

	muzzle_type = /obj/effect/temp_visual/projectile/tracer/lightning
	tracer_type = /obj/effect/temp_visual/projectile/muzzle/lightning
	impact_type = /obj/effect/temp_visual/projectile/impact/lightning

/obj/item/projectile/energy/electrode/goldenbolt	//MIGHTY GOLDEN BOLT
	name = "taser bolt"
	agony = 80