/datum/controller/subsystem/economy
	/// DEFAULT job salaries, but each bank account can have their salary changed individually
	var/list/job_type_to_salary = list()
	/// Tax types associated with tax values
	var/list/taxation_is_theft = list(
		TAX_VENDING = 0.1,
	)
	/// Starting departmental budgets
	var/list/department_budgets = list(
		ACCOUNT_MASTER = 500 DOLLARS,
		ACCOUNT_CAR = 200 DOLLARS,
	)
	department_accounts = list(
		ACCOUNT_MASTER = ACCOUNT_MASTER_NAME,
		ACCOUNT_CAR = ACCOUNT_CAR_NAME,
	)
	mail_blocked = TRUE

/datum/controller/subsystem/economy/Initialize(timeofday)
	if(time2text(world.timeofday, "DDD") == SUNDAY)
		mail_blocked = TRUE
	for(var/account in department_accounts)
		new /datum/bank_account/department(account, department_budgets[account])
	for(var/datum/job/job as anything in SSjob.joinable_occupations)
		job_type_to_salary[job.type] = job.initial_salary
	return ..()

/datum/controller/subsystem/economy/departmental_payouts()
	var/datum/bank_account/master_account = get_dep_account(ACCOUNT_MASTER)
	if(!master_account)
		return
	master_account.adjust_money(MAX_GRANT_DPT)
	for(var/datum/bank_account/account as anything in generated_accounts)
		if(!account.salary)
			continue
		if(master_account.adjust_money(-account.salary))
			account.adjust_money(account.salary)

/datum/controller/subsystem/economy/price_update()
	for(var/obj/machinery/vending/vending in GLOB.machines)
		if(istype(vending, /obj/machinery/vending/custom))
			continue
		if(!is_station_level(vending.z))
			continue
		vending.reset_prices(vending.product_records, vending.coin_records)
