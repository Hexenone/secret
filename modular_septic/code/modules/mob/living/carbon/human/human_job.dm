/mob/living/carbon/human/on_job_equipping(datum/job/equipping)
	var/datum/bank_account/bank_account = new(real_name, equipping, dna.species.payday_modifier)
	bank_account.payday(STARTING_PAYCHECKS, TRUE)
	bank_account.salary = equipping.initial_salary
	account_id = bank_account.account_id

	dress_up_as_job(equipping)
