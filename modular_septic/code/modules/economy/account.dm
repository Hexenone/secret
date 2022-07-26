/datum/bank_account
	/// How much money we get from the master budget every 5 minutes
	var/salary = 0 DOLLARS
	/// When TRUE, this account will not displayman on the TaxMan
	var/taxman_hidden = FALSE

/datum/bank_account/department
	taxman_hidden = TRUE

/datum/bank_account/remote
	taxman_hidden = TRUE
