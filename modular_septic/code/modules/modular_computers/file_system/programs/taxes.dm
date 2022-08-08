/datum/computer_file/program/taxes
	filename = "taxman"
	filedesc = "TaxMan Economy Management"
	extended_desc = "Program for viewing and changing salaries and taxes."
	category = PROGRAM_CATEGORY_CREW
	program_icon_state = "id"
	transfer_access = ACCESS_HEADS
	requires_ntnet = TRUE
	size = 4
	tgui_id = "NtosTaxManager"
	program_icon = "coins"

/datum/computer_file/program/taxes/ui_act(action, list/params, datum/tgui/ui)
	. = ..()
	if(.)
		return
	switch(action)
		if("change_tax")
			var/tax_type = params["name"]
			var/new_value = params["new_value"]
			if(!isnull(SSeconomy.taxation_is_theft[tax_type]))
				SSeconomy.taxation_is_theft[tax_type] = CEILING(new_value, 0.01)
		if("change_salary")
			var/account_id = params["account_id"]
			var/new_value = params["new_value"]
			if(SSeconomy.bank_accounts_by_id[account_id])
				var/datum/bank_account/bank_account = SSeconomy.bank_accounts_by_id[account_id]
				bank_account.salary = CEILING(new_value, 0.01)
	return TRUE

/datum/computer_file/program/taxes/ui_static_data(mob/user)
	var/list/data = list()

	var/list/accounts = list()
	for(var/account_id as anything in SSeconomy.bank_accounts_by_id)
		var/datum/bank_account/account = SSeconomy.bank_accounts_by_id[account_id]
		if(account.taxman_hidden || !account.account_holder)
			continue
		var/list/this_account = list()

		this_account["holder"] = account.account_holder
		this_account["salary"] = account.salary
		this_account["account_id"] = account.account_id

		accounts += list(this_account)
	data["accounts"] = accounts
	var/list/taxes = list()
	for(var/tax_name in SSeconomy.taxation_is_theft)
		var/list/this_tax = list()

		this_tax["name"] = tax_name
		this_tax["value"] = SSeconomy.taxation_is_theft[tax_name]

		taxes += list(this_tax)
	data["taxes"] = taxes

	return data
