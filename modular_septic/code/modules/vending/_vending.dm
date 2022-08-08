/obj/machinery/vending
	///Default price of taxes if not overridden
	var/default_tax_price = 0
	///Default price of premium taxes if not overridden
	var/extra_tax_price = 0
	/// Infected by pain virus
	var/infected = FALSE
	/// Sound we make when spitting a phrase while infected with pain
	var/infected_noise = 'modular_septic/sound/effects/pain_fuck.ogg'

/obj/machinery/vending/Initialize(mapload)
	. = ..()
	hacking = set_hacking()
	if(InitializeExtraItems())
		product_records = list()
		build_inventory(products, product_records)
		hidden_records = list()
		build_inventory(contraband, hidden_records)
		coin_records = list()
		build_inventory(premium, coin_records)

/obj/machinery/vending/process(delta_time)
	if(machine_stat & (BROKEN|NOPOWER))
		return PROCESS_KILL
	if(!active)
		return

	if(seconds_electrified > MACHINE_NOT_ELECTRIFIED)
		seconds_electrified--

	var/slogan_prob = 2.5
	if(infected)
		slogan_prob = 7.5
	if((last_slogan + slogan_delay <= world.time) && LAZYLEN(slogan_list) && !shut_up && DT_PROB(slogan_prob, delta_time))
		var/slogan = pick(slogan_list)
		if(infected)
			playsound(src, infected_noise, 70, FALSE)
		speak(slogan)
		last_slogan = world.time

/obj/machinery/vending/build_inventory(list/productlist, list/recordlist, start_empty = FALSE)
	var/tax_rate = SSeconomy.taxation_is_theft[TAX_VENDING]
	default_price = round(initial(default_price) * SSeconomy.inflation_value())
	default_tax_price = (tax_rate * default_price)
	extra_price = round(initial(extra_price) * SSeconomy.inflation_value())
	extra_tax_price = (tax_rate * extra_price)
	for(var/typepath in productlist)
		var/amount = productlist[typepath]
		if(isnull(amount))
			amount = 0

		var/obj/item/temp = typepath
		var/datum/data/vending_product/record = new /datum/data/vending_product()
		GLOB.vending_products[typepath] = TRUE
		record.name = initial(temp.name)
		record.product_path = typepath
		if(!start_empty)
			record.amount = amount
		record.max_amount = amount
		record.custom_price = round(initial(temp.custom_price) * SSeconomy.inflation_value())
		record.tax_price = round(record.custom_price * tax_rate)
		record.custom_premium_price = round(initial(temp.custom_premium_price) * SSeconomy.inflation_value())
		record.tax_price_premium = round(record.custom_premium_price * tax_rate)
		record.age_restricted = initial(temp.age_restricted)
		record.colorable = !!(initial(temp.greyscale_config) && initial(temp.greyscale_colors) && (initial(temp.flags_1) & IS_PLAYER_COLORABLE_1))
		recordlist += record

/obj/machinery/vending/reset_prices(list/recordlist, list/premiumlist)
	var/tax_rate = SSeconomy.taxation_is_theft[TAX_VENDING]
	default_price = round(initial(default_price) * SSeconomy.inflation_value())
	extra_price = round(initial(extra_price) * SSeconomy.inflation_value())
	for(var/datum/data/vending_product/record as anything in recordlist)
		var/obj/item/potential_product = record.product_path
		record.custom_price = round(initial(potential_product.custom_price) * SSeconomy.inflation_value())
		record.tax_price = round(record.custom_price * tax_rate)
	for(var/datum/data/vending_product/record as anything in premiumlist)
		var/obj/item/potential_product = record.product_path
		var/premium_sanity = round(initial(potential_product.custom_premium_price))
		if(premium_sanity)
			record.custom_premium_price = round(premium_sanity * SSeconomy.inflation_value())
			continue
		//For some ungodly reason, some premium only items only have a custom_price
		record.custom_premium_price = round(extra_price + (initial(potential_product.custom_price) * (SSeconomy.inflation_value() - 1)))
		record.tax_price_premium = round(record.custom_premium_price * tax_rate)

/obj/machinery/vending/proc/InitializeExtraItems()
	return

/**
 * Generates the vending machine's hacking datum.
 */
/obj/machinery/vending/proc/set_hacking()
	return new /datum/hacking/vending(src)