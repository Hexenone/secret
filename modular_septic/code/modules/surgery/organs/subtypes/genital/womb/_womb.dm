/obj/item/organ/genital/womb
	name = "womb"
	desc = "Acidic Vaginal Liquid Explosion Generated By Mass Amounts Of Filthy Fecal Fisting \
			And Sadistic Septic Syphilic Sodomy Inside The Infected Maggot Infested Womb Of A Molested Nun \
			Dying Under The Roof Of A Burning Church While A Priest Watches And Ejaculates In Immense Perverse \
			Pleasure Over His First Fresh Fetus."
	icon = 'modular_septic/icons/obj/items/genitalia/womb.dmi'
	icon_state = "womb"
	base_icon_state = "womb"
	organ_efficiency = list(ORGAN_SLOT_WOMB = 100)
	zone = BODY_ZONE_PRECISE_GROIN
	genital_type = "none"
	mutantpart_key = "womb"
	mutantpart_info = list(MUTANT_INDEX_NAME = "Normal", MUTANT_INDEX_COLOR = list("FFEEBB"))
	genital_flags = NONE
	genital_visibility = GENITAL_SKIP_VISIBILITY
	arousal_state = AROUSAL_CANT

/obj/item/organ/genital/womb/build_from_dna(datum/dna/dna_datum, associated_key)
	return
