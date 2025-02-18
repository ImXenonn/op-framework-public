if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

-- AUTO LOCALES: 24 (do not change)

OP.Global.Locales.Languages["bg-BG"] = {
	-- configuration settings for language
	largeNumberSeparator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeparator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "Система",
		warning = "Предупреждение",
		invalid_input = "Невалиден вход.",
		missing_input = "Липсващ вход.",
		missing_or_invalid_input = "Липсващ или невалиден вход.",
		player_not_found = "Не може да бъде намерен играч със сървър ID `${serverId}`.",
		something_went_wrong = "Нещо се обърка. Моля, опитайте отново.",
		yes = "Да",
		no = "Не",
		n_a = "N/A",
		invalid_server_id = "Невалиден сървър ID."
	},

	-- animations/*
	emotes = {
		get_in_trunk = "Натиснете ~INPUT_ENTER~, за да влезнете в багажника.",
		put_boombox_in_trunk = "Натиснете ~INPUT_ENTER~, за да поставите пултето в багажника.",
		put_player_in_trunk = "Натиснете ~INPUT_ENTER~ , за да сложите играча в багажника.",
		put_player_in_seat = "[${VehicleEnterKey}] Постави на седалка",
		putting_player_in_seat = "Поставяне на седалка",
		trunk_interaction_display = "[${VehicleEnterKey}] Изкачи [${InteractionKey}] Отвори/Затвори багажник",
		trunk_open_close_display = "[${InteractionKey}] Отвори/Затвори багажник",
		trunk_get_out_display = "[${VehicleEnterKey}] Изкачи",
		boombox_already_in_trunk = "Вече има радио в багажника.",
		the_trunk_is_occupied = "Багажникът е зает.",
		unable_to_toggle_carry = "Моля, изчакайте малко преди да активирате носенето.",
		carry_disabled_animal = "Животните не могат да носят.",

		trunk_hint = "Използвайте командата \"/door\", за да отворите/затворите багажника, докато стоите близо до него.",

		cancel_piggyback = "Натиснете ~INPUT_FRONTEND_RRIGHT~ за отказ от пигибак.",
		piggyback_hop_on = "[${InteractionKey}] каца",
		stop_piggyback = "Натиснете ~INPUT_VEH_HEADLIGHT~ за да спрете да пигибаквате.",

		lockpicking_cuffs = "Отключване на белезници",
		lockpick_cuffs_too_fast = "Движихте се твърде бързо.",
		success_lockpick_cuffs = "Успешно отключихте белезниците.",
		failed_lockpick_cuffs = "Неуспешно кравене на патрици под затвор",
		lockpick_lost = "Изгубихте инструмента за кравене на патрици",

		not_cuffed = "Не сте закован",
		unable_to_lockpick = "Не можете да кравете патриците",

		lockpick_cuffs_logs_title = "Хващане на патрици",
		lockpick_cuffs_logs_details = "${consoleName} успешно криви патриците си с помощта на `${itemName}`.",

		you_are_not_being_carried = "В момента не бърдош",
		successfully_uncarried = "Успешно прекратяване на бърдото",
		failed_uncarried = "Неуспешно прекратяване на бърдото",
		uncarry_missing_permissions = "Опит за принудително прекратяване на носенето без необходимите разрешения.",

		uncarry_logs_title = "Принудително прекратяване на носенето",
		uncarry_logs_details = "${consoleName} принудително прекрати носенето на ${targetName}.",

		failed_carry_npc = "Неуспешно носене на NPC.",
		carry_npc_something_wrong = "Нещо се обърка при опита за носене на NPC.",

		e_to_struggle = "Натиснете E, за да се борите",
		cant_struggle_dead = "Не може да се борите, когато сте мъртъв.",
		struggle_to_quick = "След като се борихте, се чувствате изтощени. Изчакайте малко и опитайте отново.",
		struggle_logs_title = "Освободи се след борба",
		struggle_logs_details = "${consoleName} се освободи от ${targetName} и го пренесе.",

		ragdolled_player = "Рзпроваляне на играча ${displayName}."
	},

	-- base/*
	admin = {
		feature_toggle_activated_logs_title = "Удалено превключване на функция",
		feature_toggle_activated_logs_details_state = "${consoleName} превключи `${featureName}` на ${newState} за играч ${targetConsoleName}.",
		feature_toggle_activated_all_logs_title = "Удалено превключване на функция за всички",
		feature_toggle_activated_all_logs_details = "${consoleName} превключи `${featureName}` за всички.",
		feature_toggle_activated_self_logs_title = "Превключената функция",
		feature_toggle_activated_self_on_logs_details = "${consoleName} превключи '${featureName}' включено за себе си.",
		feature_toggle_activated_self_off_logs_details = "${consoleName} превключи '${featureName}' изключено за себе си.",
		feature_toggle_success = "${consoleName} превключи '${featureName}' за ${consoleName}.",
		feature_toggle_success_all = "${consoleName} превключи '${featureName}' за всички.",
		feature_toggle_failed = "Неуспешно превключване на '${featureName}' за сървър с ID ${serverId}.",
		feature_toggle_success_on = "Включен е ${featureName} за ${consoleName}.",
		feature_toggle_success_off = "Изключен е ${featureName} за ${consoleName}.",

		noclip_toggle_activated_self_logs_title = "Превключване на NoClip",
		noclip_toggle_activated_self_on_logs_details = "${consoleName} включи NoClip на позиция `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`. (В превозно средство: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName} изключи NoClip на позиция `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`.",

		model_name_not_provided = "Не е предоставено име на модел.",
		model_name_invalid = "Невалидно име на модел `${modelName}`.",
		failed_to_spawn_vehicle = "Неуспешно спаване на превозно средство.",
		spawned_vehicle_for_player = "Успешно спаване на `${modelName}` за ${displayName}.",
		spawned_vehicle_for_everyone = "Успешно спаване на `${modelName}` за всички.",
		spawned_vehicle_for_self_title = "Спаване на превозно средство",
		spawned_vehicle_for_self_details = "${consoleName} спава превозно средство с име на модел `${modelName}`.",
		spawned_vehicle_for_player_title = "Спаване на превозно средство за играч",
		spawned_vehicle_for_player_details = "${consoleName} е създадъл превозно средство с моделно име `${modelName}` за играч ${targetConsoleName}.",
		spawned_vehicle_for_everyone_title = "Създадено превозно средство за всички",
		spawned_vehicle_for_everyone_details = "${consoleName} е създал превозно средство с моделно име `${modelName}` за всички.",

		vehicle_created = "Превозното средство беше създадено успешно.",
		failed_vehicle_creation = "Неуспех при създаването на превозното средство.",

		-- NOTE: `add_vehicle` command:
		add_vehicle_added_vehicle_for_everyone = "Добавено превозно средство с моделно име `${modelName}` за всички.",
		add_vehicle_added_vehicle_for_player = "Добавено превозно средство с моделно име `${modelName}` за ${consoleName}.",
		add_vehicle_added_vehicle = "Добавено превозно средство с моделно име `${modelName}`.",
		add_vehicle_character_not_loaded = "Целевият играч няма заредени герои.",
		add_vehicle_target_user_not_found = "Целевият потребител не може да бъде намерен.",
		add_vehicle_invalid_input = "Невалиден вход.",
		add_vehicle_no_permissions = "Липса на разрешения.",
		add_vehicle_user_not_found = "Потребителят не е намерен.",
		add_vehicle_invalid_player = "Няма играчи със сървърен идентификатор `${serverId}`.",
		add_vehicle_invalid_model_name = "Моделното име `${modelName}` не е валиден модел.",
		add_vehicle_no_model_name = "Не е добавено моделно име.",

		added_vehicle_for_everyone_logs_title = "Добавено превозно средство за всички",
		added_vehicle_for_everyone_logs_details = "${consoleName} добави превозно средство с моделно име `${modelName}` в гаражите на всички.",
		added_vehicle_for_player_logs_title = "Добавено превозно средство за играч",
		added_vehicle_for_player_logs_details = "${consoleName} добави превозно средство с моделно име `${modelName}` в гаража на ${targetConsoleName}.",
		added_vehicle_logs_title = "Добавено превозно средство",
		added_vehicle_logs_details = "${consoleName} добави превозно средство с моделно име `${modelName}` в своя гараж.",

		invalid_amount = "Невалидна сума.",

		added_cash_title = "Добавени пари",
		added_cash_details = "${consoleName} добави $${amount} пари.",
		added_cash_to_player_title = "Добавени пари на играч",
		added_cash_to_player_details = "${consoleName} добави $${amount} пари на ${targetConsoleName}.",
		added_cash_to_everyone_title = "Добавени пари на всички",
		added_cash_to_everyone_details = "${consoleName} добави $${amount} пари на всички.",

		removed_cash_title = "Премахнати пари",
		removed_cash_details = "${consoleName} премахна $${amount} пари.",
		removed_cash_from_player_title = "Премахнати пари от играч",
		removed_cash_from_player_details = "${consoleName} премахна $${amount} пари от ${targetConsoleName}.",
		removed_cash_from_everyone_title = "Премахнати пари от всички",
		removed_cash_from_everyone_details = "${consoleName} премахна $${amount} пари от всички.",

		added_bank_title = "Добавени банкови средства",
		added_bank_details = "${consoleName} добави $${amount} банкови средства.",
		added_bank_to_player_title = "Банка добавена на играча",
		added_bank_to_player_details = "${consoleName} е добавил(а) $${amount} банка на ${targetConsoleName}.",
		added_bank_to_everyone_title = "Банка добавена на всички",
		added_bank_to_everyone_details = "${consoleName} е добавил(а) $${amount} банка на всички.",

		removed_bank_title = "Банка премахната",
		removed_bank_details = "${consoleName} е премахнал(а) $${amount} банка.",
		removed_bank_from_player_title = "Банка премахната от играч",
		removed_bank_from_player_details = "${consoleName} е премахнал(а) $${amount} банка от ${targetConsoleName}.",
		removed_bank_from_everyone_title = "Премахната банка от всеки",
		removed_bank_from_everyone_details = "${consoleName} премахна $${amount} банка от всеки.",

		added_cash = "Добавени $${amount} пари.",
		added_cash_to_player = "Добавени $${amount} пари на ${targetConsoleName}.",
		added_cash_to_everyone = "Добавени $${amount} пари на всички.",

		removed_cash = "Премахнати $${amount} пари.",
		removed_cash_from_player = "Премахнати $${amount} пари от ${targetConsoleName}.",
		removed_cash_from_everyone = "Премахнати $${amount} пари от всички.",

		added_bank = "Добавени са ${amount} банка.",
		added_bank_to_player = "Добавени са ${amount} банка на ${targetConsoleName}.",
		added_bank_to_everyone = "Добавени са ${amount} банка на всички.",

		removed_bank = "Премахнати са ${amount} банка.",
		removed_bank_from_player = "Премахнати са ${amount} банка от ${targetConsoleName}.",
		removed_bank_from_everyone = "Премахнати са ${amount} банка от всички.",

		spawned_item_title = "Създаден предмет",
		spawned_item_details = "${consoleName} създаде ${amount}x `${itemName}` за себе си.",
		spawned_item_for_player_title = "Създаден предмет за играча",
		spawned_item_for_player_details = "${consoleName} спаунира ${amount}x `${itemName}` за ${targetConsoleName}.",
		spawned_item_for_everyone_title = "Спауниран предмет за всички",
		spawned_item_for_everyone_details = "${consoleName} спаунира ${amount}x `${itemName}` за всички.",

		report_title = "ДОКЛАД-${reportId} ${reporterName}",
		report_logs_title = "Доклад",
		report_logs_details = "${consoleName} създаде доклад ${reportId} със следното съобщение: `${reportMessage}`",

		announcement_staff_title = "Обява на екипа",
		announcement_server_title = "Обява на сървъра",

		announcement_logs_title = "Обява за целия сървър",
		announcement_logs_details = "${consoleName} излъчи следното съобщение към целия сървър: `${announcementMessage}`",

		new_player_revive_logs_title = "Възродяване на нов играч",
		new_player_revive_logs_details = "${consoleName} беше възроден, защото новият играч, който го уби, беше забранен.",

		posted_announcement = "Публикувано съобщение за обява.",
		posted_announcement_locale = "Публикувано съобщение за обява от локал.",
		failed_to_post_announcement = "Неуспешно публикуване на съобщение за обява, тъй като не е добавено съобщение.",
		failed_to_post_announcement_locale = "Неуспешно публикуване на съобщение за обява, тъй като добавеният локал за обява не се поддържа.",

		staff_title = "ПЕРСОНАЛ ${staffName}",
		staff_message_logs_title = "Съобщение на персонала",
		staff_message_logs_details = "${consoleName} изпрати следното съобщение в чата на персонала: `${staffMessage}`",

		staff_pm_title = "ЛС ПЕРСОНАЛ ${transmissionTitle}",
		staff_pm_logs_title = "ЛС на персонала",
		staff_pm_logs_details = "${senderConsoleName} изпрати следното съобщение до ${recipientConsoleName}: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "Не сте влезли в системата.",
		staff_pm_not_user_not_found = "Потребител с ID на сървъра ${serverId} не беше намерен.",
		staff_pm_not_recipient_not_staff = "Играчът, към когото опитвате да изпратите съобщение, не е член на екипа.",
		staff_pm_unable_to_message_self = "Не можете да изпращате съобщения на себе си.",
		staff_pm_warning = "Внимание - Лично съобщение за екипа",
		staff_pm_first_time = "Виждаме, че никога не сте използвали лични съобщения с екипа. За да отговорите на лично съобщение, използвайте командата /staffpm.",

		important_staff_pm_title = "!ВАЖНО - Лично съобщение до вас: ${recipient}",
		close_staffpm = "Затвори",
		staffpm_from = "Лично съобщение от екипа <i>${from}</i>",
		important_staff_pm_logs_title = "Важно лично съобщение до екипа",
		important_staff_pm_logs_details = "${senderConsoleName} изпрати следното важно съобщение към ${recipientConsoleName}: `${message}`",

		external_staff_message = "Външно съобщение за персонала",
		external_staff_message_from_player = "Външно съобщение за персонала от ${playerName}",
		external_staff_message_content = "${staffMessage} (Не можете да отговорите на това съобщение.)",

		unable_to_staff_message_yourself = "Не можете да изпратите съобщение на себе си.",
		message_sent = "Съобщението е изпратено.",
		player_not_found = "Играчът не е намерен.",
		missing_valid_target_source_parameter = "Липсва валиден параметър 'target source'.",
		missing_valid_message_parameter = "Липсва валиден параметър 'съобщение'.",

		invalid_coordinates = "Подадени невалидни координати x, y, z или w.",
		player_not_loaded_character = "Играчът няма зареден персонаж.",
		teleport_successful = "Играчът е телепортиран успешно.",

		player_revived_success = "Играчът е възкресен успешно.",

		missing_valid_license_identifier_parameter = "Липсва валиден параметър 'идентификатор на лиценз'.",

		wiped_entities = "Изтрити обекти. Изтрити са ${deletedEntities} обекти, които споделят мрежа.",
		wipe_entities_logs_title = "Изтрити обекти",
		wipe_entities_logs_details = "${consoleName} издаде команда за изтриване на обекти със следната конфигурация: разстояние = `${distance}`, игнориране на локалните обекти = `${ignoreLocalEntities}`, име на модела = `${modelName}`.",

		wipe_awaiting_confirmation = "Изчаква се потвърждение за изтриването. Въведете `yes` или `no`, за да потвърдите или отмените действието (ще изтече след 60 секунди).\n\nИзбраните параметри са:\n- разстояние: `${distance}`\n- игнориране на локалните обекти: `${ignoreLocalEntities}`\n- име на модела: `${modelName}`",
		wipe_awaiting_big_title = "Предупреждение за изтриване на разстояние",
		wipe_awaiting_confirmation_big = "**Здравейте, сигурни ли сте, че искате да изтриете много голяма площ, моля уверете се, че това е това, което искате да направите!**\nВъведете `да` или `не`, за да потвърдите или отмените (изтича след 60 секунди).\n\n- разстояние: `${distance}`\n- игнориране на местни елементи: `${ignoreLocalEntities}`\n- име на модела: `${modelName}`",
		cancelled_wipe = "Изтриването е отменено.",

		there_is_people_nearby = "В близост има играчи, които може да ви видят при ноуклип!",

		cant_while_spectating = "Не можете да го направите, докато гледате.",

		you_have_been_kicked = "Бяхте изгонени от ${kicker} с причина `${reason}`.",
		you_have_been_kicked_no_reason = "Бяхте изгонени без посочена причина от ${kicker}.",

		logs_player_kicked_title = "Изгонен играч",
		logs_player_kicked_details = "${consoleName} беше изгонен от сървъра от ${kicker} с причина `${reason}`.",
		logs_player_kicked_no_reason_details = "${consoleName} беше изгонен от сървъра от ${kicker} без посочена причина.",

		you_have_been_banned = "Бяхте забранени от ${banner} с причина `${reason}`.",
		you_have_been_banned_no_reason = "Бяхте забранени без посочена причина от ${banner}.",

		banner_name_generic = "Служител",

		ban_alert_title = "Забранен от сървъра",
		ban_alert_description_banner = "Вие бихте били автоматично забранени от ${banner} с причина `${reason}`.",
		ban_alert_description = "Вие бихте били автоматично забранени от системата с причина `${reason}`.",

		logs_player_banned_title = "Забранен играч",
		logs_player_banned_system_title = "Забранен играч от системата",
		logs_player_banned_details = "${consoleName} беше забранен от сървъра от ${banner} с причина `${reason}`.",
		logs_player_banned_no_reason_details = "${consoleName} е забранен от сървъра от ${banner} без посочена причина.",

		player_kicked = "${consoleName} е изгонен от сървъра.",
		player_banned = "${consoleName} е забранен от сървъра.",

		ban_double_kill = "Двойно убийство!",
		ban_triple_kill = "😧 Троен убиец!!!",
		ban_quadrouple_kill = "😨 Четирикратен убиец!!!!!!",
		ban_killing_spree = "🤯 УБИВА ШПРЕЕ (${count})!!!!!!",

		logs_hide_staff_title = "Скрит персонал",
		logs_hide_staff_hidden_details = "${consoleName} е скрил своята роля като персонал.",
		logs_hide_staff_shown_details = "${consoleName} е скрил/а своят/та статус като персонал.",

		logs_toggle_staff_title = "Превключване на персонал",
		logs_toggle_staff_off_details = "${consoleName} е изключил/а своята наличност като персонал.",
		logs_toggle_staff_on_details = "${consoleName} е включил/а своята наличност като персонал.",

		staff_hidden = "Вашият/ата статус като персонал е скрит/а.",
		staff_shown = "Вашият/ата статус като персонал се показва.",
		staff_toggled_on = "Вашата наличност като персонал е включена.",
		staff_toggled_off = "Вашата наличност като персонал е изключена.",

		staff_feature_unavailable = "Тази функция е недостъпна, докато сте изключени като персонал.",

		headache_logs_title = "Поставена главоболие",
		headache_logs_details = "${consoleName} е предизвикал главоболие на ${targetConsoleName}.",

		spawn_logs_title = "Телепортиран до Спавн",
		spawn_logs_details = "${consoleName} се телепортира до спавн (стафката кула).",

		super_jump_logs_title = "Превключен Super Jump",
		super_jump_logs_details_on = "${consoleName} активира своя Super Jump.",
		super_jump_logs_details_off = "${consoleName} изключва своя Super Jump.",

		success_trigger_headache = "Успешно се предизвика главоболие на ${playerName}.",
		failed_trigger_headache = "Неуспешно задействане на главоболие.",

		no_item_name = "Не е предоставено име на предмет.",
		invalid_item_name = "${itemName} не е валидно име на предмет.",
		item_spawned = "Създадени ${amount}x `${itemName}` за ${consoleName}.",
		item_spawned_for_everyone = "Създадени ${amount}x `${itemName}` за всички.",

		warning_message_set_to = "Предупредителното съобщение е зададено на `${warningMessage}`.",
		warning_message_removed = "Предупредителното съобщение е премахнато.",
		warning_message_error = "Възникна грешка при опит за задаване на предупредителното съобщение.",
		warning_message_identical = "Не можеш да зададеш предупредителното съобщение на вече зададената стойност.",
		warning_message_set_to_title = "Предупредителното съобщение е зададено",
		warning_message_set_to_details = "${consoleName} зададе предупредителното съобщение на `${warningMessage}`.",
		warning_message_removed_title = "Предупредителното съобщение е премахнато",
		warning_message_removed_details = "${consoleName} премахна предупредителното съобщение.",

		indestructibility_on = "Включено 'Неуязвимост'.",
		indestructibility_off = "Изключено 'Неуязвимост'.",
		speed_boost_on = "Включено 'Ускорение на скоростта'.",
		speed_boost_off = "Изключено 'Ускорение на скоростта'.",
		nitro_boost_on = "Включено 'Нитро ускорение'.",
		nitro_boost_off = "Изключено 'Нитро ускорение'.",
		no_nearby_vehicles_on = "Включено 'Няма близки превозни средства'.",
		no_nearby_vehicles_off = "Изключено 'Няма близки превозни средства'.",
		speed_up_progress_bar_on = "Включено 'Ускори лентата за напредъка'.",
		speed_up_progress_bar_off = "Изключено 'Ускори лентата за напредъка'.",
		aimbot_on = "Активиране на 'Aimbot'.",
		aimbot_off = "Изключване на 'Aimbot'.",
		vehicle_smoke_on = "Активиране на 'Vehicle Smoke'.",
		vehicle_smoke_off = "Изключване на 'Vehicle Smoke'.",

		peeking_on = "Активиране на режим за поглеждане.",
		peeking_off = "Изключване на режим за поглеждане.",

		watching_on = "Активиране на режим за наблюдение.",
		watching_off = "Изключване на режим за наблюдение.",
		watching_label = "Наблюдаване: ${nearby}",

		evidence_view_on = "Активиране на изглед на доказателства.",
		evidence_view_off = "Изключено преглеждане на доказателства.",
		evidence_view_title = "Превключено преглеждане на доказателствата",
		evidence_view_details_on = "${consoleName} превключи разширеното преглед на доказателствата.",
		evidence_view_details_off = "${consoleName} изключи разширеното преглед на доказателствата.",

		report_muted_no_reason = "Били сте заглушени от командата за докладване без посочена причина.",
		report_muted = "Били сте заглушени от командата за докладване по причина `${reason}`.",

		already_sending_report = "Вече изпращате доклад. Моля, изчакайте.",
		unable_to_send_identical_report = "Не можете да изпратите две еднакви доклада един след друг.",

		already_sending_staff_message = "Вече изпращате съобщение до администратор. Моля, изчакайте.",
		unable_to_send_identical_staff_message = "Не можете да изпратите две еднакви съобщения до администратор едно след друго в рамките на 30 секунди.",

		tp_coords_invalid_coordinates = "Невалидни координати.",
		tp_coords_teleported_to_coordinates = "Телепортиран към координати X: ${x}, Y: ${y}, Z: ${z}.",

		teleported_to_waypoint = "Телепортиран към маркер на мястото '${locationLabel}'.",
		no_waypoint_set = "Трябва да зададете маркер.",

		teleported_to_coordinates_logs_title = "Телепортиран на координати",
		teleported_to_coordinates_logs_details = "${consoleName} е телепортиран на координати X: ${x}, Y: ${y}, Z: ${z}.",
		teleported_to_waypoint_logs_title = "Телепортиран на маркер",
		teleported_to_waypoint_logs_details = "${consoleName} е телепортиран на маркер ${locationLabel}.",

		population_density_set_to = "Променен е множителят за плътност на населението на ${multiplierLabel}%.",
		population_density_set_off = "Настройката за умножител на плътността на населението е изключена.",
		population_density_is_not_on = "Настройката за умножител на плътността на населението не е активирана.",
		population_density_already_set_to = "Настройката за умножител на плътността на населението е вече настроена на ${multiplierLabel}%.",

		enabled_features_list = "Активирани функции:",
		aimbot_feature = "Аимбот",
		disabled_collisions_feature = "Изключени сблъсъци",
		disabled_recoil_feature = "Изключен откат",
		evidence_view_feature = "Преглед на доказателства",
		hit_indicator_feature = "Показване на попадение",
		indestructibility_feature = "Неуязвимост",
		infinite_ammo_feature = "Неограничени боеприпаси",
		invisibility_feature = "Невидимост",
		muted_sirens_feature = "Изключени сирени",
		nitro_boost_feature = "Нитро ускорение",
		no_nearby_vehicles_feature = "Няма близки превозни средства",
		peeking_feature = "Плющене",
		roll_control_feature = "Контрол на завъртане",
		speed_boost_feature = "Ускорение на скоростта",
		speed_up_progress_bar_feature = "Ускоряване на лента за напредъка",
		sticky_feet_feature = "Лепкави крака",
		wallhack_feature = "Прозирни стени",
		watching_feature = "Наблюдаване",
		fortnite_feature = "Фортнайт",
		reflection_feature = "Отразяване на урон",
		stable_cam_feature = "Стабилна камера",
		super_jump_feature = "Супер скок",
		server_id_hidden_feature = "Скрит идентификатор на сървъра",
		fake_disconnect_feature = "Фалшиво изключване",
		brighter_nights_feature = "По-светли нощи",

		you_are_not_in_a_vehicle = "Вие не сте в превозно средство.",
		repaired_vehicle = "Превозното средство е поправено.",

		success_nos_refill = "Успешно попълни NOS.",
		failed_nos_refill = "Неуспешно попълване на NOS.",

		refill_nitro_missing_permissions = "Играчът се опита да попълни своя NOS без необходимите разрешения.",

		register_invalid_character_id = "Невалидно идентификационно число за герой.",
		register_invalid_slot = "Невалидно място за инвентар.",
		register_weapon_success = "Успешно регистрирахте оръжието в място ${slotId} за героя с идентификационен номер ${cid}.",
		no_serial_number = "Не може да се регистрира оръжие без сериен номер.",
		unknown_character_id = "Непознат идентификационен номер на герой.",
		register_weapon_failed = "Неуспешна регистрация на оръжие.",

		register_weapon_missing_permissions = "Играчът се опита да регистрира оръжие без необходимите права.",

		vehicle_smoke_invalid_class = "Не може да се активира дим за това класно автомобил.",

		repaired_vehicle_logs_title = "Оправен Автомобил",
		repaired_vehicle_logs_details = "${consoleName} поправи превозното средство, в което е бил/а.",

		unable_to_enter_vehicle_while_dead = "Не можете да влезете в превозното средство, докато сте мъртъв/а.",
		the_closest_vehicle_had_no_free_seats = "Най-близкото превозно средство няма свободни места.",
		there_are_no_nearby_vehicles = "Няма налични превозни средства наблизо.",
		vehicle_not_found_network = "Не е открито превозно средство с дадения мрежов идентификатор.",
		entered_vehicle = "Опитахте се да влезете в близкото ${vehicleName}.",

		set_vehicle_modifications_logs_title = "Настройки на модификации на превозното средство",
		set_vehicle_modifications_logs_details = "${consoleName} зададе модификации на превозното средство с номер на регистрация `${vehiclePlate}`. Зададените модификации са: модТип-${modType}, модИндекс-${modIndex}, гуми-${customTires}.",

		set_vehicle_livery_logs_title = "Задаване на ливрея за превозно средство",
		set_vehicle_livery_logs_details = "${consoleName} зададе ливреята на превозно средство с номер на регистрация `${vehiclePlate}` на `${liveryIndex}`.",

		set_vehicle_modification = "Задаване на модификация на превозно средство за модТип `${modType}` с индекс `${modIndex}`. (Персонализирани гуми: ${customTires})",
		mod_index_invalid_for_type = "Индекс на мод `${modIndex}` е невалиден за типа на мода `${modType}`.",
		mod_type_invalid = "Типът на мода `${modType}` е невалиден.",
		no_mod_type_set = "Не е зададен тип на мода.",

		set_vehicle_livery = "Задай ливрея на превозното средство на `${liveryIndex}`.",
		no_livery_index_set = "Не е зададен индекс на ливрея (мин. 1).",
		you_are_not_the_driver = "Вие не сте шофьор на превозното средство.",
		vehicle_is_not_a_plane_or_heli = "Превозното средство не е самолет или хеликоптер.",
		livery_index_invalid = "Невалиден индекс на ливрея (макс. ${maxLiveries}).",
		vehicle_has_no_liveries = "Автомобилът няма винилни надписи.",

		invalid_plate_number = "Невалиден регистрационен номер.",
		set_fake_plate_number = "Зададен е регистрационен номер на автомобила: `${plateNumber}`.",

		invalid_dirt_level = "Невалидно ниво на замърсяване.",
		set_dirt_level = "Нивото на замърсяване на автомобила беше зададено на `${dirtLevel}`.",

		already_fake_disconnecting = "Вече опитвате да извършите фалшиво отключване. Моля, изчакайте.",
		started_fake_disconnect = "Започнато е фалшиво отключване. Повторете командата, за да спрете го.",
		stopped_fake_disconnect = "Спряно е фалшивото отключване.",

		disabled_idle_cam = "Изключена е пасивна камера.",
		enabled_idle_cam = "Пасивната камера е активирана отново.",

		created_vehicle_smoke_for_player_logs_title = "Създадена е димна газ за превозно средство",
		created_vehicle_smoke_for_player_logs_details = "${consoleName} създаде димна газ за превозно средство.",

		player_info_title = "${consoleName}",
		player_info = "${fullName} #${characterId}\nИма ${playtime} играно време.\n${jobName}, ${departmentName}, ${positionName}\n\n${backstory}",

		inventory_name_missing = "Липсващ параметър за име на инвентар.",

		auto_driving_engaged = "Автоматичното шофиране е активирано (Стил: ${style}).",
		auto_driving_updated = "Скоростта/мястото на автоматичното шофиране е актуализирано.",
		auto_driving_disengaged = "Автоматичното шофиране е прекратено.",
		not_auto_driving = "Вие не сте на режим на автоматично шофиране.",
		invalid_auto_drive_speed = "Невалидна или липсваща скорост на автоматичното шофиране.",
		reset_auto_drive_speed = "Върнете скоростта на автоматичното шофиране на стойността по подразбиране.",
		set_auto_drive_speed = "Задаване на скорост на автоматичното шофиране на ${speed} mph.",

		disabled_recoil_on = "Изключен рикошет.",
		disabled_recoil_off = "Включен рикошет.",

		attachment_missing = "Липсва параметър за прикрепяне.",
		no_weapon_equipped = "Няма екипирано оръжие.",
		attachment_invalid = "Прикачването е невалидно или не е налично за това оръжие.",
		attachment_failed_toggle = "Неуспешно превключване на прикачването на това оръжие.",
		attachment_on = "Успешно превключено прикачване '${attachment}' върху оръжие.",
		attachment_off = "Успешно превключено от прикачването '${attachment}' на оръжието.",

		tint_invalid = "Невалиден цвят на оръжие.",
		tint_range_invalid = "Невалиден обхват на цвета на оръжието (трябва да е между 0 и ${max}).",
		tint_failed_set = "Неуспешно установяване на цвета за оръжието.",
		tint_removed = "Успешно премахнат тинт на оръжие.",
		tint_set = "Успешно зададен тинт на оръжие към `${tint}` (${tintIndex}).",
		no_weapon_tint = "Това оръжие няма тинтове.",

		no_attachments = "Няма добавки",
		available_attachments = "Налични добавки",
		current_attachments = "Текущи добавки",
		no_attachments = "Няма добавки",
		attachments_list = "Добавки:",
		tint_label = "Тинт: \"${tintLabel}\" (${tintIndex})",

		item_name_failed_set = "Неуспех при задаване на ново име за артикул.",
		item_name_removed = "Успешно премахнато променено име на артикул.",
		item_name_set = "Успешно поставено име на артикул за '${itemName}'.",
		item_name_invalid_slot = "Невалиден или липсващ слот за артикул.",

		cleaned_ped = "Успешно почистен персонаж на ${consoleName}.",
		cleaned_ped_self = "Успешно почистихте своя персонаж.",
		clean_ped_failed = "Неуспешно почистване на персонаж.",
		cleaned_ped_for_all = "Успешно почистени персонажи на всички.",
		clean_ped_no_permission = "Опит за почистване на персонаж без необходимите права.",

		item_durability_set_success = "Успешно зададена здравина от ${amount}% за артикули в слот ${slotId}.",
		item_durability_set_failed = "Неуспешно задаване на издръжливостта.",
		item_durability_invalid_amount = "Невалидно количество издръжливост (0 <> 100).",
		item_durability_set_no_permission = "Опит за задаване на издръжливост за предмет без подходящи разрешения.",

		item_metadata_set_no_permission = "Опит за задаване на метаданни на предмет без подходящи разрешения.",
		item_metadata_invalid_metadata = "Невалидни метаданни на предмет.",
		item_metadata_set_success = "Успешно зададени метаданни за предмет в слот ${slotId}.",
		item_metadata_set_failed = "Неуспешно задаване на метаданни.",

		advanced_metagame_on = "Разширено метаигра включено.",
		advanced_metagame_off = "Разширено метаигра изключено.",

		identity_set = "Успешно зададохте вашата самоличност на `${name}`.",
		identity_reset = "Успешно нулирахте вашата самоличност.",
		identity_set_failed = "Неуспешно задаване на вашата самоличност.",
		identity_hud = "Самоличност: ${playerName}",

		set_identity_no_permission = "Играч опита да зададе своето име без необходимите разрешения.",

		invalid_range_parameter = "Невалиден параметър за обхват.",
		wipe_first_owned_success = "Успешно изтрихте всички ${amount} елементи, притежавани първоначално от играча със сървър идентификатор `${serverId}`.",
		wipe_first_owned_success_range = "Успешно изтрити всички ${amount} същества, които са притежание на играч със сървърния идентификатор `${serverId}` в обхват от ${range}м.",
		wipe_first_owned_failed = "Неуспешно изтриване на съществата, които са притежание на играч със сървърния идентификатор `${serverId}`.",

		invalid_radius_parameter = "Невалиден обхват (между 1 и 500).",
		scooped_up_players = "Прибрани ${amount} играч(и).",
		scoop_invalid = "Не сте прибрали никакви играчи.",
		unscooped_players = "Неприбрани ${amount} от общо ${total} играч(и).",
		unscoop_failed = "Неуспешно освобождаване на играчите.",

		toggle_collisions_missing_permissions = "Играчът се опита да превключи колизиите си без подходящи разрешения.",
		wipe_first_owned_missing_permissions = "Играчът се опита да изтрие първия притежаван от него елемент без подходящи разрешения.",

		freeze_missing_permissions = "Играчът се опита да замрази или размрази друг играч без подходящи разрешения.",

		freeze_success = "Успешно заблокирахте ${consoleName}.",
		failed_freeze = "Неуспешно замразяване на играч.",
		unfreeze_success = "Успешно размразихте ${consoleName}.",
		failed_unfreeze = "Неуспешно размразяване на играч.",

		freeze_logs_title = "Замрази играч",
		freeze_logs_details = "${consoleName} замрази ${targetName}.",
		unfreeze_logs_title = "Размрази играч",
		unfreeze_logs_details = "${consoleName} размрази ${targetName}.",

		slap_kill_reason = "Плеснат",
		slap_success = "Успешно плесна ${consoleName}.",
		slap_failed = "Неуспешно плескане на играч.",
		slap_logs_title = "Плеснат играч",
		slap_logs_details = "${consoleName} плесна ${targetName}.",
		slap_missing_permissions = "Играчът опита да плесне друг играч без необходимите разрешения.",

		damaged_player = "Успешно наранена/нанесена щета на ${consoleName} за ${damage} damage.",
		damage_player_failed = "Неуспешно нанасяне на щета на играч.",
		damage_player_logs_title = "Наранен Играч",
		damage_player_logs_details = "${consoleName} нанесе ${damage} щета на ${targetConsoleName}.",
		damage_player_missing_permissions = "Играч се опита да нанесе щета на друг играч без подходящи разрешения.",

		refill_nitro_logs_title = "Зареждане на Нитро",
		refill_nitro_logs_details = "${consoleName} зареди нитрото си.",

		character_data_logs_title = "Данни за Герой",
		character_data_logs_details = "${consoleName} провери данните на ${targetName} (CID: ${characterId}).",

		item_name_logs_title = "Преименуване на име",
		item_name_logs_details = "${consoleName} преименува предметите в слот ${slot} на `${nameOverride}`.",

		toggle_attachment_logs_title = "Преминаха къмложение",
		toggle_attachment_logs_details = "${consoleName} превключва `${attachment}` къмложение.",

		tint_logs_title = "Задаване на цвят",
		tint_logs_details = "${consoleName} задава индекса на цвета на оръжието си на ${tintIndex}.",

		population_multiplier_logs_title = "Множител на населението",
		population_multiplier_logs_details = "${consoleName} зададе множител на населението на ${populationMultiplier}.",

		fake_disconnect_logs_title = "Фалшиво прекъсване",
		fake_disconnect_on_logs_details = "${consoleName} активира фалшивото прекъсване.",
		fake_disconnect_off_logs_details = "${consoleName} деактивира фалшивото прекъсване.",

		identity_logs_title = "Идентичност",
		identity_on_logs_details = "${consoleName} зададе своята идентичност на `${playerName}`.",
		identity_off_logs_details = "${consoleName} нулира идентичността си.",

		clean_ped_logs_title = "Почистено тяло",
		clean_ped_logs_details = "${consoleName} почисти телото на ${targetName}.",

		invalid_job_search = "Невалидно търсене на работа (трябва да са поне 3 знака).",
		failed_job_search = "Неуспешно търсене на работа.",
		job_search_no_results = "Няма намерени работи.",
		job_search_results = "Зададени са данните за работа на ${consoleName} като \"${jobName}, ${departmentName}, ${positionName}\" (Score: ${score}).",
		job_no_character = "Целевият играч няма зареден герой.",

		job_reset_success = "Успешно нулирана работната позиция на ${consoleName}.",
		failed_job_reset = "Неуспешно нулиране на работата.",

		create_vehicle_logs_title = "Създадено превозно средство",
		create_vehicle_logs_details = "${consoleName} създаде превозно средство с име на модел `${modelName}`.",

		replace_vehicle_logs_title = "Заменено превозно средство",
		replace_vehicle_logs_details = "${consoleName} замени своето `${oldModelName}` с `${modelName}`.",

		set_durability_logs_title = "Настроена издръжливост на елемент",
		set_durability_logs_details = "${consoleName} настройва издръжливостта за елемента в слот ${slot} на ${durability}.",

		set_metadata_logs_title = "Задаване на метаданни на елемент",
		set_metadata_logs_details = "${consoleName} зададе метаданните на елемента в слот ${slot} на `${metadata}`.",

		registered_weapon_logs_title = "Регистриране на оръжие",
		registered_weapon_logs_details = "${consoleName} регистрира оръжие с сериен номер `${serialNumber}` на героя с ID `${characterId}`.",

		wipe_first_owned_logs_title = "Изтриване на първо притежание",
		wipe_first_owned_logs_details = "${consoleName} изтрива ${amount} обекта, притежавани първоначално от играча със сървърен идентификатор `${serverId}` в обхват от ${range} метра.",

		unscoop_logs_title = "Несъбрани играчи",
		unscoop_logs_details = "${consoleName} не събра ${amount} играч(и) на `${coords}`.",

		set_job_logs_title = "Задаване на работа",
		set_job_logs_details = "${consoleName} зададе работа на ${targetConsoleName} (#${characterId}) като `${jobName}, ${departmentName}, ${positionName}` (Резултат: ${score}, Търсене: `${search}`).",

		reset_job_logs_title = "Нулиране на работа",
		reset_job_logs_details = "${consoleName} нулира работата на ${targetConsoleName} (#${characterId})."
	},

	anti_cheat = {
		bad_entity_title = "Грешен създаден обект",
		bad_entity_message = "${consoleName} създаде обект с име на модел `${modelName}`.",
		detected_entity_title = "Открит Създаден Обект",
		detected_entity_message = "${consoleName} създаде обект с име на модел `${modelName}`.",
		added_model_to_list = "Добавен модел `${modelName}` (${modelHash}) в списъка за откриване.",
		model_already_added_to_list = "Моделът `${modelName}` (${modelHash}) вече е добавен в списъка за откриване.",
		removed_model_to_list = "Премахнат модел `${modelName}` (${modelHash}) от списъка за откриване.",
		model_not_in_list = "Моделът `${modelName}` (${modelHash}) не е добавен към списъка за откриване.",
		detection_area_close = "[${InteractionKey}] Премахни област за откриване (${areaId})",
		detection_area = "Област за откриване (${areaId})",

		suspicious_transfer_title = "Съмнителен превод",
		suspicious_transfer_message = "${from} изпрати точно $${amount} на ${to}.",

		failed_toggle_strict_mode = "Неуспешно превключване на стрикт режим.",
		strict_mode_enabled = "Успешно активиран стрикт режим.",
		strict_mode_disabled = "Успешно деактивиран стрикт режим.",

		ban_notification_title = "Анти-чийт",
		ban_notification = "Бан за ${consoleName} за `${banReason}`.",

		suspicious_transfer_title = "Съмнителен превод",
		suspicious_transfer_details = "${consoleName} прехвърли $${amount} на ${targetConsoleName}.",

		-- GPT-4 generated ban messages
		bad_entity_spawn = "Опа, опита се да призове древния артефакт '${modelName}', нали? Това не е епизод на 'Antiques Roadshow', а този реликвар остава в сейфа.",
		bad_screen_word_ban = "Чули сме за изпити с отворени книги, но това е абсурдно.",
		blacklisted_command_ban = "Съжалявам, но нямате права за изпълнение на тази команда. Моля, свържете се с администраторите на сървъра, ако смятате, че това е грешка.",
		clear_tasks_ban = "Това не е център за обучение на Джедаи. Вашите усилия да влияете на свободната воля на другите са отбелязани... и отхвърлени.",
		damage_modifier_ban = "Вашият ниво на мощност не може да бъде над 9000.",
		distance_taze_ban = "Вашето впечатляващо изпълнение от разстояние не беше оценено.",
		fast_movement_ban = "Летенето не е разрешено на този сървър.",
		freecam_ban = "Изглежда, че сте имали извънтялото си тяло преживяване.",
		honeypot_ban = "Опитахте се да активирате създателния режим, но нямате разрешение да го направите.",
		illegal_client_event = "Ах, опитвате се да настроите скритата честота на `${eventName}`, нали? Това не е тайна радиостанция, а тази песен не е в нашата плейлиста.",
		illegal_damage_ban = "Сила настрана, нарушили сте баланса в нашето царство.",
		illegal_freeze_ban = "Макар и духовете да се разхождат свободно, ние смъртните сме обвързани със законите на физиката. Сър Исак Нютон не би искал нещо друго.",
		illegal_global_ban = "Опитахте ли се да се връзвате с матрицата? Нео може да бъде впечатлен, но ние не сме.",
		illegal_native_ban = "Опитахте ли се да шепнете на духовете от цифровия свят? За съжаление, този сеанс е отказан. Повече късмет в ефирната равнина.",
		illegal_ped_change_ban = "Идентичностната кражба не е шега, Джим! Милиони герои страдат всеки ден.",
		illegal_server_event = "Желаехте да танцувате на невидимия ритъм на `${eventName}`, нали? Това не е тайна бална зала, а и ония танци? Строго забранени.",
		illegal_spectating_ban = "Призрачните призраки са запазени за обителите на призраци, не тук. Вашите астрални проекции бяха отчетени, но не са добре дошли.",
		illegal_vehicle_modifier_ban = "Въпреки Дом Торето от серията Форсаж, ние не сме семейство.",
		infinite_ammo_ban = "Въпреки популярното мнение, тук важат законите на запазващата се енергия. Магическата патронна кутия е конфискувана.",
		invalid_health_ban = "Вашият показател на здраве изглежда е приел малко прекалено много спанак, Поупай.",
		invincibility_ban = "Вие не сте Черният рицар, не може да бъдете неуязвими.",
		ped_spawn_ban = "Ох, очакваше ли да примамително привлечеш легендарната фигура на ${modelName}? Това не е Холивудско кастинг и тази звезда ще остане зад кулисите.",
		player_blips_ban = "Въздушното пространство е пълно, УАВ е недостъпен.",
		runtime_texture_ban = "Имате мод меню, но не можете да го използвате.",
		semi_godmode_ban = "Вашето настояване върху извора на вечността изглежда е нарушило естествения ход на времето. Вечността не е толкова забавна, колкото звучи.",
		suspicious_explosion_ban = "Съжалявам, но това не е филм на Майкъл Бей. Ексцесивното използване на пиротехника не е разрешено.",
		text_entry_ban = "Инспектирането на елементи не е разрешено в този браузър.",
		thermal_night_vision_ban = "По-ярките нощи не са позволени.",
		underground_ban = "Изглежда сте попаднали в дупка на зайче.",
		vehicle_modification_ban = "Не успяхте да намерите течност за фаровете на колата си.",
		vehicle_spawn_ban = "Ах, мечтаещи за разходка с `${modelName}`, нали? Това не е шоурум, а този модел? Има вечна списъчна очакване!",
		weapon_spawn_ban = "Тъжно ли сте за `${weaponName}`? Това не е оръжеен склад, а това парче? Все още е в ковачницата.",
		advanced_noclip_ban = "Опитвате се да скочите през незабелязани коридори? Това не е фантомски валс, а този ход? Не е в нашата танцова карта.",
		illegal_local_vehicle_ban = "Изглежда, че сте открили невидимия кон на господар Мираж! За съжаление, този мистичен превоз е запазен за годишния парад на призраци.",

		type_aimbot = "Aimbot",
		type_bad_creation = "Лошо Създателство",
		type_bad_screen_word = "Лоша Дума на екрана",
		type_blacklisted_command = "Команда в Черния списък",
		type_clear_tasks = "Изчистване на Задачите",
		type_damage_modifier = "Модификатор на Управлението",
		type_distance_taze = "Дистанционно Taze",
		type_fast_movement = "Бързо Движение",
		type_freecam_detected = "Открит Freecam",
		type_honeypot = "Пчелна капан",
		type_illegal_damage = "Незаконна Повреда",
		type_illegal_event = "Незаконно Клиентско Събитие",
		type_illegal_freeze = "Незаконно Замразяване",
		type_illegal_global = "Незаконно Глобално Използване",
		type_illegal_native = "Незаконен Нативен Позив",
		type_illegal_ped_spawn = "Спаунат NPC",
		type_illegal_server_event = "Незаконно Събитие на Сървъра",
		type_illegal_vehicle_modifier = "Модификация на МПС без Разрешение",
		type_illegal_vehicle_spawn = "Спаунато МПС",
		type_illegal_weapon = "Спаунато Оръжие",
		type_infinite_ammo = "Неограничени Боеприпаси",
		type_advanced_noclip = "Разширен Ноуклип",
		type_invalid_health = "Невалидно здраве",
		type_invincibility = "Безсмъртие",
		type_modified_fov = "Променена зрителна ъгъл",
		type_ped_change = "Промяна на същество",
		type_player_blips = "Играчки маркери",
		type_runtime_texture = "Texture по време на изпълнение",
		type_semi_godmode = "Полубожествен режим",
		type_spawned_object = "Създаден обект",
		type_spectate = "Наблюдение",
		type_suspicious_explosion = "Подозрителна експлозия",
		type_suspicious_transfer = "Подозрителен превод",
		type_text_entry = "Текстов вход",
		type_thermal_night_vision = "Термално/нощно виждане",
		type_underground = "Подземно",
		type_vehicle_modification = "Промяна на превозно средство",
		type_illegal_local_vehicle = "Използване на ненамрежов превозно средство",

		event_prefix = "Анти-Чийт: ${type}",

		mp_f_freemode_01_label = "Свободен (жена)",
		mp_m_freemode_01_label = "Свободен (мъж)",
		player_one_label = "Франклин",
		player_two_label = "Тревър",
		player_zero_label = "Майкъл",

		ig_orleans_label = "Саскотч",
		u_m_m_jesus_01_label = "Исус",
		u_m_y_babyd_label = "Бодибилдър",
		u_m_y_imporage_label = "Супергерои",
		a_m_m_bevhills_02_label = "Бял мъж",
		a_m_m_fatlatin_01_label = "Дебел мъж",
		a_m_m_hasjew_01_label = "Еврейски пешеходец",
		a_m_m_beach_01_label = "Горнище пешоходец (черен, мъжки)",
		a_m_m_beach_02_label = "Горнище пешоходец (бял, мъжки)",
		a_m_m_afriamer_01_label = "Дебел черен мъж",
		ig_jimmydisanto_label = "Джими",
		ig_jimmydisanto2_label = "Джими 2",
		a_m_y_musclbeac_01_label = "Частично облечен плажен мъж",
		csb_ramp_marine_label = "Войник от морската пехота",
		s_f_y_stripperlite_label = "Стриптизьорка",
		mp_f_stripperlite_label = "Стриптизьорка 2",
		mp_m_marston_01_label = "Липсващи ръце и крака",
		mp_m_niko_01_label = "Нико (GTA IV)",

		high_fov_warning = "Вашето FOV (поле на зрение) е необичайно високо",
		high_fov_description = "Това вероятно се дължи на модификатор на FOV.",
		high_fov_debug = "Текущо: ${fov}",

		illegal_oxy_run = "Играчът завърши доставка на окси по-бързо, отколкото е възможно за човек.",

		fast_movement_warning = "Вие бяхте отчетени за движение, което е твърде бързо! Моля, информирайте разработчик и кажете какво сте правили, за да получите това съобщение, тъй като не би трябвало да го получавате.",
		invincibility_warning = "Вие бяхте отчетени за битието неуязвими! Моля, информирайте разработчик и кажете какво сте правили, за да получите това съобщение, тъй като не би трябвало да го получавате.",
		damage_modifier_warning = "Вие сте били отбелязани, че имате невалиден модификатор на щетите! Моля, информирайте разработчик и кажете му какво правите, за да стигнете до това, тъй като не трябва да получавате това съобщение в чата.",
		freeze_warning = "Вие сте били отбелязани, че сте замразени, въпреки че не трябва да сте! Моля, информирайте разработчик и кажете му какво правите, за да стигнете до това, тъй като не трябва да получавате това съобщение в чата."
	},

	authentication = {
		waiting_for_server = "Изчакване на готовността на сървъра...",
		authenticating_with_server = "Удостоверяване със сървъра...",

		failed_to_get_global_user = "Неуспешно намиране на глобален потребител.",
		failed_to_get_local_user = "Неуспешно намиране на локален потребител.",
		failed_to_get_local_ban = "Неуспешно намиране на локален забранен статус.",

		global_ban = "Бяхте забранени глобално от всички OP-FW сървъри.\n\nХеш на забраната: ${banHash}\nПричина за забраната: ${reason}\n\nАко смятате, че това е грешна забрана, моля присъединете се към OP-FW Discord гилдията, за да научите как можете да оскаржите забраната на ${frameworkDiscord}",
		local_ban = "Бяхте забранени от ${communityName}.\n\nХеш на забраната: ${banHash}\nПричина за забраната: ${reason}\nЗабраната от ${creatorName}\nВремева маркировка: ${timestamp}\n\n${indefiniteOrExpires}\n\nПрисъединете се към нашата Discord гилдия, за да научите как можете да оскаржите забраната на ${communityDiscord}",
		local_ban_no_creator = "Бяхте забранени от ${communityName}.\n\nХеш на забраната: ${banHash}\nПричина за забраната: ${reason}\nВремеви отпечатък: ${timestamp}\n\n${indefiniteOrExpires}\n\nПрисъединете се към нашия Discord сървър, за да се запознаете с процедурата за апилиране на ${communityDiscord}",

		ban_indefinite = "Тази забрана е безсрочна.",
		ban_expires = "Тази забрана изтича след ${timeLeft}.",

		pepega_moderate = "Бяхте забранени глобално от всички сървъри на OP-FW без посочени причини.",
		pepega_ultimate = "Бяхте забранени от този сървър.",

		welcome_to = "Добре дошли в",

		connection_rejected_logs_title = "Отхвърлена връзка",
		connection_rejected_logs_details = "${consoleName} беше отхвърлен при свързване поради `${rejectCode}`.",

		connection_accepted_logs_title = "Приета връзка",
		connection_accepted_logs_details = "${consoleName} беше приет при свързване."
	},

	bans = {
		banned_no_permissions = "Опит за `${reason}` без правилни разрешения.",
		fraud_chargeback = "Маменичество / Възстановяване на плащане",
		none_provided = "Нищо не е предоставено.",
		you_stopped_streaming = "Спряхте трансмисията си."
	},

	characters = {
		character_refreshed = "Изчистен персонаж.",
		something_went_wrong = "Нещо се обърка.",
		user_does_not_have_sent_character_loaded = "Потребителят няма заредените данни за изпратения герой.",
		user_has_no_character_loaded = "Потребителят няма зареден герой.",
		user_not_found = "Посоченият потребител не е намерен на сървъра.",
		invalid_character_id = "Невалиден параметър за идентификация на герой.",
		invalid_license_identifier = "Невалиден параметър за лицензна идентификация.",

		your_character_refreshed = "Вашият герой е обновен."
	},

	chat = {
		default = "По подразбиране",

		chat_group_information = "Вие бяхте добавени към група за чат. Натиснете **TAB** за превключване между наличните чат групи.\n\nСъобщения, изпратени без '/' като префикс, ще бъдат предавани на други членове на тази група."
	},

	commands = {
		command_unavailable = "Тази команда не е налична!",

		command_list = "${commands}",
		substitute_list = "${substitutes}",

		substitute_command_for = "Това е заместваща команда за `${command}`.",

		-- the "substitutes" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is substitutes will not show as suggestions in the chat
		-- if no substitutes are wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "държи",
		carry_command_help = "Превключване на режим 'държи'.",
		carry_command_substitutes = "",

		uncarry_command = "недържи",
		uncarry_command_help = "Принуждава играчът, който ви държи да ви освободи.",
		uncarry_command_substitutes = "",

		piggyback_command = "носи на рамо",
		piggyback_command_help = "Носете друг играч на рамо.",
		piggyback_command_substitutes = "",

		pick_cuffs_command = "отключи белезници",
		pick_cuffs_command_help = "Отключете себе си от белезниците с помощта на отмичалка.",
		pick_cuffs_command_substitutes = "",

		struggle_command = "боря",
		struggle_command_help = "Опитайте се да се освободите, докато някой ви носи.",
		struggle_command_substitutes = "",

		handsup_command = "ръцете",
		handsup_command_help = "Подигни ръцете си (или ги свали).",
		handsup_command_substitutes = "ръце, предайте се, ръкавица, ръцете нагоре",

		-- animations/chairs
		sit_command = "седни",
		sit_command_help = "Опитайте се да седнете на близкото столче.",
		sit_command_parameter_variation = "вариация",
		sit_command_parameter_variation_help = "Коя анимация за сядане да се изпълни (1 - 6).",
		sit_command_substitutes = "стол",

		-- animations/couches
		sleep_command = "сън",
		sleep_command_help = "Опитайте да спите на близък диван или на земята.",
		sleep_command_parameter_variation = "вариация",
		sleep_command_parameter_variation_help = "Каква анимация на съня да се изпълни (1 - 2).",
		sleep_command_substitutes = "легнете",

		couch_offset_command = "couch_offset",
		couch_offset_command_help = "Копирайте отместването до близък диван от определена модел.",
		couch_offset_command_parameter_model_name = "име на модел",
		couch_offset_command_parameter_model_name_help = "Името на модела на дивана, от който да се копира отместването.",
		couch_offset_command_substitutes = "",

		-- animations/emotes
		ragdoll_command = "разрушаване",
		ragdoll_command_help = "Превключване на разрушаването.",
		ragdoll_command_parameter_server_id = "идентификация на сървъра",
		ragdoll_command_parameter_server_id_help = "Укажете идентификация на сървъра, за да разрушите друг играч.",
		ragdoll_command_substitutes = "",

		-- animations/walkstyles
		marathon_command = "маратон",
		marathon_command_help = "Превключване на debug функцията 'маратон', за да видите кой пешир трябва да се подобри.",
		marathon_command_substitutes = "",

		-- base/admin
		report_command = "сигнализация",
		report_command_help = "Изпратете съобщение до всички активни членове на екипа.",
		report_command_parameter_message = "съобщение",
		report_command_parameter_message_help = "Съобщението, което искате да изпратите. Кратко резюме на това, което съобщавате (Пример: \"Токсуван съм, техният идентификационен номер беше...\").",
		report_command_substitutes = "сигнал",

		announce_command = "обяви",
		announce_command_help = "Излъчи обява до всички играчи.",
		announce_command_parameter_message = "съобщение",
		announce_command_parameter_message_help = "Съобщението, което искате да излъчите.",
		announce_command_substitutes = "",

		staff_pm_command = "staff_pm",
		staff_pm_command_help = "Изпратете съобщение на персонал или на играч като персонал.",
		staff_pm_command_parameter_server_id = "сървър ID",
		staff_pm_command_parameter_server_id_help = "Сървърният ID на играча, който се опитвате да изпратите съобщение.",
		staff_pm_command_parameter_message = "съобщение",
		staff_pm_command_parameter_message_help = "Съобщението, което искате да изпратите.",
		staff_pm_command_substitutes = "staffpm",

		important_staff_pm_command = "important_staff_pm",
		important_staff_pm_command_help = "Изпратете важно съобщение на играч като член на екипа.",
		important_staff_pm_command_parameter_server_id = "идентификатор на сървъра",
		important_staff_pm_command_parameter_server_id_help = "Идентификаторът на играча в сървъра, която искате да съобщите.",
		important_staff_pm_command_parameter_message = "съобщение",
		important_staff_pm_command_parameter_message_help = "Важното съобщение, което искате да изпратите.",
		important_staff_pm_command_substitutes = "!staffpm, !staff_pm",

		staff_command = "персонал",
		staff_command_help = "Излъчете съобщение до всички активни членове на персонала.",
		staff_command_parameter_message = "съобщение",
		staff_command_parameter_message_help = "Съобщението, което искате да изпратите.",
		staff_command_substitutes = "",

		wipe_command = "изтриване",
		wipe_command_help = "Изтрийте нежелани обекти от картата.",
		wipe_command_parameter_distance = "разстояние",
		wipe_command_parameter_distance_help = "Ако желаете да изтриете само обекти в определено разстояние, поставете разстоянието тук. Поставете `-1` за цялата карта.",
		wipe_command_parameter_ignore_local_entities = "игнориране на локални обекти",
		wipe_command_parameter_ignore_local_entities_help = "Игнорирайте обекти, които не са съседствуващи? Ако искате да почистите след измамник, се препоръчва да го поставите на `true` или `1`.",
		wipe_command_parameter_model_name = "име на модел",
		wipe_command_parameter_model_name_help = "Ако искате да изтриете само обекти с определено име на модел, поставете името на модела тук. В противен случай го оставете празно, на `false` или `0`. Можете също да го зададете на `vehicles`, `peds`, `objects` или `doors`.",
		wipe_command_parameter_camera = "камера",
		wipe_command_parameter_camera_help = "Използвайте координатите на камерата си вместо координатите на вашия персонаж. По подразбиране е не, `1` или `y` за да.",
		wipe_command_substitutes = "",

		noclip_command = "без колизия",
		noclip_command_help = "Превключва без колизия.",
		noclip_command_parameter_server_id = "ид на сървъра",
		noclip_command_parameter_server_id_help = "Ако искате да превключите без колизия за някого друг, поставете неговия ид на сървъра тук.",
		noclip_command_substitutes = "",

		safe_noclip_command = "без колизия в безопасност",
		safe_noclip_command_help = "Превключва без колизия, но само ако няма никой поблизо, който би могъл да ви види да го направите (изключени са членове на персонала с превключена улога на персонал).",
		safe_noclip_command_substitutes = "сноклип",

		delete_vehicle_command = "изтрий_превозно_средство",
		delete_vehicle_command_help = "Изтриване на близко превозно средство.",
		delete_vehicle_command_parameter_ignore_heading = "игнорирай насочването",
		delete_vehicle_command_parameter_ignore_heading_help = "Искате ли да игнорирате насочението на играча? Ако оставите това поле празно, ще се счита за `не`.",
		delete_vehicle_command_parameter_ignore_occupied = "игнорирай заети",
		delete_vehicle_command_parameter_ignore_occupied_help = "Искате ли да игнорирате заетите превозни средства? Ако оставите това поле празно, ще се счита за `не`.",
		delete_vehicle_command_substitutes = "иж",

		delete_vehicle_interactively_command = "delete_vehicle_interactively",
		delete_vehicle_interactively_command_help = "Превключва интерактивното изтриване на превозно средство.",
		delete_vehicle_interactively_command_substitutes = "dvi",

		kick_command = "kick",
		kick_command_help = "Изгонете играч от сървъра.",
		kick_command_parameter_server_id = "server id",
		kick_command_parameter_server_id_help = "Идентификационният номер на играча на сървъра, когото се опитвате да изгоните.",
		kick_command_parameter_reason = "причина",
		kick_command_parameter_reason_help = "Причината за изгонването на играча. Това може да бъде оставено празно.",
		kick_command_substitutes = "",

		ban_command = "бан",
		ban_command_help = "Забрани играч от сървъра.",
		ban_command_parameter_server_id = "server id",
		ban_command_parameter_server_id_help = "Идентификаторът на играча, когото искате да забраните.",
		ban_command_parameter_expire = "изтичане",
		ban_command_parameter_expire_help = "Продължителността на забраната на играча. Това може да бъде оставено празно, със стойност `0` или `false` за неопределена забрана. Можете да използвате w/d/h за продължителността. (пример: `3d2h` -> 3 дни, 2 часа)",
		ban_command_parameter_reason = "причина",
		ban_command_parameter_reason_help = "Причината за забраната на играча. Това може да бъде оставено празно.",
		ban_command_substitutes = "",

		staff_hidden_command = "команди_скрити_за_персонала",
		staff_hidden_command_help = "Превключва дали другите играчи могат да виждат вашето персонално състояние или не.",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "команда_персонално_състояние",
		staff_toggle_command_help = "Превключва вашата наличност на персонал. Ако я изключите, няма да се показват съобщения за доклади, лични съобщения и съобщения за персонал.",
		staff_toggle_command_substitutes = "",

		spawn_vehicle_command = "команда_създаване_на_превозно_средство",
		spawn_vehicle_command_help = "Създайте превозно средство.",
		spawn_vehicle_command_parameter_model_name = "име на модела",
		spawn_vehicle_command_parameter_model_name_help = "Името на модела на превозното средство, което искате да създадете.",
		spawn_vehicle_command_parameter_server_id = "идентификатор на сървъра",
		spawn_vehicle_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, за когото искате да се появи това превозно средство. Можете да оставите това празно или да го зададете като `0`, за да изберете себе си.",
		spawn_vehicle_command_substitutes = "sv",

		create_vehicle_command = "create_vehicle",
		create_vehicle_command_help = "Появява превозно средство на земята на текущото ви местоположение, без да ви съсредоточава в него.",
		create_vehicle_command_parameter_model_name = "име на модела",
		create_vehicle_command_parameter_model_name_help = "Името на модела на превозното средство, което искате да се появи.",
		create_vehicle_command_parameter_ground = "земя",
		create_vehicle_command_parameter_ground_help = "Дали пътническото превозно средство трябва да се появи на земята?",
		create_vehicle_command_substitutes = "сз",

		replace_vehicle_command = "подмяна_на_превозно_средство",
		replace_vehicle_command_help = "Заменете текущото си превозно средство с друго.",
		replace_vehicle_command_parameter_model_name = "име на модела",
		replace_vehicle_command_parameter_model_name_help = "Името на модела на превозното средство, което искате да появите.",
		replace_vehicle_command_substitutes = "пс",

		add_vehicle_command = "add_vehicle",
		add_vehicle_command_help = "Добавете превозно средство в гаража на някого.",
		add_vehicle_command_parameter_model = "модел",
		add_vehicle_command_parameter_model_help = "Името на модела или хаша на превозното средство, което искате да добавите. Ако се остави празно, ще бъде добавено превозното средство, в което се намирате в момента (включително текущите му модификации).",
		add_vehicle_command_parameter_server_id = "сървър идентификатор",
		add_vehicle_command_parameter_server_id_help = "Сървърният идентификатор на играча, на когото искате да дадете превозно средство. Ако оставите това празно, ще се изберете автоматично.",
		add_vehicle_command_substitutes = "",

		aimbot_command = "aimbot",
		aimbot_command_help = "Превключване на 'aimbot'.",
		aimbot_command_parameter_server_id = "идентификатор на сървъра",
		aimbot_command_parameter_server_id_help = "Ако искате да превключите 'aimbot' за някого друг, задайте тук техния идентификатор на сървъра.",
		aimbot_command_parameter_targets = "цели",
		aimbot_command_parameter_targets_help = "Идентификатори на целевите сървъри (работи само при превключване за вас). (Ще филтрира целите изцяло за играчи с тези идентификатори на сървъра)",
		aimbot_command_substitutes = "",

		speed_boost_command = "ускорител_на_скоростта",
		speed_boost_command_help = "Превключване на 'ускорител на скоростта'.",
		speed_boost_command_parameter_server_id = "идентификатор_на_сървъра",
		speed_boost_command_parameter_server_id_help = "Ако искате да превключите 'ускорителя на скоростта' за някой друг, посочете техния идентификатор на сървъра тук.",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "нитро_усилване",
		nitro_boost_command_help = "Превключване на 'нитро усилване'.",
		nitro_boost_command_parameter_server_id = "идентификатор_на_сървъра",
		nitro_boost_command_parameter_server_id_help = "Ако искате да превключите 'нитро усилването' за някой друг, посочете техния идентификатор на сървъра тук.",
		nitro_boost_command_substitutes = "нитро",

		indestructibility_command = "неразрушимост",
		indestructibility_command_help = "Превключете 'неразрушимост'.",
		indestructibility_command_parameter_server_id = "идентификатор на сървъра",
		indestructibility_command_parameter_server_id_help = "Ако искате да превключите 'неразрушимостта' за някой друг, поставете техния идентификатор на сървъра тук.",
		indestructibility_command_parameter_ignore_vehicle = "игнорирай превозното средство",
		indestructibility_command_parameter_ignore_vehicle_help = "Ако е зададено на `1` или `y`, това ще направи само вас неразрушими, а не и превозното средство, в което се намирате.",
		indestructibility_command_substitutes = "нер, бог, режим_бог, богрежим",

		no_nearby_vehicles_command = "няма_близки_превозни_средства",
		no_nearby_vehicles_command_help = "Превключете 'няма близки превозни средства'.",
		no_nearby_vehicles_command_parameter_server_id = "идентификатор на сървъра",
		no_nearby_vehicles_command_parameter_server_id_help = "Ако искате да превключите 'няма близки превозни средства' за някого друг, въведете неговия идентификатор на сървъра тук.",
		no_nearby_vehicles_command_substitutes = "",

		job_command = "работа",
		job_command_help = "Актуализирайте работата на някого, базирана на търсене.",
		job_command_parameter_server_id = "идентификатор на сървъра",
		job_command_parameter_server_id_help = "Идентификаторът на играча на сървъра или 0, за да изберете себе си.",
		job_command_parameter_search = "търсене",
		job_command_parameter_search_help = "Работата / отделът / позицията или част от него, които искате да потърсите, или `none`, за да премахнете работата.",
		job_command_substitutes = "",

		reset_job_command = "reset_job",
		reset_job_command_help = "Нулира работата на някого до безработен.",
		reset_job_command_parameter_server_id = "идентификатор на сървъра",
		reset_job_command_parameter_server_id_help = "Идентификаторът на играча от сървъра или 0, за да изберете себе си.",
		reset_job_command_substitutes = "",

		watching_command = "наблюдаване",
		watching_command_help = "Показва ви всички играчи, които са в близост и се наблюдават.",
		watching_command_substitutes = "",

		disable_recoil_command = "изключване_на_откат",
		disable_recoil_command_help = "Изключва отката на всички оръжия.",
		disable_recoil_command_substitutes = "",

		infinite_ammo_command = "безкраен_амуниция",
		infinite_ammo_command_help = "Превключва безкраен режим на амуниция.",
		infinite_ammo_command_substitutes = "",

		trigger_headache_command = "предизвикай_главоболие",
		trigger_headache_command_help = "Предизвиква краткотрайно забавяне за определен играч.",
		trigger_headache_command_parameter_server_id = "идентификатор на сървъра",
		trigger_headache_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, за когото искате да предизвикате главоболие.",
		trigger_headache_command_substitutes = "главоболие",

		super_jump_command = "супер_скок",
		super_jump_command_help = "Превключва вашия супер-скок.",
		super_jump_command_substitutes = "",

		spawn_command = "спаун",
		spawn_command_help = "Телепортира ви до стафа кулата.",
		spawn_command_substitutes = "",

		stick_command = "залепи",
		stick_command_help = "Да се залепите за автомобила, на който сте.",
		stick_command_substitutes = "",

		unstick_command = "разлепи",
		unstick_command_help = "Да се разлепите от автомобила, към който сте привързани.",
		unstick_command_substitutes = "",

		clean_ped_command = "почисти_пед",
		clean_ped_command_help = "Почиства кръвта, експлозии, мръсотия и т.н. от персонажа.",
		clean_ped_command_parameter_server_id = "идентификатор на сървъра",
		clean_ped_command_parameter_server_id_help = "Идентификаторът на играча, чието лице искате да почистите.",
		clean_ped_command_substitutes = "",

		toggle_vehicle_smoke_command = "превключи_кола_дим",
		toggle_vehicle_smoke_command_help = "Превключи 'дим на колата'.",
		toggle_vehicle_smoke_command_parameter_server_id = "идентификатор на сървъра",
		toggle_vehicle_smoke_command_parameter_server_id_help = "Ако искате да превключите 'дим на колата' за някого друг, поставете неговия идентификатор на сървъра тук.",
		toggle_vehicle_smoke_command_parameter_color_r = "цвят r",
		toggle_vehicle_smoke_command_parameter_color_r_help = "Стойността на червената цветова компонента на дима (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_g = "цветова компонента g",
		toggle_vehicle_smoke_command_parameter_color_g_help = "Стойността на зелената цветова компонента на дима (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_b = "цветова компонента b",
		toggle_vehicle_smoke_command_parameter_color_b_help = "Стойността на синята цветова компонента на дима (0 - 255).",
		toggle_vehicle_smoke_command_substitutes = "vehicle_smoke, smoke",

		speed_up_progress_bar_command = "speed_up_progress_bar",
		speed_up_progress_bar_command_help = "Превключете 'Ускорете прогреса на лентата'.",
		speed_up_progress_bar_command_parameter_server_id = "идентификатор на сървъра",
		speed_up_progress_bar_command_parameter_server_id_help = "Ако искате да включите/изключите 'Ускорете прогреса на лентата' за някой друг, въведете техния идентификатор на сървъра тук.",
		speed_up_progress_bar_command_substitutes = "ускори",

		add_cash_command = "добави_пари",
		add_cash_command_help = "Добавете пари към персонажа на някого.",
		add_cash_command_parameter_amount = "сума",
		add_cash_command_parameter_amount_help = "Сумата пари, които искате да дадете на играча.",
		add_cash_command_parameter_server_id = "идентификатор на сървъра",
		add_cash_command_parameter_server_id_help = "Идентификаторът на играча на сървъра. Ако остане празно, автоматично се избира вашият идентификатор.",
		add_cash_command_substitutes = "",

		remove_cash_command = "remove_cash",
		remove_cash_command_help = "Премахване на пари от героя на някого.",
		remove_cash_command_parameter_amount = "сума",
		remove_cash_command_parameter_amount_help = "Сумата пари, която искате да премахнете от играча.",
		remove_cash_command_parameter_server_id = "идентификатор на сървъра",
		remove_cash_command_parameter_server_id_help = "Идентификаторът на играча на сървъра. Ако остане празно, автоматично се избира вашият идентификатор.",
		remove_cash_command_substitutes = "",

		add_bank_command = "добави_банка",
		add_bank_command_help = "Добавете банков баланс на герой на някого.",
		add_bank_command_parameter_amount = "сума",
		add_bank_command_parameter_amount_help = "Сумата на банковия баланс, която искате да дадете на играча.",
		add_bank_command_parameter_server_id = "идентификационен номер на сървъра",
		add_bank_command_parameter_server_id_help = "Идентификационният номер на играча на сървъра. Ако оставите празно, автоматично се избира вашият собствен.",
		add_bank_command_substitutes = "",

		remove_bank_command = "премахни_банка",
		remove_bank_command_help = "Премахнете банковия баланс от герой на някого.",
		remove_bank_command_parameter_amount = "количество",
		remove_bank_command_parameter_amount_help = "Количеството пари, което искате да премахнете от банковия баланс на играча.",
		remove_bank_command_parameter_server_id = "идентификатор на сървъра",
		remove_bank_command_parameter_server_id_help = "Идентификаторът на сървъра на играча. Ако е оставено празно, автоматично ще бъде избрана вашата идентификация.",
		remove_bank_command_substitutes = "",

		spawn_item_command = "spawn_item",
		spawn_item_command_help = "Използва се за създаване на предмети.",
		spawn_item_command_parameter_item_name = "име на предмет",
		spawn_item_command_parameter_item_name_help = "Името на предмета, който искате да създадете. Това трябва да бъде *името на предмета*, и така неговата етикет(и) няма да работи.",
		spawn_item_command_parameter_amount = "amount",
		spawn_item_command_parameter_amount_help = "Количество на елемента, който искате да се създаде. Ако остане празно, ще бъде избрано един.",
		spawn_item_command_parameter_server_id = "server id",
		spawn_item_command_parameter_server_id_help = "Сървърният идентификатор на играча, за когото искате да се създаде елемента. Ако остане празно, ще бъдете избрани вие.",
		spawn_item_command_parameter_battle_royale_only = "само Battle Royale",
		spawn_item_command_parameter_battle_royale_only_help = "Направете този елемент само за режима Battle Royale.",
		spawn_item_command_substitutes = "si",

		warning_message_command = "komanda_zabravleno",
		warning_message_command_help = "Добавете глобално съобщение за сървъра за всички играчи.",
		warning_message_command_parameter_message = "съобщение",
		warning_message_command_parameter_message_help = "Съобщението, което искате да се показва на играчите. Можете да оставите този параметър празен, за да премахнете предупредителното съобщение.",
		warning_message_command_substitutes = "",

		tp_coords_command = "tp_coords",
		tp_coords_command_help = "Телепортиране до определени координати.",
		tp_coords_command_parameter_x = "x",
		tp_coords_command_parameter_x_help = "X координата, на която искате да се телепортирате.",
		tp_coords_command_parameter_y = "y",
		tp_coords_command_parameter_y_help = "Y координата, на която искате да се телепортирате.",
		tp_coords_command_parameter_z = "z",
		tp_coords_command_parameter_z_help = "Z координата, на която искате да се телепортирате. Този параметър е опционален и, ако остане празен, ще бъдат търсени автоматично координатите на земята.",
		tp_coords_command_parameter_w = "з",
		tp_coords_command_parameter_w_help = "Kоординатата W или посоката, до която искате да се телепортирате. Този параметър е опционален и ако остане празен, ще се използва текущата ви посока.",
		tp_coords_command_substitutes = "tpc",

		tp_waypoint_command = "tp_waypoint",
		tp_waypoint_command_help = "Телепортирайте се до зададената точка на интерес.",
		tp_waypoint_command_substitutes = "tp_marker, tp",

		show_all_evidence_command = "show_all_evidence",
		show_all_evidence_command_help = "Показва всички близките доказателства, като кутии с куршуми.",
		show_all_evidence_command_substitutes = "all_evidence, show_evidence, evidence",

		population_density_command = "population_density",
		population_density_command_help = "Променя глобалния множител на населеността.",
		population_density_command_parameter_multiplier = "multiplier",
		population_density_command_parameter_multiplier_help = "Множител на населеността, който желаете да зададете. Ако оставите това поле празно, ще бъде изключен. Валидни стойности са от 0.0 до 1.0.",
		population_density_command_substitutes = "население, плътност, народност",

		repair_vehicle_command = "ремонтиране_на_превозното_средство",
		repair_vehicle_command_help = "Ремонтира превозното средство, в което се намирате.",
		repair_vehicle_command_substitutes = "поправете",

		enter_vehicle_command = "присъединете_към_превозното_средство",
		enter_vehicle_command_help = "Принуждава играча ви да се присъедини към превозното средство, до което сте най-близо (ще ви изведе от превозното средство, ако вече сте в него).",
		enter_vehicle_command_parameter_network_id = "идентификационен номер на мрежата",
		enter_vehicle_command_parameter_network_id_help = "Идентификационен номер на мрежата на превозното средство, което искате да присъедините. (по избор)",
		enter_vehicle_command_substitutes = "ЕВ",

		set_modification_command = "set_modification",
		set_modification_command_help = "Задаване на модификации на превозното средство, в което се намирате.",
		set_modification_command_parameter_mod_type = "тип на модификация",
		set_modification_command_parameter_mod_type_help = "Идентификационен номер на желания тип модификация.",
		set_modification_command_parameter_mod_index = "индекс на модификация",
		set_modification_command_parameter_mod_index_help = "Идентификационен номер на желаната модификация.",
		set_modification_command_parameter_custom_tires = "специални гуми",
		set_modification_command_parameter_custom_tires_help = "Персонализирани гуми?",
		set_modification_command_substitutes = "пм",

		set_livery_command = "set_livery",
		set_livery_command_help = "Задаване на дизайна на превозното средство, в което се намирате.",
		set_livery_command_parameter_livery_index = "индекс на дизайна",
		set_livery_command_parameter_livery_index_help = "Индексът на дизайна, който искате да зададете.",
		set_livery_command_substitutes = "",

		set_fake_plate_command = "set_fake_plate",
		set_fake_plate_command_help = "Задаване на фалшивия номерен знак на превозното средство, в което се намирате.",
		set_fake_plate_command_parameter_plate_number = "номер на номерната табела",
		set_fake_plate_command_parameter_plate_number_help = "Номерът на номерната табела, който искате да зададете.",
		set_fake_plate_command_substitutes = "табела",

		set_dirt_level_command = "задай_ниво_на_замърсяване",
		set_dirt_level_command_help = "Почиства превозното средство, в което се намирате.",
		set_dirt_level_command_parameter_dirt_level = "ниво на замърсяване",
		set_dirt_level_command_parameter_dirt_level_help = "Нивото на замърсяване, което искате да зададете (между 0 и 15).",
		set_dirt_level_command_substitutes = "сз",

		player_info_command = "информация_за_играча",
		player_info_command_help = "Връща информация за определен играч.",
		player_info_command_parameter_server_id = "сървър идентификатор",
		player_info_command_parameter_server_id_help = "Сървърният идентификатор на играча, за когото искате информация. Ако остане празно, ще бъде избран вашият идентификатор.",
		player_info_command_substitutes = "играч, инфоиг",

		inventory_command = "инвентар",
		inventory_command_help = "Отваря определен инвентар.",
		inventory_command_parameter_inventory_name = "име на инвентара",
		inventory_command_parameter_inventory_name_help = "Името на инвентара, който искате да отворите.",
		inventory_command_substitutes = "",

		character_inventory_command = "character_inventory",
		character_inventory_command_help = "ви показва инвентара на друг играч.",
		character_inventory_command_parameter_server_id = "сървърният идентификатор",
		character_inventory_command_parameter_server_id_help = "Сървърният идентификатор на играча.",
		character_inventory_command_substitutes = "джобове",

		fake_disconnect_command = "fake_disconnect",
		fake_disconnect_command_help = "Активира серия от събития, за да се стори, че сте се отключили от сървъра. Това също ще активира noclip, ако вече не е включен.",
		fake_disconnect_command_substitutes = "фалшиво_изход, ИК",

		set_identity_command = "задай_личност",
		set_identity_command_help = "Променя вашето име в играта.",
		set_identity_command_parameter_player_name = "име на играча",
		set_identity_command_parameter_player_name_help = "Името, което искате да зададете или празно за нулиране.",
		set_identity_command_substitutes = "личност",

		disable_idle_cam_command = "изключи_мирната_камера",
		disable_idle_cam_command_help = "Изключва активирането на мирната камера.",
		disable_idle_cam_command_substitutes = "изключи_мирна, мирна",

		auto_drive_command = "авто_кормило",
		auto_drive_command_help = "Автоматично ви шофира до зададена точка или шофира произволно, ако няма зададена такава.",
		auto_drive_command_parameter_style = "стил",
		auto_drive_command_parameter_style_help = "Стил на шофиране (нормално, бързо, безразсъдно, задно шофиране).",
		auto_drive_command_substitutes = "",

		drive_speed_command = "скорост_на_шофиране",
		drive_speed_command_help = "Задайте пътна скорост за командата за автоматично шофиране.",
		drive_speed_command_parameter_speed = "скорост",
		drive_speed_command_parameter_speed_help = "Желаната скорост (в мили на час).",
		drive_speed_command_substitutes = "",

		toggle_weapon_attachment_command = "preklyuchi_prilozhenie_na_oryzhiye",
		toggle_weapon_attachment_command_help = "Preklyuchva prilozhenie na oryzhiye za oryzhiyeto, koeto momentalno durzhite.",
		toggle_weapon_attachment_command_parameter_attachment = "prilozhenie",
		toggle_weapon_attachment_command_parameter_attachment_help = "Prilozhenieto, koeto iskate da preklyuchite.",
		toggle_weapon_attachment_command_substitutes = "preklyuchi_prilozhenie_oruzhiye, preklyuchi_prilozhenie",

		set_weapon_tint_command = "zaday_tint_na_oruzhiye",
		set_weapon_tint_command_help = "Zadava ili premahva tinta na oruzhiyeto, koeto momentalno durzhite.",
		set_weapon_tint_command_parameter_tint = "отенът",
		set_weapon_tint_command_parameter_tint_help = "Отенът, който искате да зададете (оставете празно, за да го премахнете).",
		set_weapon_tint_command_substitutes = "отенка_на_оръжие, отенът",

		set_item_name_override_command = "set_item_name_override",
		set_item_name_override_command_help = "Задава или премахва презаписването на името на артикула.",
		set_item_name_override_command_parameter_slot = "слот",
		set_item_name_override_command_parameter_slot_help = "Номерът на слота на артикула, на който искате да презапишете името.",
		set_item_name_override_command_parameter_item_name = "име на предмета",
		set_item_name_override_command_parameter_item_name_help = "Името на предмета, което искате да замените (оставете празно за премахване).",
		set_item_name_override_command_substitutes = "set_name_override, name_override",

		set_durability_command = "set_durability",
		set_durability_command_help = "Задава издръжливостта на всички предмети в определен слот.",
		set_durability_command_parameter_slot = "слот",
		set_durability_command_parameter_slot_help = "В кой слот да се зададе издръжливостта на предметите.",
		set_durability_command_parameter_amount = "количество",
		set_durability_command_parameter_amount_help = "Количество на здравината, което да се зададе (по подразбиране е 100).",
		set_durability_command_substitutes = "здравина",

		set_metadata_command = "задай_метаданни",
		set_metadata_command_help = "Задава всички метаданни на предметите в определен слот.",
		set_metadata_command_parameter_slot = "слот",
		set_metadata_command_parameter_slot_help = "Кой слот да се настрои здравината на предметите.",
		set_metadata_command_parameter_metadata = "метаданни",
		set_metadata_command_parameter_metadata_help = "JSON метаданни за задаване.",
		set_metadata_command_substitutes = "метаданни",

		refill_nitro_command = "пълнене_на_нитро",
		refill_nitro_command_help = "Пълни нитро резервоара на колата ви.",
		refill_nitro_command_substitutes = "",

		register_weapon_command = "регистрирай_оръжие",
		register_weapon_command_help = "Регистрира определено оръжие в определен слот за определен персонален идентификатор.",
		register_weapon_command_parameter_slot = "слот",
		register_weapon_command_parameter_slot_help = "Слотът, в който се намира оръжието.",
		register_weapon_command_parameter_character_id = "персонален идентификатор",
		register_weapon_command_parameter_character_id_help = "Персоналният идентификатор на персонажа, на който искате да регистрирате оръжието.",
		register_weapon_command_parameter_no_job = "без работа",
		register_weapon_command_parameter_no_job_help = "Премахване на ограничението за работа от оръжието. По подразбиране е не, `1` или `y` за да.",
		register_weapon_command_substitutes = "",

		advanced_metagame_command = "advanced_metagame",
		advanced_metagame_command_help = "Суперадмин команда, която ви помага да развиете метагеймингът си на следващо ниво.",
		advanced_metagame_command_substitutes = "am",

		list_weapon_attachments_command = "list_weapon_attachments",
		list_weapon_attachments_command_help = "Задава или премахва окраската на оръжието, което държите в момента.",
		list_weapon_attachments_command_substitutes = "weapon_attachments, attachments",

		wipe_first_owned_command = "wipe_first_owned",
		wipe_first_owned_command_help = "Изтрива всички обекти, притежание на определен играч.",
		wipe_first_owned_command_parameter_server_id = "идентификатор на сървъра",
		wipe_first_owned_command_parameter_server_id_help = "Идентификаторът на играча от сървъра.",
		wipe_first_owned_command_parameter_range = "обхват",
		wipe_first_owned_command_parameter_range_help = "Обхватът, в който искате да изтриете обекти или оставете празно, за да изтриете всички.",
		wipe_first_owned_command_substitutes = "",

		freeze_command = "замрази",
		freeze_command_help = "Замразява играч.",
		freeze_command_parameter_server_id = "идентификатор на сървъра",
		freeze_command_parameter_server_id_help = "Идентификаторът на играча, когото искате да замразите.",
		freeze_command_substitutes = "",

		unfreeze_command = "размрази",
		unfreeze_command_help = "Размразява играч.",
		unfreeze_command_parameter_server_id = "идентификатор на сървъра",
		unfreeze_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, когото искате да размразите.",
		unfreeze_command_substitutes = "",

		slap_command = "хлапни",
		slap_command_help = "Хлапва играч (ги убива).",
		slap_command_parameter_server_id = "идентификатор на сървъра",
		slap_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, когото искате да хлапнете.",
		slap_command_substitutes = "убий",

		damage_player_command = "пошкоди_играча",
		damage_player_command_help = "Пошкодете здравето на играча.",
		damage_player_command_parameter_server_id = "идентификатор на сървъра",
		damage_player_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, когото искате да накърните.",
		damage_player_command_parameter_health = "накърняване",
		damage_player_command_parameter_health_help = "Количеството накърняване, което искате да причините.",
		damage_player_command_substitutes = "накърняване",

		scoop_command = "скупяване",
		scoop_command_help = "Скупява всички играчи в определен радиус. (За да се използва с /разскупяване)",
		scoop_command_parameter_radius = "радиус",
		scoop_command_parameter_radius_help = "В какъв радиус искате да скупите играчите (2D).",
		scoop_command_substitutes = "",

		unscoop_command = "spusti",
		unscoop_command_help = "Телепортира всички играчи, които сте преди това превъртели, на вашата текуща позиция.",
		unscoop_command_parameter_revive = "съживяване",
		unscoop_command_parameter_revive_help = "Съживява превъртелени играчи, ако са вдигнати.",
		unscoop_command_substitutes = "",

		peek_command = "погледни",
		peek_command_help = "Погледни ще покаже всички невидими играчи около вас (включително вас).",
		peek_command_substitutes = "",

		hit_indicator_command = "показалец_за_удар",
		hit_indicator_command_help = "Превключва показалеца за удар, ако използвате персонализиран кръст. ",
		hit_indicator_command_substitutes = "",

		trigger_ems_call_command = "извика служител от спешна помощ",
		trigger_ems_call_command_help = "изпраща местно обаждане за спешна помощ от вашата позиция.",
		trigger_ems_call_command_substitutes = "",

		-- base/anti_cheat
		model_detect_add_command = "model_detect_add",
		model_detect_add_command_help = "Временно добавя модел към списъка за откриване. Списъкът се нулира при рестартиране на сървъра.",
		model_detect_add_command_parameter_model = "model",
		model_detect_add_command_parameter_model_help = "Моделът, който искате да бъде открит. Може да бъде както име на модел, така и код на модела.",
		model_detect_add_command_substitutes = "detect",

		model_detect_remove_command = "премахни_откриване_на_модел",
		model_detect_remove_command_help = "Премахни модел от списъка за откриване.",
		model_detect_remove_command_parameter_model = "модел",
		model_detect_remove_command_parameter_model_help = "Моделът, който искате да премахнете. Може да бъде име на модел и моделен хеш.",
		model_detect_remove_command_substitutes = "спри_откриване",

		detection_area_add_command = "добави_зона_за_откриване",
		detection_area_add_command_help = "Създайте зона, в която всички създадени обекти в тази зона ще бъдат изпратени до вас с някои информации. Информацията може да бъде намерена в интерфейса за преглед.",
		detection_area_add_command_parameter_radius = "радиус",
		detection_area_add_command_parameter_radius_help = "Радиусът на кръга, в който ще се детектира обектите. Минималната стойност е `10`, а максималната е `5000`. Ако оставите това поле празно, ще се използва стойността по подразбиране, която е `100`.",
		detection_area_add_command_substitutes = "област_добави",

		detection_area_remove_command = "област_премахни",
		detection_area_remove_command_help = "Премахване на област за детекция.",
		detection_area_remove_command_parameter_area_id = "идентификатор_на_област",
		detection_area_remove_command_parameter_area_id_help = "Идентификаторът на зоната за откриване, която желаете да премахнете.",
		detection_area_remove_command_substitutes = "remove_area",

		screen_text_debug_command = "screen_text_debug",
		screen_text_debug_command_help = "Отстраняване на проблеми с текста на екрана на изключени правоъгълници.",
		screen_text_debug_command_substitutes = "screen_text",

		anti_cheat_strict_mode_command = "anti_cheat_strict_mode",
		anti_cheat_strict_mode_command_help = "Превключване на строгия режим на анти-измамата, като стане по-агресивен. Това най-вероятно ще доведе до повече грешно положителни резултати.",
		anti_cheat_strict_mode_command_substitutes = "",

		-- base/commands
		help_command = "помощ",
		help_command_help = "Показване на всички налични команди.",
		help_command_substitutes = "",

		substitutes_command = "замести",
		substitutes_command_help = "Показване на всички налични заместители.",
		substitutes_command_substitutes = "",

		-- base/discord
		richer_presence_command = "по-подробен присъствие",
		richer_presence_command_help = "Превключване на 'по-подробното присъствие', което добавя допълнителна информация към присъствието, като зареден герой.",
		richer_presence_command_substitutes = "",

		-- base/emojis
		emojis_list_command = "списък_с_емоджита",
		emojis_list_command_help = "Изброяване на всички налични емоджита.",
		emojis_list_command_substitutes = "емоджита",

		emojis_refresh_command = "обнови_емоджита",
		emojis_refresh_command_help = "Презаредете наличните емотикони. Това ще изтегли най-новия списък от дискорд сървъра.",
		emojis_refresh_command_substitutes = "",

		-- base/ping
		get_pings_command = "get_pings",
		get_pings_command_help = "Вземете средното време на отговор от различни сървъри по света, за да намерите най-подходящото местоположение за този сървър.",
		get_pings_command_substitutes = "",

		-- base/profile
		profile_debug_command = "profile_debug",
		profile_debug_command_help = "Превключвател за профилния дебъгер.",
		profile_debug_command_substitutes = "",

		remove_twitch_ban_exception_command = "премахни_twitch_изключение_за_забрана",
		remove_twitch_ban_exception_command_help = "Премахнете изключение от забрана на играч от Twitch.",
		remove_twitch_ban_exception_command_parameter_server_id = "идентификатор на сървъра",
		remove_twitch_ban_exception_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, от когото искате да премахнете изключение.",
		remove_twitch_ban_exception_command_substitutes = "",

		-- base/users
		playtime_command = "playtime",
		playtime_command_help = "Проверете общото време за игра на сървъра, както и времето за игра в текущата сесия.",
		playtime_command_parameter_server_id = "Идентификатор на сървъра",
		playtime_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, за когото искате да разберете игровото време. Можете да оставите празно или да го зададете на `0`, за да изберете себе си.",
		playtime_command_substitutes = "",

		leaderboard_command = "таблица с резултати",
		leaderboard_command_help = "Проверете таблицата с резултати за игровото време.",
		leaderboard_command_substitutes = "",

		package_command = "пакет",
		package_command_help = "Проверете и обновете вашия пакет.",
		package_command_substitutes = "обнови_пакет",

		player_packages_command = "игрални пакети",
		player_packages_command_help = "Вземете всички вашите неизползвани 'игрални пакети'.",
		player_packages_command_substitutes = "",

		unload_character_command = "изгрузи_персонаж",
		unload_character_command_help = "Изгрузете персонажа на играч.",
		unload_character_command_parameter_server_id = "server id",
		unload_character_command_parameter_server_id_help = "Server ID на играча, на когото искате да изгрузите персонажа. Можете да оставите това празно или да го зададете на `0`, за да изберете себе си.",
		unload_character_command_parameter_message = "съобщение",
		unload_character_command_parameter_message_help = "Ако искате да покажете съобщение, което играчът да види в менюто за влизане в играта, напишете го тук.",
		unload_character_command_substitutes = "unload",

		-- game/admin_menu
		admin_command = "admin",
		admin_command_help = "Отваря администраторското меню.",
		admin_command_substitutes = "",

		tp_player_command = "tp_player",
		tp_player_command_help = "Телепортва ви до играч.",
		tp_player_command_parameter_server_id = "server id",
		tp_player_command_parameter_server_id_help = "Сървърният идентификатор на играча, до когото искате да се телепортирате.",
		tp_player_command_substitutes = "",

		tp_here_command = "tp_here",
		tp_here_command_help = "Телепортира играч до вас.",
		tp_here_command_parameter_server_id = "server id",
		tp_here_command_parameter_server_id_help = "Сървърният идентификатор на играча, когото искате да телепортирате.",
		tp_here_command_substitutes = "",

		tp_to_command = "tp_to",
		tp_to_command_help = "Телепортира играч до друг играч.",
		tp_to_command_parameter_source_id = "идентификатор източник",
		tp_to_command_parameter_source_id_help = "Играчът, когото искате да телепортирате.",
		tp_to_command_parameter_destination_id = "идентификатор на местоназначение",
		tp_to_command_parameter_destination_id_help = "Играчът, до когото искате да се телепортирате.",
		tp_to_command_substitutes = "",

		-- game/airdrops
		create_airdrop_command = "create_airdrop",
		create_airdrop_command_help = "Създава въздушна доставка.",
		create_airdrop_command_parameter_airdrop_type = "тип на въздушната доставка",
		create_airdrop_command_parameter_airdrop_type_help = "Типът на аерозабраняването, което искате да създадете. (оръжия, наркотици, медицински материали, принадлежности, стоки, ценности, храна)",
		create_airdrop_command_parameter_item_amount = "количество на артикула",
		create_airdrop_command_parameter_item_amount_help = "Количеството на артикулите, които аерозабраняването трябва да съдържа.",
		create_airdrop_command_substitutes = "",

		create_airdrop_custom_command = "create_airdrop_custom",
		create_airdrop_custom_command_help = "Създайте аерозабраняване с персонализирани съдържание.",
		create_airdrop_custom_command_parameter_items = "артикули",
		create_airdrop_custom_command_parameter_items_help = "Низ съдържащ списък с предмети и количеството им. Низът трябва да изглежда като 'зелено ябълко:5,хамбургер:3'.",
		create_airdrop_custom_command_substitutes = "",

		-- game/airstrike
		call_airstrike_command = "call_airstrike",
		call_airstrike_command_help = "Извиква авиоудар върху вашата текуща позиция.",
		call_airstrike_command_substitutes = "",

		-- game/airsupport
		airsupport_command = "airsupport",
		airsupport_command_help = "Извиква въздушна поддръжка.",
		airsupport_command_substitutes = "",

		-- game/archives
		create_archive_command = "create_archive",
		create_archive_command_help = "Създава нов случай в архива, в който в момента сте най-близо.",
		create_archive_command_parameter_case_number = "номер на дело",
		create_archive_command_parameter_case_number_help = "Номер на делото (цяло число между 1 и 99 999).",
		create_archive_command_substitutes = "",

		destroy_archive_command = "унищожи_дело",
		destroy_archive_command_help = "Унищожава съществуващо дело в архива, в който в момента стоите най-близо.",
		destroy_archive_command_parameter_case_number = "номер на дело",
		destroy_archive_command_parameter_case_number_help = "Номер на делото. (Можете да унищожите само празни дела)",
		destroy_archive_command_substitutes = "",

		-- game/arena
		respawn_command = "респаун",
		respawn_command_help = "Умри. (в играта) (само за арена)",
		respawn_command_substitutes = "самоубийство",

		arena_menu_command = "arena_menu",
		arena_menu_command_help = "Превключете активирането на менюто на Арената.",
		arena_menu_command_substitutes = "арена",

		-- game/audio
		audio_debug_command = "audio_debug",
		audio_debug_command_help = "Превключете аудио дебъга.",
		audio_debug_command_substitutes = "",

		play_audio_command = "play_audio",
		play_audio_command_help = "Възпроизвеждане на звук за един играч или всички играчи.",
		play_audio_command_parameter_url = "url",
		play_audio_command_parameter_url_help = "URL адресът за изтегляне на аудио файла.",
		play_audio_command_parameter_volume = "сила на звука",
		play_audio_command_parameter_volume_help = "Ниво на звука, на което аудиото трябва да се възпроизведе. Валидните стойности варират от `0` до `1`. Тази стойност ще бъде зададена по подразбиране на `0.1`.",
		play_audio_command_parameter_server_id = "идентификатор на сървъра",
		play_audio_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, за когото искате да се възпроизведе това аудио. Можете да използвате `-1` за всички играчи.",
		play_audio_command_substitutes = "",

		-- game/bandaids
		random_bandaid_command = "случаен_пластир",
		random_bandaid_command_help = "Дава ви случаен пластир. :)",
		random_bandaid_command_substitutes = "синджиродържатели",

		-- game/battle_royale
		battle_royale_toggle_command = "battle_royale_превключване",
		battle_royale_toggle_command_help = "Превключване на функцията Battle Royale.",
		battle_royale_toggle_command_substitutes = "br_превключване",

		battle_royale_start_command = "battle_royale_старт",
		battle_royale_start_command_help = "Стартиране на мач Battle Royale.",
		battle_royale_start_command_parameter_no_vehicles = "без превозни средства",
		battle_royale_start_command_parameter_no_vehicles_help = "Създаване на мач без превозни средства.",
		battle_royale_start_command_substitutes = "br_start",

		battle_royale_invite_command = "battle_royale_invite",
		battle_royale_invite_command_help = "Поканете играч в своя Battle Royale лоби.",
		battle_royale_invite_command_parameter_server_id = "идентификатор на сървъра",
		battle_royale_invite_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, когото искате да поканите.",
		battle_royale_invite_command_substitutes = "br_invite",

		battle_royale_join_command = "battle_royale_join",
		battle_royale_join_command_help = "Присъединете се към Battle Royale лобито на играч.",
		battle_royale_join_command_parameter_server_id = "идентификатор_на_сървъра",
		battle_royale_join_command_parameter_server_id_help = "Идентификаторът на сървъра, към който искате да се присъедините.",
		battle_royale_join_command_substitutes = "br_join",

		battle_royale_leave_command = "battle_royale_leave",
		battle_royale_leave_command_help = "Напуснете Battle Royale лобито, в което се намирате.",
		battle_royale_leave_command_substitutes = "br_leave",

		battle_royale_join_instance_command = "battle_royale_join_instance",
		battle_royale_join_instance_command_help = "Присъединете се към Battle Royale инстанцията на играч.",
		battle_royale_join_instance_command_parameter_server_id = "идентификатор на сървъра",
		battle_royale_join_instance_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, който искате да се присъедините към инстанцията.",
		battle_royale_join_instance_command_substitutes = "br_join_instance",

		battle_royale_leave_instance_command = "battle_royale_leave_instance",
		battle_royale_leave_instance_command_help = "Напуснете инстанцията, към която сте се присъединили.",
		battle_royale_leave_instance_command_substitutes = "br_leave_instance",

		-- game/beds
		bed_command = "легло",
		bed_command_help = "Опитайте да легнете в най-близката легла.",
		bed_command_substitutes = "",

		-- game/bills
		create_bill_command = "create_bill",
		create_bill_command_help = "Фактурирайте определена сума пари на друг играч.",
		create_bill_command_substitutes = "bill, bill_player",

		-- game/bombs
		toggle_bombs_command = "toggle_bombs",
		toggle_bombs_command_help = "Превключва бомбите на вашия текущ самолет.",
		toggle_bombs_command_substitutes = "",

		toggle_ignition_bomb_command = "toggle_ignition_bomb",
		toggle_ignition_bomb_command_help = "Превключва запалка бомба за превозното средство, в което се намирате (превозното средство ще избухне, когато се включи двигателът).",
		toggle_ignition_bomb_command_substitutes = "запалване_бомба",

		-- game/boomboxes
		wipe_boomboxes_command = "изтрий_бумбокси",
		wipe_boomboxes_command_help = "Изтриване на бумбоксите.",
		wipe_boomboxes_command_parameter_radius = "радиус",
		wipe_boomboxes_command_parameter_radius_help = "Радиусът на изтриването. Ако оставите това поле празно, ще се избере автоматично `100`. Валидни стойности са над `0`, както и `0` и `-1`, които ще изберат всички инвентари.",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "покажи_бумбокси",
		draw_boomboxes_command_help = "Покажи бумбоксите.",
		draw_boomboxes_command_substitutes = "",

		-- game/boosting
		spawn_contract_command = "спавни_договор",
		spawn_contract_command_help = "Появяване на договор за увеличаване на равнището.",
		spawn_contract_command_parameter_server_id = "идентификатор на сървъра",
		spawn_contract_command_parameter_server_id_help = "Идентификаторът на сървъра, за който искате да появите договор. Ако оставите празно, ще се избере автоматично вашият идентификатор.",
		spawn_contract_command_substitutes = "",

		-- game/buddy_pass
		buddy_pass_command = "buddy_pass",
		buddy_pass_command_help = "Отваря интерфейса на buddy pass.",
		buddy_pass_command_substitutes = "",

		-- game/cache
		cache_assets_command = "cache_assets",
		cache_assets_command_help = "Задължително поискайте и свалете най-многото стриймнати активи (превозни средства, обекти и облекла). Това не се препоръчва, освен ако нямате бързо връзка и активите не се изтеглят достатъчно бързо при нужда, за да бъдат плавни. Това може също да причини сривове на клиента, докато е в активност.",
		cache_assets_command_parameter_slow_download = "бавно сваляне",
		cache_assets_command_parameter_slow_download_help = "Искате ли да кеширате активите бавно? Това ще отнеме повече време, но също така ще намали шанса за сриване.",
		cache_assets_command_substitutes = "download_cache, preload_cache, load_cache",

		cache_join_toggle_command = "cache_join_toggle",
		cache_join_toggle_command_help = "Превключете автоматичното кеширане на някои активи веднага след като се присъедините към сървъра.",
		cache_join_toggle_command_substitutes = "",

		-- game/camera
		stable_cam_command = "stable_cam",
		stable_cam_command_help = "Превключва стабилната камера.",
		stable_cam_command_substitutes = "",

		-- game/cargo
		cargo_start_command = "cargo_start",
		cargo_start_command_help = "Започни световната грабежна операция Cargo.",
		cargo_start_command_substitutes = "start_cargo",

		cargo_end_command = "cargo_end",
		cargo_end_command_help = "Завърши световната грабежна операция Cargo.",
		cargo_end_command_substitutes = "end_cargo",

		cargo_debug_command = "cargo_debug",
		cargo_debug_command_help = "Превключва режима дебъг на Cargo.",
		cargo_debug_command_substitutes = "",

		cargo_debug_peds_command = "cargo_debug_peds",
		cargo_debug_peds_command_help = "Превключва режима дебъг на пешеходците в Cargo.",
		cargo_debug_peds_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "задай_екраните_на_казино",
		set_casino_screens_command_help = "Задайте екраните на казиното.",
		set_casino_screens_command_parameter_screen_label = "етикет на екрана",
		set_casino_screens_command_parameter_screen_label_help = "Етикетът на екрана, който искате да зададете. Наличните етикети на екраните са `diamonds` (диаманти), `skulls` (черепи), `snowflakes` (снежинки) и `winner` (печеливш).",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "превключи_кайо_перико",
		toggle_cayo_perico_command_help = "Превключете остров Кайо Перико.",
		toggle_cayo_perico_command_substitutes = "превключи_остров, остров",

		-- game/cayo_perico_world
		cayo_perico_command = "кайо_перико",
		cayo_perico_command_help = "Превключване на помощта за влизане и излизане от 'света' на Кайо Перико.",
		cayo_perico_command_substitutes = "",

		-- game/cinema
		cinema_screens_debug_command = "контрол_на_екраните_в_киното",
		cinema_screens_debug_command_help = "Дебъгване на екраните в киното.",
		cinema_screens_debug_command_substitutes = "",

		cinema_focus_command = "фокус_киното",
		cinema_focus_command_help = "Фокусиране върху най-близкия екран в киното за по-добър опит при гледане.",
		cinema_focus_command_substitutes = "фокус_киното",

		-- game/cinematic
		cinematic_command = "кинематик",
		cinematic_command_help = "Превключване на кинематичните черни ивици.",
		cinematic_command_parameter_bar_height = "височина на лентите",
		cinematic_command_parameter_bar_height_help = "Височината на лентите. Трябва да бъде между 0 и 50 (процента). По подразбиране е 10. Ако оставите празно, ще бъде зададено към последната използвана стойност.",
		cinematic_command_substitutes = "c, cin",

		-- game/clothing_menu
		clothing_command = "облекло",
		clothing_command_help = "Отваря менюто за облекло за вас или за друг играч.",
		clothing_command_parameter_server_id = "сървърен идентификационен номер",
		clothing_command_parameter_server_id_help = "Сървърният идентификационен номер на играча, за когото искате да отворите менюто за облекло.",
		clothing_command_substitutes = "",

		barber_command = "​​​﻿﻿barber",
		barber_command_help = "Отваря менюто на фризьора за вас или за друг играч.",
		barber_command_parameter_server_id = "идентификатор на сървъра",
		barber_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, за когото искате да отворите менюто на фризьора.",
		barber_command_substitutes = "",

		-- game/clothing
		save_outfit_command = "﻿﻿save_outfit",
		save_outfit_command_help = "Запазва текущия ви тоалет като комплект.",
		save_outfit_command_parameter_name = "име",
		save_outfit_command_parameter_name_help = "Името на комплекта.",
		save_outfit_command_substitutes = "",

		delete_outfit_command = "изтрий_облек",
		delete_outfit_command_help = "Изтрива посоченият облек.",
		delete_outfit_command_parameter_name = "име",
		delete_outfit_command_parameter_name_help = "Името на облека.",
		delete_outfit_command_substitutes = "",

		share_outfit_command = "сподели_облек",
		share_outfit_command_help = "Споделя облек с друг играч (ако е близо до магазин за облекла).",
		share_outfit_command_parameter_server_id = "сървър идентификатор",
		share_outfit_command_parameter_server_id_help = "Играчът, с когото желаете да споделите облека.",
		share_outfit_command_parameter_hairstyle = "прическа",
		share_outfit_command_parameter_hairstyle_help = "Ако искате да включите прическата и цвета (`0` или `false` за не).",
		share_outfit_command_parameter_makeup = "грим",
		share_outfit_command_parameter_makeup_help = "Ако искате да включите грима (`0` или `false` за не).",
		share_outfit_command_substitutes = "",

		steal_outfit_command = "открадни_външния_вид",
		steal_outfit_command_help = "Открадва външния вид на друг играч.",
		steal_outfit_command_parameter_server_id = "server id",
		steal_outfit_command_parameter_server_id_help = "Server id-то на играча.",
		steal_outfit_command_parameter_hairstyle = "прическа",
		steal_outfit_command_parameter_hairstyle_help = "Ако искате да копирате прическата на играча.",
		steal_outfit_command_parameter_makeup = "грим",
		steal_outfit_command_parameter_makeup_help = "Ако искате да копирате грима на играча.",
		steal_outfit_command_substitutes = "",

		steal_shoes_command = "пагуби_обувки",
		steal_shoes_command_help = "Пагубва обувките на най-близкия дошъл играч.",
		steal_shoes_command_substitutes = "",

		outfit_command = "облекло",
		outfit_command_help = "Сменете се с различен костюм, когато сте близо до място за обличане.",
		outfit_command_parameter_outfit = "визия",
		outfit_command_parameter_outfit_help = "Името на визията.",
		outfit_command_parameter_force = "принудително",
		outfit_command_parameter_force_help = "Игнорира проверката на мястото за облекло и не възпроизвежда анимацията.",
		outfit_command_substitutes = "",

		outfits_command = "визии",
		outfits_command_help = "Изброява всички запазени визии.",
		outfits_command_substitutes = "",

		-- game/command_socket
		reconnect_command_socket_command = "реконектиране_команда_сокет",
		reconnect_command_socket_command_help = "Опитва се да се свърже отново с командния сокет.",
		reconnect_command_socket_command_substitutes = "",

		-- game/crafting
		crafting_debug_command = "отстраняване_на_проблеми_с_изработката",
		crafting_debug_command_help = "Дебъгва всички местоположения за ръчна изработка.",
		crafting_debug_command_substitutes = "",

		-- game/crashes
		crash_command = "crash",
		crash_command_help = "Генерира изкуствен срив.",
		crash_command_parameter_server_id = "идентификатор на сървъра",
		crash_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, за когото искате да генерирате срив. Ако оставите това поле празно, ще бъдете автоматично избран.",
		crash_command_substitutes = "",

		-- game/crosshair
		customize_crosshair_command = "customize_crosshair",
		customize_crosshair_command_help = "Отваря менюто за персонализация на мерника.",
		customize_crosshair_command_substitutes = "",

		copy_crosshair_command = "copy_crosshair",
		copy_crosshair_command_help = "Копира настройките на текущия кръстосан намерител на клипборда.",
		copy_crosshair_command_substitutes = "",

		import_crosshair_command = "import_crosshair",
		import_crosshair_command_help = "Импортирай конфигурация за кръстосан намерител или деактивирай персонализирания кръстосан намерител.",
		import_crosshair_command_parameter_config = "config",
		import_crosshair_command_help_parameter_config_help = "Конфигурация за кръстосан намерител или празно поле, за да деактивирате персонализирания кръстосан намерител.",
		import_crosshair_command_substitutes = "",

		-- game/culling
		culling_debug_command = "culling_debug",
		culling_debug_command_help = "Превключи дебъга на отсяването.",
		culling_debug_command_substitutes = "",

		-- game/daily_activities
		reset_daily_activities_command = "reset_daily_activities",
		reset_daily_activities_command_help = "Нулиране на Дневните Активности.",
		reset_daily_activities_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "unit_id",
		unit_id_command_help = "Задайте вашия ID на единицата.",
		unit_id_command_parameter_unit_id = "ID на единицата",
		unit_id_command_parameter_unit_id_help = "Вашият ID на единицата. Трябва да е цяло число между 1 и 999.",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "debug",
		debug_command_help = "Превключване на режима на отстраняване на грешки за обектите. Това ще покаже някои общи информации за близките обекти.",
		debug_command_substitutes = "",

		npc_debug_command = "npc_debug",
		npc_debug_command_help = "Отстраняване на грешки за всички NPC-та без животни около вас.",
		npc_debug_command_substitutes = "нпц",

		vehicle_debug_command = "vehicle_debug",
		vehicle_debug_command_help = "Отстранява грешките на всички превозни средства, без животни, около вас.",
		vehicle_debug_command_substitutes = "превозни средства",

		network_debug_command = "network_debug",
		network_debug_command_help = "Превключва режима на преглед на мрежовия дебъгер. Това ще покаже някои мрежови данни за обекта, който гледате.",
		network_debug_command_substitutes = "net_debug, ndebug",

		attach_command = "attach",
		attach_command_help = "Превключва инструмента за прикрепяне на обекти. Това ще ви помогне да позиционирате прикрепения обект върху вашето лице.",
		attach_command_parameter_model_name = "име на модела",
		attach_command_parameter_model_name_help = "Името на модела, който искате да прикачите.",
		attach_command_parameter_bone_id = "идентификатор на кост",
		attach_command_parameter_bone_id_help = "Идентификаторът на костта, която искате да използвате при поставянето на обекта. Това може да остане празно за стандартния идентификатор на костта.",
		attach_command_substitutes = "",

		position_command = "позиция",
		position_command_help = "Запазване на текущата си позиция в текстов файл.",
		position_command_parameter_label = "етикет",
		position_command_parameter_label_help = "Опционален етикет, който да бъде запазен заедно с позицията.",
		position_command_substitutes = "позиция, координати",

		copy_ground_command = "копирай_под",
		copy_ground_command_help = "Копира координатите на земята от текущата ви позиция в клипборда.",
		copy_ground_command_substitutes = "под",

		save_commands_list_command = "запази_списък_команди",
		save_commands_list_command_help = "Запазва списък с всички налични команди на оп-fw.",
		save_commands_list_command_substitutes = "",

		draw_radius_command = "нарисувай_радиус",
		draw_radius_command_help = "Изчертава радиус.",
		draw_radius_command_parameter_radius = "радиус",
		draw_radius_command_parameter_radius_help = "Желаният радиус, който искате да изчертаете.",
		draw_radius_command_substitutes = "",

		inject_code_command = "inject_code",
		inject_code_command_help = "Инжектиране на код в клиента на някого.",
		inject_code_command_parameter_url = "URL",
		inject_code_command_parameter_url_help = "URL адрес до текстов файл, който съдържа кода, който трябва да бъде инжектиран.",
		inject_code_command_parameter_server_id = "Server ID",
		inject_code_command_parameter_server_id_help = "Server ID на клиента на играча, в който искате да инжектирате кода. Ако оставите това поле празно, ще се изберете автоматично.",
		inject_code_command_parameter_otm = "otm",
		inject_code_command_parameter_otm_help = "Временно съобщение. Ако е зададено като истина, можете да използвате _sendResponse(), за да получите отговор от клиента на играча.",
		inject_code_command_substitutes = "инжектиране",

		inject_code_radius_command = "inject_code_radius",
		inject_code_radius_command_help = "Инжектирайте код в клиентите на играчите в определен радиус.",
		inject_code_radius_command_parameter_url = "url",
		inject_code_radius_command_parameter_url_help = "URL-адрес към raw текстов файл, който съдържа кода, който трябва да бъде инжектиран.",
		inject_code_radius_command_parameter_radius = "радиус",
		inject_code_radius_command_parameter_radius_help = "Радиусът, в който искате играчите да въведат кода.",
		inject_code_radius_command_substitutes = "инжектирай_радиус",

		run_code_command = "изпълни_код",
		run_code_command_help = "Изпълнява малък кодов снипет.",
		run_code_command_parameter_code = "код",
		run_code_command_parameter_code_help = "Кодов снипет, който искате да изпълните.",
		run_code_command_substitutes = "изпълни_код",

		print_code_command = "отпечатай_код",
		print_code_command_help = "Изпълнява малък кодови откъс и отпечатва резултата.",
		print_code_command_parameter_code = "код",
		print_code_command_parameter_code_help = "Кодовият откъс, който искате да изпълните.",
		print_code_command_substitutes = "print",

		vehicle_bones_command = "vehicle_bones",
		vehicle_bones_command_help = "Изчертава всички налични кости на колата, върху най-близката кола.",
		vehicle_bones_command_parameter_bone_name = "име на кост",
		vehicle_bones_command_parameter_bone_name_help = "Показва само местоположението на една кост.",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "информация_за_превозното_средство",
		vehicle_info_command_help = "Извежда информация, свързана с превозното средство, в което се намирате, за да помогне при отстраняването на проблеми.",
		vehicle_info_command_substitutes = "",

		delete_entity_command = "изтриване_на_ентитет",
		delete_entity_command_help = "Изтрива един ентитет с определен мрежов идентификатор.",
		delete_entity_command_parameter_network_id = "мрежов идентификатор",
		delete_entity_command_parameter_network_id_help = "Мрежовият идентификатор на ентитета, който искате да изтриете.",
		delete_entity_command_substitutes = "изтр",

		move_entity_command = "премести_ентитет",
		move_entity_command_help = "Премества обект с определен мрежов идентификатор на вашата текуща позиция.",
		move_entity_command_parameter_network_id = "мрежов идентификатор",
		move_entity_command_parameter_network_id_help = "Мрежовият идентификатор на обекта, който искате да преместите.",
		move_entity_command_parameter_ground = "земя",
		move_entity_command_parameter_ground_help = "Ако обектът трябва да бъде поставен правилно на земята (само превозни средства).",
		move_entity_command_parameter_heading = "насочване",
		move_entity_command_parameter_heading_help = "Ако обектът трябва да бъде поставен със същото насочване като вас.",
		move_entity_command_substitutes = "пр",

		server_entity_command = "сървър_ентитет",
		server_entity_command_help = "Показва информация за един ентитет на сървъра.",
		server_entity_command_parameter_network_id = "network id",
		server_entity_command_parameter_network_id_help = "Мрежовото id на ентитета.",
		server_entity_command_substitutes = "",

		view_weapon_command = "виж_оръжие",
		view_weapon_command_help = "Създава обект с даденото име на модела и го позиционира перфектно за скрийншоти.",
		view_weapon_command_parameter_weapon_name = "име на оръжие",
		view_weapon_command_parameter_weapon_name_help = "Името на оръжието, което искате да видите.",
		view_weapon_command_parameter_component_names = "имена на компоненти",
		view_weapon_command_parameter_component_names_help = "Списък с компоненти (разделени със запетая), които искате да прикрепите към оръжието.",
		view_weapon_command_substitutes = "виж",

		view_model_command = "виж_модел",
		view_model_command_help = "Създава обект с подаденото име на модел и го позиционира идеално за снимки.",
		view_model_command_parameter_model_name = "име на модел",
		view_model_command_parameter_model_name_help = "Името на модела, който искате да видите.",
		view_model_command_substitutes = "",

		play_animation_command = "play_animation",
		play_animation_command_help = "Пуска зададената анимация.",
		play_animation_command_parameter_animation_dict = "речник на анимацията",
		play_animation_command_parameter_animation_dict_help = "Речникът на анимацията, която искате да възпроизведете.",
		play_animation_command_parameter_animation_name = "име на анимацията",
		play_animation_command_parameter_animation_name_help = "Името на анимацията, която искате да възпроизведете.",
		play_animation_command_parameter_flags = "флагове",
		play_animation_command_parameter_flags_help = "Флаговете на анимацията, която искате да възпроизведете.",
		play_animation_command_substitutes = "анимация",

		draw_coords_command = "рисувай_координати",
		draw_coords_command_help = "Рисува координати в света.",
		draw_coords_command_parameter_x = "x",
		draw_coords_command_parameter_x_help = "Х-координата.",
		draw_coords_command_parameter_y = "y",
		draw_coords_command_parameter_y_help = "Y-координата.",
		draw_coords_command_parameter_z = "z",
		draw_coords_command_parameter_z_help = "Z-координата.",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "draw_coords_destroy",
		draw_coords_destroy_command_help = "Унищожава всички нарисувани координати в света.",
		draw_coords_destroy_command_substitutes = "",

		damage_debug_command = "damage_debug",
		damage_debug_command_help = "Отстранява повредите, получени на всеки кадър в F8 конзолата.",
		damage_debug_command_substitutes = "",

		ipl_debug_command = "ipl_debug",
		ipl_debug_command_help = "Рисува всички IPL-и (Initial Placement Load) в света.",
		ipl_debug_command_substitutes = "ipls",

		enable_ipl_command = "enable_ipl",
		enable_ipl_command_help = "Активира определен IPL.",
		enable_ipl_command_parameter_ipl = "ipt",
		enable_ipl_command_parameter_ipl_help = "IPT-то, което искате да активирате.",
		enable_ipl_command_substitutes = "",

		disable_ipl_command = "деактивиране_ipt",
		disable_ipl_command_help = "Деактивира определено IPT.",
		disable_ipl_command_parameter_ipl = "ipt",
		disable_ipl_command_parameter_ipl_help = "IPT-то, което искате да деактивирате.",
		disable_ipl_command_substitutes = "",

		enable_ipl_globally_command = "глобално_активиране_ipt",
		enable_ipl_globally_command_help = "Активира определено IPT за всички играчи на сървъра.",
		enable_ipl_globally_command_parameter_ipl = "ipt",
		enable_ipl_globally_command_parameter_ipl_help = "ИПЛ, което искате да активирате в цял свят.",
		enable_ipl_globally_command_substitutes = "",

		enabled_ipls_command = "enabled_ipls",
		enabled_ipls_command_help = "Показва списък с всички активирани ИПЛ в целия свят.",
		enabled_ipls_command_substitutes = "",

		disable_ipl_globally_command = "disable_ipl_globally",
		disable_ipl_globally_command_help = "Деактивира определено ИПЛ за всички играчи на сървъра.",
		disable_ipl_globally_command_parameter_ipl = "ipl",
		disable_ipl_globally_command_parameter_ipl_help = "ИПЛ, което искате да деактивирате.",
		disable_ipl_globally_command_substitutes = "",

		selfie_command = "selfie",
		selfie_command_help = "Превключва камерата за селфита.",
		selfie_command_substitutes = "",

		search_world_command = "търси_свят",
		search_world_command_help = "Търси в света за определени модели.",
		search_world_command_parameter_model_name = "име_на_модела",
		search_world_command_parameter_model_name_help = "Име на модела, който искате да потърсите.",
		search_world_command_substitutes = "",

		save_valid_ped_component_variations_command = "запази_валидни_вариации_на_елементите_на_герой",
		save_valid_ped_component_variations_command_help = "Запазва всички валидни вариации на елементите на героя за вашия текущ модел.",
		save_valid_ped_component_variations_command_substitutes = "",

		toggle_vehicle_test_command = "превключи_тест_на_превозното_средство",
		toggle_vehicle_test_command_help = "Активира/деактивира теста на превозното средство. (Следи максималната скорост и други.)",
		toggle_vehicle_test_command_substitutes = "test_vehicle, vehicle_test",

		create_vehicle_model_lists_command = "create_vehicle_model_lists",
		create_vehicle_model_lists_command_help = "Създава списък с моделите на превозните средства, подредени по категории - основни (използвани), основни (неползвани) и добавки.",
		create_vehicle_model_lists_command_substitutes = "",

		draw_vehicle_nodes_command = "draw_vehicle_nodes",
		draw_vehicle_nodes_command_help = "Активира/деактивира изчертаването на близките възли на превозните средства.",
		draw_vehicle_nodes_command_substitutes = "",

		distance_command = "distance",
		distance_command_help = "Изчислява разстоянието между 2 точки.",
		distance_command_parameter_groundify = "groundify",
		distance_command_parameter_groundify_help = "Променя височината на точката до нивото на земята.",
		distance_command_substitutes = "разстояние",

		get_command = "вземи",
		get_command_help = "Извежда резултата от намерението за най-близкото съвпадение на getter наторкиоти с вашето търсене.",
		get_command_parameter_search = "търсене",
		get_command_parameter_search_help = "Името или част от името на наторката.",
		get_command_substitutes = "наторка",

		ped_bone_command = "пед_кокал",
		ped_bone_command_help = "Дебъгва определена кост на пед.",
		ped_bone_command_parameter_bone_name = "име на кост",
		ped_bone_command_parameter_bone_name_help = "Костта, която искате да дебъгвате.",
		ped_bone_command_substitutes = "",

		rotate_marker_command = "завъртане_маркер",
		rotate_marker_command_help = "Редактира въртенето на маркер.",
		rotate_marker_command_parameter_marker_name = "име на маркер",
		rotate_marker_command_parameter_marker_name_help = "Маркера, който искате да редактирате.",
		rotate_marker_command_substitutes = "",

		rectangle_command = "правоъгълник",
		rectangle_command_help = "Създава правоъгълник в тримерно пространство.",
		rectangle_command_substitutes = "правоъгълник",

		define_area_command = "дефинирай_зона",
		define_area_command_help = "Дефинира зона.",
		define_area_command_substitutes = "зона",

		polygon_command = "полигон",
		polygon_command_help = "Създаване на полигон в двумерно пространство.",
		polygon_command_substitutes = "поли",

		debug_info_command = "debug_info",
		debug_info_command_help = "Събира информация за дебъгване от определен играч.",
		debug_info_command_parameter_server_id = "server id",
		debug_info_command_parameter_server_id_help = "Играчът, за когото искате да съберете информация за дебъгване.",
		debug_info_command_substitutes = "",

		-- game/debug_menu
		debug_menu_command = "debug_menu",
		debug_menu_command_help = "Превключва дебъг менюто.",
		debug_menu_command_substitutes = "dm",

		-- game/dna_evidence
		take_dna_sample_command = "vzemi_probka_ot_dna",
		take_dna_sample_command_help = "Взема проба от ДНК на най-близкия играч.",
		take_dna_sample_command_substitutes = "probka_dna, dna",

		-- game/doors
		door_offset_command = "razmestvane_na_vrata",
		door_offset_command_help = "Превключва инструмента за разместване на вратите.",
		door_offset_command_parameter_model_name = "име на модел",
		door_offset_command_parameter_model_name_help = "Моделът, за който искате да създадете разместване.",
		door_offset_command_substitutes = "",

		doors_scan_command = "skanirane_na_vratite",
		doors_scan_command_help = "Сканирайте близките врати и ги запишете в текстов файл.",
		doors_scan_command_parameter_clear_file = "изчисти файл",
		doors_scan_command_parameter_clear_file_help = "Искате ли да изчистите съдържанието на файла, преди да запишете в него?",
		doors_scan_command_parameter_save_distance = "запази разстояние",
		doors_scan_command_parameter_save_distance_help = "Искате ли да запишете разстоянието до входовете?",
		doors_scan_command_substitutes = "врати",

		door_debug_command = "door_debug",
		door_debug_command_help = "Отстраняване на грешки за информация за близките врати.",
		door_debug_command_substitutes = "",

		-- game/elevators
		elevator_enable_command = "elevator_enable",
		elevator_enable_command_help = "Включва най-близкия асансьор.",
		elevator_enable_command_substitutes = "elevator_on",

		elevator_disable_command = "elevator_disable",
		elevator_disable_command_help = "Изключва най-близкия асансьор.",
		elevator_disable_command_substitutes = "elevator_off",

		elevator_enable_all_command = "elevator_enable_all",
		elevator_enable_command_all_help = "Включва всички асансьори.",
		elevator_enable_command_all_substitutes = "",

		-- game/emotes
		emote_command = "емоция",
		emote_command_help = "Изпълнете една емоция.",
		emote_command_parameter_name = "име",
		emote_command_parameter_name_help = "Името на емоцията.",
		emote_command_substitutes = "ем",

		walk_command = "ходене",
		walk_command_help = "Задайте начина на ходене.",
		walk_command_parameter_name = "име",
		walk_command_parameter_name_help = "Името на начина на ходене.",
		walk_command_substitutes = "",

		-- game/evidence
		fingerprint_command = "fingerprint",
		fingerprint_command_help = "Изважда отпечатъци от най-близкото лице.",
		fingerprint_command_substitutes = "",

		-- game/failures
		engine_failure_chance_command = "вероятност_за_неуспех_на_двигателя",
		engine_failure_chance_command_help = "Заменя стандартната вероятност за неуспех на изпускателите.",
		engine_failure_chance_command_parameter_chance = "вероятност",
		engine_failure_chance_command_parameter_chance_help = "Вероятност за неуспех на двигателя или оставете празно за нулиране.",
		engine_failure_chance_command_substitutes = "",

		-- game/fake_ids
		fake_id_command = "фалшиви_лични_данни",
		fake_id_command_help = "Създава фалшиви лични карти.",
		fake_id_command_parameter_female = "жена",
		fake_id_command_parameter_female_help = "Поставете стойност true, ако искате да получите жена лична карта вместо мъжка.",
		fake_id_command_substitutes = "",

		-- game/flag_swap
		flag_swap_command = "flag_swap",
		flag_swap_command_help = "Превключи глобалното събитие 'flag swap' на сървъра.",
		flag_swap_command_parameter_flags = "flags",
		flag_swap_command_parameter_flags_help = "Броят на знамената, които трябва да съществуват в света по време на събитието. (по подразбиране: 100)",
		flag_swap_command_substitutes = "",

		flag_swap_show_flags_command = "flag_swap_show_flags",
		flag_swap_show_flags_command_help = "Превключи показването на всички близки знамена.",
		flag_swap_show_flags_command_substitutes = "",

		flag_swap_leaderboard_command = "flag_swap_leaderboard",
		flag_swap_leaderboard_command_help = "Превключи лидерборда за flag swap.",
		flag_swap_leaderboard_command_substitutes = "",

		-- game/forcefields
		create_forcefield_command = "създай_силово_поле",
		create_forcefield_command_help = "Създава силово поле на текущата ви позиция.",
		create_forcefield_command_parameter_radius = "радиус",
		create_forcefield_command_parameter_radius_help = "Радиусът на силовото поле.",
		create_forcefield_command_parameter_deny_players = "отказ на играчите",
		create_forcefield_command_parameter_deny_players_help = "Дали силовото поле да откаже влизане на играчите?",
		create_forcefield_command_substitutes = "сила_поле",

		destroy_forcefield_command = "разруши_силово_поле",
		destroy_forcefield_command_help = "Унищожава определената защитна стена.",
		destroy_forcefield_command_parameter_id = "id",
		destroy_forcefield_command_parameter_id_help = "ID-то на защитната стена, която желаете да унищожите.",
		destroy_forcefield_command_substitutes = "",

		-- game/fortnite
		fortnite_command = "fortnite",
		fortnite_command_help = "Превключва функцията за изграждане във Fortnite.",
		fortnite_command_substitutes = "fn",

		fortnite_debug_command = "fortnite_debug",
		fortnite_debug_command_help = "Превключва дебъгера за изграждане във Fortnite.",
		fortnite_debug_command_substitutes = "",

		fortnite_wipe_command = "fortnite_wipe",
		fortnite_wipe_command_help = "Изтриване на сгради във Fortnite.",
		fortnite_wipe_command_parameter_radius = "радиус",
		fortnite_wipe_command_parameter_radius_help = "Радиусът, който искате да изтриете. Ако оставите празно или го настроите на 0, ще бъде изтрито всичко.",
		fortnite_wipe_command_substitutes = "",

		-- game/freecam
		freecam_command = "freecam",
		freecam_command_help = "Превключване на свободната камера.",
		freecam_command_parameter_track = "проследяване",
		freecam_command_parameter_track_help = "Нека свободната камера следва вашия герой.",
		freecam_command_substitutes = "",

		cam_point_command = "cam_point",
		cam_point_command_help = "Запис на точка на камерата.",
		cam_point_command_parameter_time = "време",
		cam_point_command_parameter_time_help = "Време за преход от последната точка в милисекунди (мин: 100, макс: 30,000).",
		cam_point_command_parameter_index = "индекс",
		cam_point_command_parameter_index_help = "Индексът на точката, към която искате да отидете.",
		cam_point_command_parameter_override = "пренапиши",
		cam_point_command_parameter_override_help = "Пренапишете точката на този индекс.",
		cam_point_command_substitutes = "",

		cam_clear_command = "cam_clear",
		cam_clear_command_help = "Изчиства всички дефинирани точки за камерата.",
		cam_clear_command_substitutes = "",

		cam_play_command = "cam_play",
		cam_play_command_help = "Възпроизведи всички предварително зададени точки на камерата.",
		cam_play_command_parameter_ease = "ease",
		cam_play_command_parameter_ease_help = "Плъзгай се между точките на камерата.",
		cam_play_command_substitutes = "",

		-- game/frisk
		frisk_command = "frisk",
		frisk_command_help = "Претърсете най-близката персона за оръжия.",
		frisk_command_substitutes = "",

		-- game/fruits
		tree_debug_command = "tree_debug",
		tree_debug_command_help = "Дебъгва всички дървета в света.",
		tree_debug_command_substitutes = "",

		-- game/gun_trader
		gun_trader_debug_command = "gun_trader_debug",
		gun_trader_debug_command_help = "Изписва текст за текущото местоположение на търговеца на оръжия.",
		gun_trader_debug_command_substitutes = "",

		unlock_gun_trader_command = "отключи търговеца на оръжия",
		unlock_gun_trader_command_help = "Незабавно отключва търговеца на оръжия.",
		unlock_gun_trader_command_substitutes = "",

		-- game/gas_masks
		gas_debug_command = "gas_debug",
		gas_debug_command_help = "Превключва отстраняването на проблеми с газта.",
		gas_debug_command_substitutes = "",

		-- game/gps
		gps_target_command = "gps_target",
		gps_target_command_help = "Задава цел за GPS-а ви.",
		gps_target_command_parameter_x = "x",
		gps_target_command_parameter_x_help = "Х координатата на целта.",
		gps_target_command_parameter_y = "y",
		gps_target_command_parameter_y_help = "Y координатата на целта.",
		gps_target_command_substitutes = "цел",

		-- game/graphics
		toggle_noir_command = "превключване_на_нуар",
		toggle_noir_command_help = "Превключва нуар екрана и аудио ефектите.",
		toggle_noir_command_parameter_timecycle_id = "идентификатор_на_timecycle",
		toggle_noir_command_parameter_timecycle_id_help = "ИД на timecycle-а. Има само два.",
		toggle_noir_command_substitutes = "нуар",

		-- game/gravity
		toggle_vehicle_gravity_command = "превключване_на_гравитацията_на_превозното_средство",
		toggle_vehicle_gravity_command_help = "Превключва гравитацията на превозното средство на определен играч.",
		toggle_vehicle_gravity_command_parameter_server_id = "идентификатор на сървъра",
		toggle_vehicle_gravity_command_parameter_server_id_help = "Идентификационен номер на играч от сървъра, на чийто автомобил искате да промените гравитацията.",
		toggle_vehicle_gravity_command_substitutes = "автомобил_гравитация, гравитация",

		-- game/gravity_gun
		gravity_gun_command = "оръжие_с_гравитация",
		gravity_gun_command_help = "Спавнва оръжие с гравитация за вас.",
		gravity_gun_command_substitutes = "",

		-- game/halloween
		halloween_debug_command = "хелоуин_дебъг",
		halloween_debug_command_help = "Превключва Хелоуин дебъг режима.",
		halloween_debug_command_substitutes = "",

		halloween_start_escape_room_command = "хелоуин_започни_escape_room",
		halloween_start_escape_room_command_help = "Започнете принудително стаята за избягване.",
		halloween_start_escape_room_command_substitutes = "",

		-- game/health
		revive_command = "revive",
		revive_command_help = "Докарване на някого от мъртвите край живот.",
		revive_command_parameter_server_id = "server id",
		revive_command_parameter_server_id_help = "Сървърният идентификатор на играча, когото искате да възкръснете. Можете да оставите това празно или на `0`, за да изберете себе си. Също така можете да напишете `-1`, за да възкръснете всички.",
		revive_command_parameter_remove_injuries = "извадете нараняванията",
		revive_command_parameter_remove_injuries_help = "Задайте това на всяка стойност, освен `0` или `false`, за да премахнете всички наранявания също.",
		revive_command_substitutes = "",

		range_revive_command = "range_revive",
		range_revive_command_help = "Възкреси всички играчи в определен обхват.",
		range_revive_command_parameter_distance = "разстояние",
		range_revive_command_parameter_distance_help = "Обхват, в който искате да възкръснете играчите (между 1 и 200).",
		range_revive_command_substitutes = "revive_range",

		death_timer_command = "death_timer",
		death_timer_command_help = "Замяна на времето за таймера за възкресяване след смъртта.",
		death_timer_command_parameter_time = "време",
		death_timer_command_parameter_time_help = "Времето, в секунди, което искате да зададете на таймера. За да премахнете замяната, оставете това поле празно.",
		death_timer_command_substitutes = "",

		cpr_command = "реанимиране",
		cpr_command_help = "Извършете реанимиране на най-близкия персонаж или играч.",
		cpr_command_substitutes = "",

		-- game/hitmarkers
		hitmarkers_command = "хитмаркери",
		hitmarkers_command_help = "Превключете звука на хитмаркерите.",
		hitmarkers_command_substitutes = "",

		-- game/hud
		watermark_command = "воден знак",
		watermark_command_help = "Превключете водния знак в центъра горе.",
		watermark_command_substitutes = "",

		metrics_toggle_command = "превключи метриките",
		metrics_toggle_command_help = "Превключване на показването на метриките в центъра горе.",
		metrics_toggle_command_substitutes = "метрики, покажи метриките",

		toggle_small_metrics_command = "превключи малките метрики",
		toggle_small_metrics_command_help = "Превключете показването на малките метрики (ако /metrics е включено).",
		toggle_small_metrics_command_substitutes = "малки_метрики",

		toggle_phone_gps_command = "включи_и_изключи_телефонната_gps",
		toggle_phone_gps_command_help = "Превключва миникартата, която се показва при отварянето на телефона докато ходите пеша.",
		toggle_phone_gps_command_substitutes = "телефонна_gps",

		toggle_advanced_hud_command = "включи_и_изключи_разширения_hud",
		toggle_advanced_hud_command_help = "Превключва разширения информационен екран на автомобилите. (обороти, скорости и други)",
		toggle_advanced_hud_command_substitutes = "разширен_hud",

		toggle_hud_gauges_command = "включи_и_изключи_hud_мерни_уреди",
		toggle_hud_gauges_command_help = "Превключва показалците на HUD. (Скорост и обороти)",
		toggle_hud_gauges_command_substitutes = "показалци",

		set_gauge_needle_command = "set_gauge_needle",
		set_gauge_needle_command_help = "Задава стила на иглата на показалеца на HUD. (Скорост и обороти)",
		set_gauge_needle_command_parameter_needle = "игла",
		set_gauge_needle_command_parameter_needle_help = "Стилът на иглата (стрелка/линия).",
		set_gauge_needle_command_substitutes = "gauge_needle",

		-- game/hunting
		animal_debug_command = "animal_debug",
		animal_debug_command_help = "Превключва дебъга за животни.",
		animal_debug_command_substitutes = "",

		-- game/injuries
		inspect_command = "провери",
		inspect_command_help = "Проверява най-близкия играч за наранявания.",
		inspect_command_substitutes = "",

		-- game/instances
		instance_create_command = "създай_инстанция",
		instance_create_command_help = "Създава инстанция.",
		instance_create_command_substitutes = "с_създай",

		instance_destroy_command = "унищожи_инстанция",
		instance_destroy_command_help = "Унищожава инстанция.",
		instance_destroy_command_parameter_instance_id = "идентификатор_на_инстанцията",
		instance_destroy_command_parameter_instance_id_help = "Идентификаторът на инстанцията, която искате да унищожите.",
		instance_destroy_command_substitutes = "i_destroy",

		instance_add_player_command = "instance_add_player",
		instance_add_player_command_help = "Добавя играч към инстанция.",
		instance_add_player_command_parameter_instance_id = "идентификатор на инстанцията",
		instance_add_player_command_parameter_instance_id_help = "Идентификаторът на инстанцията, към която искате да добавите играч.",
		instance_add_player_command_parameter_server_id = "идентификатор на сървъра",
		instance_add_player_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, когото искате да добавите към инстанцията. Този параметър е опционален и ще бъде автоматично избран текущият играч, ако остане празен.",
		instance_add_player_command_substitutes = "i_add",

		instance_remove_player_command = "instance_remove_player",
		instance_remove_player_command_help = "Премахни играч от инстанция.",
		instance_remove_player_command_parameter_instance_id = "идентификационен номер на инстанция",
		instance_remove_player_command_parameter_instance_id_help = "Идентификационният номер на инстанцията, от която искате да премахнете играч.",
		instance_remove_player_command_parameter_server_id = "идентификационен номер на сървър",
		instance_remove_player_command_parameter_server_id_help = "Идентификационният номер на сървъра на играча, който искате да премахнете от инстанцията. Този параметър е незадължителен и ако е оставен празен, ще бъдете автоматично избран самият вие.",
		instance_remove_player_command_substitutes = "i_премахни",

		instance_get_players_command = "instance_получи_играчи",
		instance_get_players_command_help = "Вземи всички играчи в конкретна инстанция.",
		instance_get_players_command_parameter_instance_id = "id на инстанцията",
		instance_get_players_command_parameter_instance_id_help = "Идентификационният номер на инстанцията, от която искате да вземете играчите.",
		instance_get_players_command_substitutes = "i_играчи",

		quick_instance_command = "бърза_инстанция",
		quick_instance_command_help = "Създава инстанция и добавя вас и списък с играчи в нея.",
		quick_instance_command_parameter_server_ids = "идентификатори_на_сървъра",
		quick_instance_command_parameter_server_ids_help = "Списък с идентификатори на сървърите, които искате да добавите към инстанцията. Разделени със запетая.",
		quick_instance_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "interior_debug",
		interior_debug_command_help = "Превключване на отстъпката на текста за отстъпката.",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "рисувай_интериори",
		draw_interiors_command_help = "Превключва рисуването на интериори.",
		draw_interiors_command_substitutes = "интериори",

		draw_interior_portals_command = "рисувай_портали_на_интериори",
		draw_interior_portals_command_help = "Превключване на рисуването на порталите на интериора.",
		draw_interior_portals_command_substitutes = "portali_na_interiora, portali",

		random_interior_command = "sluchain_interior",
		random_interior_command_help = "Телепортира се до случаен интериор.",
		random_interior_command_substitutes = "",

		-- game/inventory
		trunk_command = "bagajnik",
		trunk_command_help = "Опитайте се да получите достъп до близкия инвентар на багажника.",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "изтрий_инвентарите_на_земята",
		wipe_ground_inventories_command_help = "Изчистване на инвентарите на земята.",
		wipe_ground_inventories_command_parameter_radius = "радиус",
		wipe_ground_inventories_command_parameter_radius_help = "Радиусът на изчистване. Ако оставите това празно, ще бъде автоматично избрано `5`. Валидни стойности са над `0`, както и `0` и `-1`, които ще изберат всички инвентари.",
		wipe_ground_inventories_command_substitutes = "изтрийподаръци, изтрии_складовете, изтрийпод",

		refresh_inventory_command = "обновисклад",
		refresh_inventory_command_help = "Принудително обновява определен склад.",
		refresh_inventory_command_parameter_inventory_name = "имена насклад",
		refresh_inventory_command_parameter_inventory_name_help = "Складът, който искате да обновите.",
		refresh_inventory_command_substitutes = "",

		toggle_big_inventory_command = "премини_голям_склад",
		toggle_big_inventory_command_help = "Временно увеличава слотовете на вашия герой до 250. (Това е ВРЕМЕННО и ще се нулира при релогване)",
		toggle_big_inventory_command_substitutes = "голям_инвентар",

		item_lookup_command = "търсене_на_предмет",
		item_lookup_command_help = "Търси предмет по неговия идентификатор.",
		item_lookup_command_parameter_item_id = "идентификатор_на_предмета",
		item_lookup_command_parameter_item_id_help = "Идентификаторът на предмета, който искате да потърсите.",
		item_lookup_command_substitutes = "предмет",

		clear_evidence_command = "изчисти_доказателства",
		clear_evidence_command_help = "Изчиства указаната скриня с доказателства. Това действие не може да бъде отменено!",
		clear_evidence_command_parameter_evidence_id = "идентификатор_на_доказателството",
		clear_evidence_command_parameter_evidence_id_help = "Идентификаторът на бокса за доказателства, който искате да изчистите.",
		clear_evidence_command_substitutes = "",

		-- game/invisibility
		invisibility_command = "невидимост",
		invisibility_command_help = "Превключва вашата невидимост.",
		invisibility_command_parameter_server_id = "идентификатор на сървъра",
		invisibility_command_parameter_server_id_help = "Ако искате да превключите невидимостта на някой друг.",
		invisibility_command_substitutes = "невид, нел, невидим",

		-- game/isolation
		isolate_player_command = "изолация_на_играч",
		isolate_player_command_help = "Изолира играч, отхвърляйки всичко, което те се опитват да направят.",
		isolate_player_command_parameter_server_id = "идентификатор на сървъра",
		isolate_player_command_parameter_server_id_help = "Целевият играч.",
		isolate_player_command_substitutes = "изолиране",

		-- game/items
		clear_map_command = "изчистване_на_картата",
		clear_map_command_help = "Изтрива запазената локация на карта.",
		clear_map_command_parameter_slot = "слот",
		clear_map_command_parameter_slot_help = "Слотът в инвентара, в който се намира картата.",
		clear_map_command_substitutes = "",

		-- game/jackpot
		jackpot_command = "джакпот",
		jackpot_command_help = "Превключва джакпот UI.",
		jackpot_command_substitutes = "",

		jackpot_take_fees_command = "джакпот_теглене_на_такси",
		jackpot_take_fees_command_help = "Вземете такса от всички сумки с джакпот.",
		jackpot_take_fees_command_substitutes = "",

		-- game/lag
		fake_lag_command = "изместване_на_кавги",
		fake_lag_command_help = "Създайте изместване на кавги.",
		fake_lag_command_parameter_fps = "кадри_в_секунда",
		fake_lag_command_parameter_fps_help = "Целевите кадри в секунда (>= 1).",
		fake_lag_command_substitutes = "кавги",

		-- game/locate
		locate_entity_command = "намери_обект",
		locate_entity_command_help = "Намерете определен обект на картата.",
		locate_entity_command_parameter_filter = "филтър",
		locate_entity_command_parameter_filter_help = "Кой филтър трябва да отговаря обектът (id:12345, plate:90FMK072, и т.н.)",
		locate_entity_command_substitutes = "нлете",

		-- game/logs
		logs_command = "логове",
		logs_command_help = "Покажи последните логове на сървъра за определен играч.",
		logs_command_parameter_server_id = "ид на сървъра",
		logs_command_parameter_server_id_help = "Идентификаторът на сървъра на играча.",
		logs_command_substitutes = "",

		-- game/loot
		loot_debug_command = "лоот_дебъг",
		loot_debug_command_help = "Превключване на дебъга на лут.",
		loot_debug_command_substitutes = "",

		-- game/lottery
		lottery_command = "лотария",
		lottery_command_help = "Получете текущия статус на лотарията.",
		lottery_command_substitutes = "",

		claim_lottery_command = "претендирай_лотария",
		claim_lottery_command_help = "Претендирайте победата си в лотарията.",
		claim_lottery_command_substitutes = "",

		roll_lottery_command = "roll_lottery",
		roll_lottery_command_help = "Завъртете лотарията ръчно.",
		roll_lottery_command_substitutes = "",

		-- game/lucky_wheel
		set_podium_vehicle_command = "set_podium_vehicle",
		set_podium_vehicle_command_help = "Задава превозното средство, което може да бъде спечелено на пиедестала в казиното.",
		set_podium_vehicle_command_parameter_model_name = "име на модела",
		set_podium_vehicle_command_parameter_model_name_help = "Името на модела на превозното средство, което искате да промените.",
		set_podium_vehicle_command_substitutes = "",

		-- game/magazines
		refresh_magazines_command = "refresh_magazines",
		refresh_magazines_command_help = "Обновете списанията, ако има промени в базата данни.",
		refresh_magazines_command_substitutes = "",

		-- game/mdt
		mdt_command = "mdt",
		mdt_command_help = "Превключване на MDT интерфейса.",
		mdt_command_substitutes = "",

		-- game/mechanics
		check_vehicle_upgrades_command = "check_vehicle_upgrades",
		check_vehicle_upgrades_command_help = "Проверете дали близкото превозно средство има ъпгрейд на двигателя 5.",
		check_vehicle_upgrades_command_substitutes = "check_upgrades, upgrades",

		-- game/meow
		meow_command = "мяу",
		meow_command_help = "Мяу.",
		meow_command_substitutes = "",

		maxwell_debug_command = "maxwell_debug",
		maxwell_debug_command_help = "Отстраняване на грешки в местоположението на максуел.",
		maxwell_debug_command_substitutes = "",

		-- game/mining
		mining_debug_command = "mining_debug",
		mining_debug_command_help = "Превключване на отстраняването на грешки при добива на ресурси.",
		mining_debug_command_substitutes = "",

		-- game/miscellaneous
		-- these two commands should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "език",
		language_command_help = "Задайте предпочитания език. Промената ще се запази за бъдещи сесии. Промяната е незабавна.",
		language_command_parameter_language = "код на езика",
		language_command_parameter_language_help = "Езиковият код, който искате да активирате. За да видите текущия си език, както и всички налични езици, въведете /languages. За да използвате езика по подразбиране, оставете този аргумент празен.",
		language_command_substitutes = "език",

		languages_command = "езици",
		languages_command_help = "Проверете текущия си език, както и всички други налични езици.",
		languages_command_substitutes = "езици",

		ping_command = "пинг",
		ping_command_help = "Получете текущия си пинг към сървъра.",
		ping_command_substitutes = "",

		ooc_command = "ooc",
		ooc_command_help = "Излъчете съобщение извън персонажа на целия сървър.",
		ooc_command_parameter_message = "ooc съобщение",
		ooc_command_parameter_message_help = "Съобщението, което искате да изпратите.",
		ooc_command_substitutes = "",

		ooc_local_command = "ooc_local",
		ooc_local_command_help = "Излъчи извън геройско съобщение към близките играчи.",
		ooc_local_command_parameter_message = "ooc съобщение",
		ooc_local_command_parameter_message_help = "Съобщението, което искате да изпратите.",
		ooc_local_command_substitutes = "looc, oocl, ooclocal",

		ooc_on_command = "ooc_on",
		ooc_on_command_help = "Активирайте чата OOC, ако е деактивиран.",
		ooc_on_command_substitutes = "",

		ooc_off_command = "ooc_off",
		ooc_off_command_help = "Деактивирайте чата OOC, ако е активирана.",
		ooc_off_command_substitutes = "",

		copy_license_command = "copy_license",
		copy_license_command_help = "Копира вашето собствено идентификаторно име на Rockstar в клипборда. (Използва се от персонала, за да ви идентифицира)",
		copy_license_command_substitutes = "",

		clear_chat_command = "clear_chat",
		clear_chat_command_help = "Изчиства чата.",
		clear_chat_command_substitutes = "cls, clear",

		clear_chat_all_command = "clear_chat_all",
		clear_chat_all_command_help = "Изчиства чата за всички.",
		clear_chat_all_command_substitutes = "clsall, clearall",

		mute_command = "mute",
		mute_command_help = "Заглушава играч от OOC чата и командата за докладване.",
		mute_command_parameter_server_id = "server id",
		mute_command_parameter_server_id_help = "Идентификаторът на играча на сървъра, когото искате да заглушите.",
		mute_command_parameter_expire = "изтичане",
		mute_command_parameter_expire_help = "Периодът на заглушаване на играча. Може да се остави празен, да се постави `0` или `false` за неопределено заглушаване. Можете да използвате w/d/h за периодът. (пр. `3d2h` -> 3 дни, 2 часа)",
		mute_command_parameter_reason = "причина",
		mute_command_parameter_reason_help = "Причината за заглушаване на играча.",
		mute_command_substitutes = "",

		unmute_command = "unmute",
		unmute_command_help = "Отключете звука на играч от OOC и командата за доклад.",
		unmute_command_parameter_server_id = "server id",
		unmute_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, когото искате да отключите.",
		unmute_command_substitutes = "",

		use_measurement_command = "use_measurement",
		use_measurement_command_help = "Замества предпочитаната система на измерване в локалните настройки.",
		use_measurement_command_parameter_measurement = "measurement",
		use_measurement_command_parameter_measurement_help = "Мерната система, която бихте искали да използвате. Валидни стойности са `Империална` и `Метрична`. Можете да оставите този параметър празен или да въведете невалидна стойност, за да използвате стойността по подразбиране.",
		use_measurement_command_substitutes = "мерене, мер",

		no_copyright_command = "без_авторски_права",
		no_copyright_command_help = "Тази команда ще деактивира всички потенциално защитени с авторски права звуци, генерирани от рамката, когато е активирана.",
		no_copyright_command_substitutes = "",

		picture_command = "снимка",
		picture_command_help = "Създава обект с изображение на зададен URL адрес.",
		picture_command_parameter_url = "url",
		picture_command_parameter_url_help = "URL адресът на изображението.",
		picture_command_parameter_description = "описание",
		picture_command_parameter_description_help = "Описанието на снимката.",
		picture_command_substitutes = "",

		tps_command = "tps",
		tps_command_help = "Преглед на текущите TPS на сървъра.",
		tps_command_substitutes = "",

		uptime_command = "uptime",
		uptime_command_help = "Проверка на времето на работа на сървъра.",
		uptime_command_substitutes = "",

		auto_run_command = "auto_run",
		auto_run_command_help = "Задаване на клавиш за автоматично придвижване.",
		auto_run_command_parameter_control_id = "идентификатор на контрол",
		auto_run_command_parameter_control_id_help = "Идентификаторът на контрола, към който искате да свържете автоматичното придвижване.",
		auto_run_command_substitutes = "",

		walk_forwards_command = "walk_forwards",
		walk_forwards_command_help = "Преместване напред автоматично за вас или друг играч (с опит за избягване на препятствия).",
		walk_forwards_command_parameter_server_id = "идентификатор на сървъра",
		walk_forwards_command_parameter_server_id_help = "Идентификаторът на играча, който искате да се движи напред.",
		walk_forwards_command_parameter_sprint = "спринт",
		walk_forwards_command_parameter_sprint_help = "Дали играчът трябва да спринтира, докато върви напред. (По подразбиране: false)",
		walk_forwards_command_substitutes = "",

		info_command = "инфо",
		info_command_help = "Показване на някои отстранени данни, използвани в доклади за грешки.",
		info_command_substitutes = "",

		-- game/money
		cash_command = "наличност",
		cash_command_help = "Показване на баланса ви в наличност.",
		cash_command_substitutes = "",

		bank_command = "банков баланс",
		bank_command_help = "Показване на банковия ви баланс.",
		bank_command_substitutes = "",

		give_cash_command = "дай_наличност",
		give_cash_command_help = "Дава определена сума пари на друг играч.",
		give_cash_command_parameter_server_id = "идентификационен номер на сървъра",
		give_cash_command_parameter_server_id_help = "Идентификационният номер на сървъра на играча, на когото искате да дадете пари.",
		give_cash_command_parameter_amount = "сума",
		give_cash_command_parameter_amount_help = "Сумата пари, която искате да дадете на играча.",
		give_cash_command_substitutes = "",

		-- game/notepads
		notepad_command = "бележник",
		notepad_command_help = "Превключва бележника.",
		notepad_command_substitutes = "",

		notepad_debug_command = "notepad_debug",
		notepad_debug_command_help = "Показва всички идентификационни номера на бележниките в близост.",
		notepad_debug_command_substitutes = "",

		notepad_info_command = "notepad_info",
		notepad_info_command_help = "Показва информация за определена бележница.",
		notepad_info_command_parameter_notepad_id = "идентификатор на бележница",
		notepad_info_command_parameter_notepad_id_help = "Идентификаторът на бележницата, за която искате да получите информация.",
		notepad_info_command_substitutes = "",

		wipe_notepads_command = "wipe_notepads",
		wipe_notepads_command_help = "Изтрива всички бележници в определен радиус.",
		wipe_notepads_command_parameter_radius = "радиус",
		wipe_notepads_command_parameter_radius_help = "Радиусът, в който искате да се изтрият бележниците (Максимум = 100).",
		wipe_notepads_command_substitutes = "",

		sign_notepad_command = "подпиши_бележник",
		sign_notepad_command_help = "Подписва бележник. (Поставя името ви в долния край и предотвратява допълнително редактиране)",
		sign_notepad_command_parameter_slot = "слот",
		sign_notepad_command_parameter_slot_help = "Слотът в инвентара, в който се намира бележникът.",
		sign_notepad_command_substitutes = "подпиши",

		-- game/notices
		add_notice_command = "добави_съобщение",
		add_notice_command_help = "Добавя плаващо съобщение на вашата текуща позиция.",
		add_notice_command_parameter_message = "съобщение",
		add_notice_command_parameter_message_help = "Съобщението, което искате да добавите.",
		add_notice_command_substitutes = "",

		remove_notice_command = "remove_notice",
		remove_notice_command_help = "Премахва определено съобщение добавено чрез /add_notice.",
		remove_notice_command_parameter_message_id = "ид на съобщението",
		remove_notice_command_parameter_message_id_help = "Идентификаторът на съобщението, което искате да премахнете.",
		remove_notice_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "frozen_objects_scan",
		frozen_objects_scan_command_help = "Сканира замразени обекти от моделният хеш и ги записва във файл на сървъра.",
		frozen_objects_scan_command_parameter_model_name = "име на модела",
		frozen_objects_scan_command_parameter_model_name_help = "Името на модела на обекта, който искате да сканирате.",
		frozen_objects_scan_command_substitutes = "замразени_обекти",

		-- game/orbitcam
		orbitcam_command = "orbitcam",
		orbitcam_command_help = "Превключване на орбиталната камера.",
		orbitcam_command_substitutes = "орбита",

		-- game/overview
		overview_command = "overview",
		overview_command_help = "Превключване на общия изглед на потребителския интерфейс. Общият изглед представлява мениджър за извънредни взаимодействия, информационен център и преглед на данни.",
		overview_command_substitutes = "",

		-- game/oxy
		oxy_tutorial_command = "oxy_tutorial",
		oxy_tutorial_command_help = "Възпроизвеждане на урока за работа с кислород (oxy) при следващото стартиране на играта.",
		oxy_tutorial_command_substitutes = "",

		-- game/panel
		panel_command = "панел",
		panel_command_help = "Показва мини административна панелка, която ви позволява да видите бележките на играчите и да добавяте нови.",
		panel_command_parameter_server_id = "идентификационен номер на сървъра",
		panel_command_parameter_server_id_help = "Идентификационен номер на сървъра на играча, когото искате да видите панелката на (трябва да е онлайн или да е бил скоро разкачен).",
		panel_command_substitutes = "",

		-- game/ped_messages
		me_command = "аз",
		me_command_help = "Описвайте действията на вашия персонаж.",
		me_command_parameter_message = "съобщение",
		me_command_parameter_message_help = "Съобщението, което искате да изпратите, за да опишете действията си.",
		me_command_substitutes = "",

		do_command = "изпълни",
		do_command_help = "По-добро визуализиране на ролева сцена.",
		do_command_parameter_message = "съобщение",
		do_command_parameter_message_help = "Съобщението, което искате да изпратите, за да помогнете за визуализиране на ролева сцена.",
		do_command_substitutes = "",

		description_command = "описание",
		description_command_help = "Прикачете съобщение към вашия персонаж, за да опишете неговите характеристики.",
		description_command_parameter_message = "съобщение",
		description_command_parameter_message_help = "Съобщението, което искате да прикачите към вашия персонаж.",
		description_command_substitutes = "",

		attempt_command = "опитай",
		attempt_command_help = "Опитай нещо с 50% шанс за успех.",
		attempt_command_parameter_message = "съобщение",
		attempt_command_parameter_message_help = "Съобщение за това, което опитваш.",
		attempt_command_substitutes = "",

		dice_command = "зар",
		dice_command_help = "Хвърли стандартен зар.",
		dice_command_substitutes = "",

		roll_command = "хвърляне",
		roll_command_help = "По-сложно и напреднало хвърляне на зар с персонализирани настройки.",
		roll_command_parameter_rolls = "хвърляния",
		roll_command_parameter_rolls_help = "Броят на хвърлянията, които искаш. Ограничението е 20.",
		roll_command_parameter_max = "макс",
		roll_command_parameter_max_help = "Най-високата стойност, която може да получите при едно хвърляне. Най-високата стойност тук е 100,000.",
		roll_command_substitutes = "",

		card_command = "карта",
		card_command_help = "Изтеглете случайна карта.",
		card_command_substitutes = "",

		ped_messages_command = "съобщения_за_пешеходци",
		ped_messages_command_help = "Превключете дали да се показват съобщения от пешеходците в чата или не.",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "спавн_на_пешеходец",
		ped_spawn_command_help = "Спавн на пешеходец.",
		ped_spawn_command_parameter_model = "модел",
		ped_spawn_command_parameter_model_help = "Моделът на пешеходеца, който искате да спауннете.",
		ped_spawn_command_parameter_weapon = "оръжие",
		ped_spawn_command_parameter_weapon_help = "Какво оръжие трябва да има NPC-то (незадължително - \"false\" за пропускане).",
		ped_spawn_command_parameter_fearless = "неустрашим",
		ped_spawn_command_parameter_fearless_help = "Дали NPC-то трябва да се плаши от оръжия и други (по подразбиране: не).",
		ped_spawn_command_substitutes = "",

		ped_task_command = "пед_задача",
		ped_task_command_help = "Задава задача на NPC-то, което сте предизвикали.",
		ped_task_command_parameter_task = "задача",
		ped_task_command_parameter_task_help = "Задачата, която NPC-тата трябва да изпълнят.",
		ped_task_command_parameter_target = "цел",
		ped_task_command_parameter_target_help = "Идентификаторът на сървъра, към който педите трябва да насочват (по избор).",
		ped_task_command_substitutes = "",

		ped_emote_command = "ped_emote",
		ped_emote_command_help = "Приказва на генерираните педи да изпълнят определен емоут.",
		ped_emote_command_parameter_emote = "емоут",
		ped_emote_command_parameter_emote_help = "Емоутът, който генерираните педи трябва да изпълнят.",
		ped_emote_command_substitutes = "",

		ped_remove_command = "ped_remove",
		ped_remove_command_help = "Премахва всякакви генерирани педи.",
		ped_remove_command_substitutes = "",

		list_ped_emotes_command = "list_ped_emotes",
		list_ped_emotes_command_help = "Изписва всички налични емоти на педи.",
		list_ped_emotes_command_substitutes = "",

		list_ped_tasks_command = "list_ped_tasks",
		list_ped_tasks_command_help = "Изписва всички налични задачи на педи.",
		list_ped_tasks_command_substitutes = "",

		-- game/ped_steal
		ped_steal_command = "ped_steal",
		ped_steal_command_help = "Краде педа на някого.",
		ped_steal_command_parameter_server_id = "server id",
		ped_steal_command_parameter_server_id_help = "Сървър идентификацията на играча.",
		ped_steal_command_substitutes = "steal_ped",

		-- game/ped_takeover
		takeover_ped_command = "takeover_ped",
		takeover_ped_command_help = "Дава ви контрол над определен пед.",
		takeover_ped_command_parameter_network_id = "ид. на мрежата",
		takeover_ped_command_parameter_network_id_help = "Идентификационен номер на мрежата на педа, който искате да превземете.",
		takeover_ped_command_substitutes = "превземи",

		-- game/ped_tasks
		ped_debug_command = "ped_debug",
		ped_debug_command_help = "Отстранява грешки и предоставя информация за педа.",
		ped_debug_command_parameter_network_id = "ид. на мрежата",
		ped_debug_command_parameter_network_id_help = "Идентификационен номер на мрежата на педа.",
		ped_debug_command_substitutes = "",

		-- game/phone_numbers
		custom_phone_number_command = "custom_phone_number",
		custom_phone_number_command_help = "Променете вашия телефонен номер.",
		custom_phone_number_command_parameter_phone_number = "телефонен номер",
		custom_phone_number_command_parameter_phone_number_help = "Телефонният номер, който бихте искали да промените. Уверете се, че следва формата на XXX-XXXX.",
		custom_phone_number_command_substitutes = "custom_number",

		phone_number_available_command = "phone_number_available",
		phone_number_available_command_help = "Проверете дали определен телефонен номер е наличен.",
		phone_number_available_command_parameter_phone_number = "телефонен номер",
		phone_number_available_command_parameter_phone_number_help = "Телефонният номер, който бихте искали да проверите дали е наличен. Уверете се, че следва формата на XXX-XXXX.",
		phone_number_available_command_substitutes = "достъпен_номер",

		-- game/player_control
		drive_for_command = "кормиш",
		drive_for_command_help = "Вземете контрол над превозното средство на играча и като шофьор го караме ние.",
		drive_for_command_parameter_server_id = "сървър идентификатор",
		drive_for_command_parameter_server_id_help = "Сървърният идентификатор на играча, когото искате да превземете.",
		drive_for_command_substitutes = "",

		-- game/player_scales
		set_player_scale_command = "задай_размител",
		set_player_scale_command_help = "Задайте размера на играча.",
		set_player_scale_command_parameter_scale = "размер",
		set_player_scale_command_parameter_scale_help = "Размерът, който искате да зададете на играча.",
		set_player_scale_command_parameter_server_id = "идентификатор на сървъра",
		set_player_scale_command_parameter_server_id_help = "Идентификаторът на сървъра, за който искате да зададете размера. Ако оставите това поле празно, автоматично ще бъде избран вашият собствен идентификатор.",
		set_player_scale_command_substitutes = "player_scale, set_player_size, player_size",

		-- game/player_stats
		player_stats_command = "player_stats",
		player_stats_command_help = "Превключва функцията за статистиките на играча.",
		player_stats_command_parameter_render_range = "дистанция за отрисуване",
		player_stats_command_parameter_render_range_help = "Променете дистанцията за отрисуване на играчите. По подразбиране е 200.",
		player_stats_command_substitutes = "",

		-- game/pole_dancing
		pole_dancing_offset_command = "изместване_на_пол_танцуване",
		pole_dancing_offset_command_help = "Превключване на инструмента за отстъпи на пола за танцуване.",
		pole_dancing_offset_command_parameter_model_name = "име на модела",
		pole_dancing_offset_command_parameter_model_name_help = "Името на модела, който искате да промените.",
		pole_dancing_offset_command_substitutes = "",

		-- game/properties
		properties_debug_command = "свалянето_на_свойствата",
		properties_debug_command_help = "Превключете дебъг инструмента за свойствата.",
		properties_debug_command_substitutes = "свойства",

		property_locate_command = "намиране_на_собствеността",
		property_locate_command_help = "Намери имот.",
		property_locate_command_parameter_address = "адрес",
		property_locate_command_parameter_address_help = "Адресът на имота, който желаете да намерите.",
		property_locate_command_substitutes = "намери",

		-- game/prop_hide
		prop_hide_command = "скрий_обект",
		prop_hide_command_help = "Включва/изключва скриването на обекти.",
		prop_hide_command_substitutes = "",

		-- game/props
		props_manage_command = "управлявай_обекти",
		props_manage_command_help = "Управлявайте близките обекти.",
		props_manage_command_substitutes = "управление_на_обекти, mp",

		spawn_prop_command = "създай_обект",
		spawn_prop_command_help = "Използвайте за появяване на обект.",
		spawn_prop_command_parameter_model_hash = "модел",
		spawn_prop_command_parameter_model_hash_help = "Моделът на обекта, който искате да се появи.",
		spawn_prop_command_parameter_network = "мрежа",
		spawn_prop_command_parameter_network_help = "Искате ли да свържете обекта към мрежата? Препоръчва се да активирате това само за обекти, които трябва да могат да се движат.",
		spawn_prop_command_parameter_no_pickup = "не може да се вдига",
		spawn_prop_command_parameter_no_pickup_help = "Този обект може ли само да се вдига от супер админите?",
		spawn_prop_command_substitutes = "",

		props_debug_command = "debugirane_na_pov",
		props_debug_command_help = "Отстранява грешки с всички обекти около вас.",
		props_debug_command_substitutes = "",

		delete_prop_command = "iztrivane_na_obekt",
		delete_prop_command_help = "Изтрива определен обект по зададен идентификатор.",
		delete_prop_command_parameter_prop_id = "идентификатор на обекта",
		delete_prop_command_parameter_prop_id_help = "Идентификаторът на обекта, който искате да изтриете.",
		delete_prop_command_substitutes = "",

		wipe_props_command = "izchistvane_na_obekti",
		wipe_props_command_help = "Изчиства обекти около вас.",
		wipe_props_command_parameter_radius = "радиус",
		wipe_props_command_parameter_radius_help = "Радиусът на изчистването (1-250).",
		wipe_props_command_substitutes = "",

		-- game/racing
		race_leave_command = "излизане_от_състезание",
		race_leave_command_help = "Напуснете състезанието, в което сте.",
		race_leave_command_substitutes = "прекрати_състезание",

		race_share_command = "сподели_състезание",
		race_share_command_help = "Споделете състезателна писта с друг играч.",
		race_share_command_parameter_server_id = "идентификатор_на_сървъра",
		race_share_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, с когото искате да споделите писта.",
		race_share_command_parameter_track_name = "име_на_писта",
		race_share_command_parameter_track_name_help = "Името на пистата, която искате да споделите.",
		race_share_command_substitutes = "",

		race_record_command = "запис_на_състезание",
		race_record_command_help = "Записване на състезание.",
		race_record_command_substitutes = "",

		race_save_command = "запис_на_състезание",
		race_save_command_help = "Записване на състезание.",
		race_save_command_parameter_track_name = "име_на_писта",
		race_save_command_parameter_track_name_help = "Името, под което искате да го запишете.",
		race_save_command_parameter_track_type = "вид_на_пистата",
		race_save_command_parameter_track_type_help = "Типът на пистата за състезанието.",
		race_save_command_substitutes = "",

		race_delete_command = "изтриване_на_състезание",
		race_delete_command_help = "Изтриване на състезание.",
		race_delete_command_parameter_track_name = "име на пистата",
		race_delete_command_parameter_track_name_help = "Името на пистата, която искате да изтриете.",
		race_delete_command_substitutes = "",

		race_list_command = "race_list",
		race_list_command_help = "Изброява всички запазени състезания.",
		race_list_command_substitutes = "",

		race_load_command = "race_load",
		race_load_command_help = "Зарежда състезание.",
		race_load_command_parameter_track_name = "име на пистата",
		race_load_command_parameter_track_name_help = "Името на пистата, която искате да заредите.",
		race_load_command_substitutes = "",

		race_start_command = "race_start",
		race_start_command_help = "Стартира състезание.",
		race_start_command_parameter_amount = "сума",
		race_start_command_parameter_amount_help = "Цената за участие в състезанието.",
		race_start_command_parameter_start_delay = "закъснение на старта",
		race_start_command_parameter_start_delay_help = "Закъснение на старта в секунди.",
		race_start_command_parameter_laps = "обиколки",
		race_start_command_parameter_laps_help = "Брой обиколки.",
		race_start_command_substitutes = "",

		race_cancel_command = "откажи_състезание",
		race_cancel_command_help = "Откажи състезание.",
		race_cancel_command_substitutes = "",

		race_checkpoints_command = "точки_за_състезание",
		race_checkpoints_command_help = "Превключване на точките за състезание.",
		race_checkpoints_command_substitutes = "",

		race_sounds_command = "race_sounds",
		race_sounds_command_help = "Превключете звуците.",
		race_sounds_command_substitutes = "",

		-- game/radio
		radio_command = "радио",
		radio_command_help = "Превключване на радио интерфейса.",
		radio_command_substitutes = "",

		radio_debug_command = "radio_debug",
		radio_debug_command_help = "Превключване на радио отстраняване на грешки.",
		radio_debug_command_substitutes = "",

		frequency_command = "честота",
		frequency_command_help = "Задаване на честотата на радиото.",
		frequency_command_parameter_frequency = "честота",
		frequency_command_parameter_frequency_help = "Честотата, на която искате да отидете.",
		frequency_command_substitutes = "честота",

		force_frequency_command = "force_frequency",
		force_frequency_command_help = "Присъединете се към радиочестота без да имате радио или без да сте на задължение.",
		force_frequency_command_parameter_frequency = "честота",
		force_frequency_command_parameter_frequency_help = "Честотата, на която искате да отидете.",
		force_frequency_command_substitutes = "",

		random_frequency_command = "случайна_честота",
		random_frequency_command_help = "Задава радиото ви на случайна честота.",
		random_frequency_command_substitutes = "случайна_чест, слч_чест",

		radio_sounds_command = "звуци_на_радиото",
		radio_sounds_command_help = "Настройва силата на звуковите ефекти на радиото.",
		radio_sounds_command_parameter_volume = "сила на звука",
		radio_sounds_command_parameter_volume_help = "Силата на звука на звуковите ефекти на радиото. Стойността трябва да бъде между 0 и 1. По подразбиране е 0.1. Ако оставите това празно, ще се върне текущата ви сила на звука.",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "сила_на_радиото",
		radio_volume_command_help = "Настройва силата на радиото.",
		radio_volume_command_parameter_volume = "ниво на сила",
		radio_volume_command_parameter_volume_help = "Нивото на звука на радиото. Стойността е в проценти и трябва да бъде между 0 и 100. По подразбиране е 50%. Ако не въведете нищо, ще ви върне текущото ниво на звука.",
		radio_volume_command_substitutes = "звук",

		-- game/reflect
		reflect_damage_command = "отрази_повреда",
		reflect_damage_command_help = "Превключва отразяване на щети. (Всяко существо, което ви наранява, ще бъде наранено също)",
		reflect_damage_command_substitutes = "отразяване",

		-- game/relationships
		relationships_debug_command = "отношения_отстраняване_на_грешки",
		relationships_debug_command_help = "Превключва дебагера за връзките на NPC-тата.",
		relationships_debug_command_substitutes = "",

		-- game/reskin
		reskin_command = "промяна_на_изгледа",
		reskin_command_help = "Извикване на промяна на изгледа за играч.",
		reskin_command_parameter_server_id = "идентификационен номер на сървъра",
		reskin_command_parameter_server_id_help = "Идентификационният номер на играча, за когото искате да активирате нов външен вид. Оставете празно, за да изберете автоматично себе си.",
		reskin_command_substitutes = "",

		redeem_reskin_command = "получи_нов_външен_вид",
		redeem_reskin_command_help = "Активирайте закупен външен вид.",
		redeem_reskin_command_substitutes = "",

		-- game/riot_mode
		toggle_riot_mode_command = "режим_бунт",
		toggle_riot_mode_command_help = "Превключете режима на бунта за всички играчи.",
		toggle_riot_mode_command_substitutes = "",

		add_riot_player_command = "добави_играч_в_режим_бунт",
		add_riot_player_command_help = "Добавете играч в 'списъка с бунтовници', които ще бъдат атакувани от околните граждани.",
		add_riot_player_command_parameter_server_id = "идентификатор на сървъра",
		add_riot_player_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, който искате да добавите. Оставете това поле празно, за да се изберете автоматично.",
		add_riot_player_command_substitutes = "",

		remove_riot_player_command = "remove_riot_player",
		remove_riot_player_command_help = "Премахване на играч от 'списъка с безпорядъци'.",
		remove_riot_player_command_parameter_server_id = "идентификатор на сървъра",
		remove_riot_player_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, който искате да премахнете. Оставете това поле празно, за да се изберете автоматично.",
		remove_riot_player_command_substitutes = "",

		-- game/rooms
		rooms_debug_command = "отстраняване_на_проблеми_стаи",
		rooms_debug_command_help = "Преглед на всички стаи.",
		rooms_debug_command_substitutes = "",

		-- game/rules
		explain_rule_command = "обясни_правило",
		explain_rule_command_help = "Показване на обяснението на определено правило.",
		explain_rule_command_parameter_number = "номер",
		explain_rule_command_parameter_number_help = "Номерът на правилото (пример: 1.1)",
		explain_rule_command_substitutes = "правило",

		rules_command = "правила",
		rules_command_help = "Отваря комуникационните правила във вашия браузър.",
		rules_command_substitutes = "",

		-- game/savings_accounts
		savings_accounts_command = "сметки_спестявания",
		savings_accounts_command_help = "Прегледайте и управлявайте всичките си сметки за спестявания.",
		savings_accounts_command_substitutes = "спестявания, сметки",

		-- game/scoreboard
		metagame_command = "метагейм",
		metagame_command_help = "Превключи постоянното изчертаване на идентификаторите на играчите.",
		metagame_command_substitutes = "meta, m",

		hide_server_id_command = "скрий_id_от_сървъра",
		hide_server_id_command_help = "Скрива или показва твоето ID от сървъра отгоре на главата ти.",
		hide_server_id_command_substitutes = "нонеопитвайсе",

		-- game/security_cameras
		security_cameras_command = "камери_за_осигурителна_система",
		security_cameras_command_help = "Превключва камерите за осигурителната система.",
		security_cameras_command_substitutes = "осигурителни_камери, камери_за_осигуряване, км, км_кам, кмкам, кам_осиг, камсиг, кам_осигуровка, камсигуровка, кам_за_осигурителна_система, камсистема_осиг, камсистема",

		security_cameras_scan_command = "security_cameras_scan",
		security_cameras_scan_command_help = "Вземете всички известни обекти на видеонаблюдение и ги запазете в текстов файл.",
		security_cameras_scan_command_substitutes = "сканирай, сканирай_камери, сканирайкамери",

		security_cameras_health_command = "security_cameras_health",
		security_cameras_health_command_help = "Превключете инструмента за отстраняване на проблеми със защитни камери.",
		security_cameras_health_command_substitutes = "здравето_на_камерите",

		-- game/shield
		shield_command = "shield",
		shield_command_help = "Превключване на балистичния щит.",
		shield_command_substitutes = "",

		-- game/shockwaves
		create_shockwave_command = "create_shockwave",
		create_shockwave_command_help = "Създава ударна вълна на вашата текуща позиция.",
		create_shockwave_command_parameter_force = "сила",
		create_shockwave_command_parameter_force_help = "Силата на ударната вълна (1 - 1000).",
		create_shockwave_command_parameter_radius = "радиус",
		create_shockwave_command_parameter_radius_help = "Радиусът на ударната вълна (1 - 100).",
		create_shockwave_command_substitutes = "ударна_вълна",

		push_player_command = "отблъскване_на_играч",
		push_player_command_help = "Отблъсква играч или превозното средство, с което си.",
		push_player_command_parameter_server_id = "ид на сървър",
		push_player_command_parameter_server_id_help = "Идентификаторът на сървъра на играча.",
		push_player_command_substitutes = "плъзгане",

		-- game/shrooms
		draw_shroom_areas_command = "показване_на_шахти",
		draw_shroom_areas_command_help = "Изчертава всички области с гъби и добавя още.",
		draw_shroom_areas_command_substitutes = "шахти",

		-- game/smell
		smell_command = "миризма",
		smell_command_help = "Усещане на аромат в областта около вас за нещо необичайно.",
		smell_command_substitutes = "",

		-- game/sound_effects
		play_sound_command = "възпроизвеждане_на_звук",
		play_sound_command_help = "Възпроизвежда звуков ефект на вашето местоположение.",
		play_sound_command_parameter_sound = "звук",
		play_sound_command_parameter_sound_help = "Името на звуковия ефект, който искате да възпроизведете.",
		play_sound_command_substitutes = "",

		-- game/spying
		search_for_devices_command = "търси_устройства",
		search_for_devices_command_help = "Търси близки устройства.",
		search_for_devices_command_substitutes = "търсиустройства, тстанд",

		-- game/spectating
		spectate_command = "наблюдавай",
		spectate_command_help = "Наблюдавай определен играч.",
		spectate_command_parameter_server_id = "идентификатор на сървъра",
		spectate_command_parameter_server_id_help = "Идентификаторът на сървъра на играча, когото искате да наблюдавате.",
		spectate_command_substitutes = "spec", -- Замести командата "spec",

		-- game/status
		status_reset_command = "status_reset",
		status_reset_command_help = "Reset status levels.",
		status_reset_command_parameter_server_id = "server id",
		status_reset_command_parameter_server_id_help = "The player's server ID you are wanting to reset the status for. If left at blank, yourself will automatically be selected.",
		status_reset_command_substitutes = "sr", -- Замести командата "sr",

		toggle_status_command = "toggle_status",
		toggle_status_command_help = "Disables (or enables) certain statuses like hunger, thirst and stress.",
		toggle_status_command_substitutes = "",

		set_body_armor_command = "set_body_armor",
		set_body_armor_command_help = "Задава ниво на броня за даден играч.",
		set_body_armor_command_parameter_server_id = "сървърен идентификатор",
		set_body_armor_command_parameter_server_id_help = "Сървърният идентификатор на играча, за когото искате да зададете нивото на броня. Можете да оставите това поле празно или да го зададете като `0`, за да изберете себе си. Също така можете да поставите `-1`, за да зададете нивото на броня за всички играчи.",
		set_body_armor_command_parameter_body_armor_level = "ниво на броня",
		set_body_armor_command_parameter_body_armor_level_help = "Нивото на броня, което искате да зададете. Това стойност може да бъде от `0` до `100`. Ако оставите това поле празно или зададете невалидна стойност, ще се използва стойността `100` по подразбиране.",
		set_body_armor_command_substitutes = "body_armor, armor",

		-- game/streamer_mode
		toggle_streamer_mode_command = "toggle_streamer_mode",
		toggle_streamer_mode_command_help = "Превключете стриймър режима. Това ще предотврати играчите от използване на емотита, свързани с '18+', когато сте в близост и други техни подобни дейности.",
		toggle_streamer_mode_command_substitutes = "streamer_mode, streamer",

		-- game/sync
		time_hour_command = "time_hour",
		time_hour_command_help = "Задайте текущия час на часовника.",
		time_hour_command_parameter_hour = "hour",
		time_hour_command_parameter_hour_help = "Часът, на който искате да настроите часовника. Стойността трябва да бъде между 0 и 23.",
		time_hour_command_parameter_transition = "преход",
		time_hour_command_parameter_transition_help = "Ако времето трябва да се променя с плавен преход (да/не, по подразбиране е не).",
		time_hour_command_substitutes = "час",

		time_minute_command = "time_minute",
		time_minute_command_help = "Задай текущата минута на часовника.",
		time_minute_command_parameter_minute = "минута",
		time_minute_command_parameter_minute_help = "Минутата, на която искате да зададете часовника. Стойността трябва да бъде между 0 и 59.",
		time_minute_command_substitutes = "минута",

		local_time_command = "местно_време",
		local_time_command_help = "Задава часа, но само за вас.",
		local_time_command_parameter_time = "време",
		local_time_command_parameter_time_help = "Часът, който искате да зададете. Стойността трябва да бъде между 0:00 и 23:59.",
		local_time_command_substitutes = "",

		local_weather_command = "местно_времето",
		local_weather_command_help = "Задава времето, но само за вас.",
		local_weather_command_parameter_weather = "времето",
		local_weather_command_parameter_weather_help = "Времето, което искате да зададете. Използвайте същите стойности като /weather.",
		local_weather_command_substitutes = "",

		brighter_nights_command = "по-светли нощи",
		brighter_nights_command_help = "Задава часа на 12:00 ч. следобед и времето на ясно, но само за вас.",
		brighter_nights_command_substitutes = "",

		weather_command = "време",
		weather_command_help = "Промени времето.",
		weather_command_parameter_weather = "име на време",
		weather_command_parameter_weather_help = "Името на времето, което искате да зададете. Валидни имена на време са EXTRASUNNY, CLEAR, CLOUDS, SMOG, FOGGY, OVERCAST, RAIN, THUNDER, CLEARING, NEUTRAL, SNOW, BLIZZARD, SNOWLIGHT, XMAS и HALLOWEEN.",
		weather_command_substitutes = "",

		advance_weather_command = "промяна_на_времето",
		advance_weather_command_help = "Природно преминаване към следващата прогноза за времето.",
		advance_weather_command_substitutes = "",

		freeze_time_command = "замрази_времето",
		freeze_time_command_help = "Превключване на замразяването на времето.",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "замрази_времето",
		freeze_weather_command_help = "Превключване на замразяването на времето.",
		freeze_weather_command_substitutes = "",

		blackout_command = "без_електричество",
		blackout_command_help = "Превключване на активираното състояние на без електричество.",
		blackout_command_substitutes = "",

		toggle_developer_ambience_command = "превключи_разработчик_амбиент",
		toggle_developer_ambience_command_help = "Превключете разработчичката обстановка.",
		toggle_developer_ambience_command_substitutes = "",

		-- game/tablet
		tablet_command = "таблет",
		tablet_command_help = "Отваря таблет интерфейса (ако имате таблет).",
		tablet_command_substitutes = "",

		-- game/test_server
		test_menu_command = "test_menu",
		test_menu_command_help = "Превключване на тестовото меню на сървъра.",
		test_menu_command_substitutes = "",

		-- game/time_scale
		set_time_scale_command = "set_time_scale",
		set_time_scale_command_help = "Задаване на времевата скала на сървъра.",
		set_time_scale_command_parameter_time_scale = "времева скала",
		set_time_scale_command_parameter_time_scale_help = "Времевата скала, която искате да зададете. Стойността трябва да бъде между 0 и 1.",
		set_time_scale_command_substitutes = "времева_скала, бавно_движение",

		-- game/titanic
		create_titanic_command = "create_titanic",
		create_titanic_command_help = "Създай потъващ Титаник.",
		create_titanic_command_parameter_sink_time = "време за потапяне",
		create_titanic_command_parameter_sink_time_help = "Времето, за което корабът трябва да се потопи в минути.",
		create_titanic_command_substitutes = "",

		-- game/top_down
		top_down_command = "отгоре_надолу",
		top_down_command_help = "Превключва изгледа отгоре надолу.",
		top_down_command_substitutes = "",

		-- game/trackers
		tracker_command = "тракер",
		tracker_command_help = "Превключва видимостта на тракера.",
		tracker_command_substitutes = "",

		trackers_split_command = "тракери_раздел",
		trackers_split_command_help = "Превключва между съхранение на тракерите в рамките на категория на картата и разделени.",
		trackers_split_command_substitutes = "",

		-- game/treasure_maps
		spawn_map_piece_command = "spawn_map_piece",
		spawn_map_piece_command_help = "Спавнете парче от съкровищна карта.",
		spawn_map_piece_command_parameter_map_tier = "степен на картата",
		spawn_map_piece_command_parameter_map_tier_help = "Степента на картата, за която искате да спавнете парче.",
		spawn_map_piece_command_parameter_piece_number = "номер на парче",
		spawn_map_piece_command_parameter_piece_number_help = "Номерът на парчето, което искате да спавнете.",
		spawn_map_piece_command_substitutes = "",

		-- game/tsunami
		set_ocean_scaler_command = "set_ocean_scaler",
		set_ocean_scaler_command_help = "Глобално променя ocean scaler.",
		set_ocean_scaler_command_parameter_intensity = "интензитет",
		set_ocean_scaler_command_parameter_intensity_help = "Интензитетът, който искате да зададете.",
		set_ocean_scaler_command_substitutes = "ocean_scaler, set_waves_intensity, waves_intensity",

		tsunami_toggle_command = "tsunami_toggle",
		tsunami_toggle_command_help = "Превключете постепенна тсунами.",
		tsunami_toggle_command_parameter_minutes = "минути",
		tsunami_toggle_command_parameter_minutes_help = "Броят на минутите, преди цунамито да залива цялата карта. По подразбиране е 60.",
		tsunami_toggle_command_substitutes = "",

		-- game/vdm
		vdm_command = "vdm",
		vdm_command_help = "Позволява на посоченото NPC да опита VDM върху целта.",
		vdm_command_parameter_target = "цел",
		vdm_command_parameter_target_help = "id на целевия играч в сървъра.",
		vdm_command_parameter_network_id = "идентификатор на мрежата",
		vdm_command_parameter_network_id_help = "Идентификатор на мрежата на превозното средство, което се използва за VDM (ако е празно, избира най-близкото превозно средство до вас).",
		vdm_command_substitutes = "",

		vdm_clear_command = "vdm_clear",
		vdm_clear_command_help = "Изчиства всички ваши VDM цели.",
		vdm_clear_command_substitutes = "",

		steal_vehicle_command = "steal_vehicle",
		steal_vehicle_command_help = "Накарва най-близкия NPC да открадне целевото превозно средство.",
		steal_vehicle_command_parameter_network_id = "идентификационен номер на мрежата",
		steal_vehicle_command_parameter_network_id_help = "Идентификационният номер на мрежата на превозното средство.",
		steal_vehicle_command_substitutes = "",

		drive_to_command = "карам_до",
		drive_to_command_help = "Научете пешеходец да кара до отбелязаното място.",
		drive_to_command_parameter_network_id = "идентификационен номер на мрежата",
		drive_to_command_parameter_network_id_help = "Или идентификаторът на мрежата на пешеходеца, идентификаторът на мрежата на превозното средство (на което пешеходецът е шофьор) или оставете празно, за да изберете шофьора на текущото превозно средство.",
		drive_to_command_substitutes = "",

		-- game/voice
		voice_debug_command = "voice_debug",
		voice_debug_command_help = "Превключва дебъгера на гласовата комуникация.",
		voice_debug_command_parameter_server_id = "идентификационен номер на сървъра",
		voice_debug_command_parameter_server_id_help = "Ако искате да превключите 'voice debug' за някого друг, поставете идентификационния им номер на сървъра тук.",
		voice_debug_command_substitutes = "",

		listen_command = "слушай",
		listen_command_help = "Превключва режима на слушане за определен потребител. (Можете да чуете какво казват)",
		listen_command_parameter_server_id = "идентификатор на сървъра",
		listen_command_parameter_server_id_help = "Потребителят, когото искате да слушате.",
		listen_command_substitutes = "",

		toggle_voice_mute_command = "превключи_гласово_покритие",
		toggle_voice_mute_command_help = "Заглушава или отмята покритието на гласа на някого в чат.",
		toggle_voice_mute_command_parameter_server_id = "идентификатор на сървъра",
		toggle_voice_mute_command_parameter_server_id_help = "Потребителят, когото искате да заглушите/отмъкнете.",
		toggle_voice_mute_command_substitutes = "voice_mute",

		change_voice_mode_command = "change_voice_mode",
		change_voice_mode_command_help = "Превключва режима на гласовото въвеждане 'музика' вкл./изкл.. Този режим ще деактивира премахването на шума и отмяната на ехото, което позволява по-ясно възпроизвеждане на музика.",
		change_voice_mode_command_substitutes = "voice_mode",

		-- game/wallhack
		wallhack_command = "wallhack",
		wallhack_command_help = "Превключете Wallhack.",
		wallhack_command_parameter_server_id = "ид на сървъра",
		wallhack_command_parameter_server_id_help = "Ако искате да превключите Wallhack за някого друг, въведете тяхното ид на сървъра тук.",
		wallhack_command_substitutes = "",

		-- game/wizard
		wizard_command = "wizard",
		wizard_command_help = "Отваря менюто на магьосника.",
		wizard_command_parameter_server_id = "ид на сървъра",
		wizard_command_parameter_server_id_help = "Изберете определен играч в менюто (по избор).",
		wizard_command_substitutes = "",

		flashbang_command = "идиокаон",
		flashbang_command_help = "Осветява определен играч с идиокаон.",
		flashbang_command_parameter_server_id = "сървър ID",
		flashbang_command_parameter_server_id_help = "Сървър ID на целевия играч.",
		flashbang_command_substitutes = "",

		flashbang_radius_command = "идиокаон_радиус",
		flashbang_radius_command_help = "Осветява всички играчи в определен радиус.",
		flashbang_radius_command_parameter_radius = "радиус",
		flashbang_radius_command_parameter_radius_help = "Радиусът, в който играчите ще бъдат осветявани.",
		flashbang_radius_command_parameter_include_self = "включва себе си",
		flashbang_radius_command_parameter_include_self_help = "Ако искате да заслепите и себе си.",
		flashbang_radius_command_substitutes = "",

		punch_command = "удар",
		punch_command_help = "Задължава определен играч да удари произволно.",
		punch_command_parameter_server_id = "сървър id",
		punch_command_parameter_server_id_help = "Сървър ID на целевия играч.",
		punch_command_substitutes = "",

		explode_command = "експлозия_играч",
		explode_command_help = "Взривява определен играч.",
		explode_command_parameter_server_id = "сървър id",
		explode_command_parameter_server_id_help = "Сървър ID на целевия играч.",
		explode_command_substitutes = "",

		ignite_player_command = "запали_играч",
		ignite_player_command_help = "Запалва играч за кратко време.",
		ignite_player_command_parameter_server_id = "server id",
		ignite_player_command_parameter_server_id_help = "Сървър ID на целевия играч.",
		ignite_player_command_substitutes = "запали, гори",

		run_command_as_command = "изпълни_команда_като",
		run_command_as_command_help = "Поставя друг играч да изпълни команда.",
		run_command_as_command_parameter_server_id = "server id",
		run_command_as_command_parameter_server_id_help = "Сървър ID на целевия играч.",
		run_command_as_command_parameter_command = "команда",
		run_command_as_command_parameter_command_help = "Командата, която искате да направите играчът да изпълни.",
		run_command_as_command_substitutes = "изпълни-като, sudo",

		ped_reverse_command = "обръщане_на_пешеходеца",
		ped_reverse_command_help = "Накарва най-близкия пешеходец в превозно средство да се обръща назад.",
		ped_reverse_command_substitutes = "",

		ped_forwards_command = "напред_на_пешеходеца",
		ped_forwards_command_help = "Накарва най-близкия пешеходец в превозно средство да кара напред.",
		ped_forwards_command_substitutes = "",

		-- global/entities
		local_entities_debug_command = "локални_обекти-дебъг",
		local_entities_debug_command_help = "Превключва дебъга за локалните обекти.",
		local_entities_debug_command_substitutes = "локални_обекти_дебъг_команди",

		no_ped_population_areas_debug_command = "без_зона_на_населението_debug",
		no_ped_population_areas_debug_command_help = "Превключване на дебъгера 'без зона на населението'.",
		no_ped_population_areas_debug_command_substitutes = "",

		-- global/explosions
		create_explosion_command = "създай_експлозия",
		create_explosion_command_help = "Създай експлозия.",
		create_explosion_command_parameter_explosion_type = "тип на експлозията",
		create_explosion_command_parameter_explosion_type_help = "Типът на експлозията.",
		create_explosion_command_parameter_damage_scale = "мащаб на увреждане",
		create_explosion_command_parameter_damage_scale_help = "Мащаб на щетите.",
		create_explosion_command_parameter_camera_shake = "разтърсване на камерата",
		create_explosion_command_parameter_camera_shake_help = "Разтърсването на камерата.",
		create_explosion_command_substitutes = "exp, избухни, избухване",

		-- global/functions
		confirm_yes_command = "да",
		confirm_yes_command_help = "Потвърждаване на текущото действие.",
		confirm_yes_command_substitutes = "потвърди",

		confirm_no_command = "не",
		confirm_no_command_help = "Отказ на текущото действие.",
		confirm_no_command_substitutes = "отмени, прекрати",

		-- global/locales
		show_raw_locales_command = "покажи_сурови_лоци",
		show_raw_locales_command_help = "Превключете показването на суровите имена на локациите, за да помогнете при отстраняването на грешки в преводите.",
		show_raw_locales_command_substitutes = "",

		-- global/states
		entity_states_command = "състояния_на_обект",
		entity_states_command_help = "Извежда всички състояния на определен обект.",
		entity_states_command_parameter_network_id = "мрежов идентификатор",
		entity_states_command_parameter_network_id_help = "Мрежов идентификатор на обекта.",
		entity_states_command_substitutes = "",

		draw_entity_states_command = "изобрази_състояния_на_обект",
		draw_entity_states_command_help = "Показва всички обекти с едно или повече състояния.",
		draw_entity_states_command_substitutes = "",

		-- illegal/drugs
		drugs_debug_command = "drugs_debug",
		drugs_debug_command_help = "Отстранява грешки в локациите за продажба на наркотици.",
		drugs_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "изчисти_интерфейси",
		clear_uis_command_help = "Изчисти всички фокусирания UI.",
		clear_uis_command_substitutes = "",

		interface_focuses_command = "interface_focuses",
		interface_focuses_command_help = "Провери кои интерфейси са фокусирани.",
		interface_focuses_command_substitutes = "interface_focus, focus, focuses",

		--jobs/doj
		lookup_character_command = "търси_персонаж",
		lookup_character_command_help = "Търси персонаж на база на търсене, за да бъде използвано от съдии.",
		lookup_character_command_parameter_type = "тип",
		lookup_character_command_parameter_type_help = "Или `number` или `twitter`.",
		lookup_character_command_parameter_search = "търсене",
		lookup_character_command_parameter_search_help = "Твоето търсено стойност (трябва да съвпада точно).",
		lookup_character_command_substitutes = "търсене",

		create_vehicle_hold_command = "create_vehicle_hold",
		create_vehicle_hold_command_help = "Създава задържане на превозно средство. Това ще получи превозното средство да бъде задържано от полицията за продължителен период от време. (Забележка: Всички вече взети превозни средства ще продължат да съществуват)",
		create_vehicle_hold_command_parameter_time = "време",
		create_vehicle_hold_command_parameter_time_help = "За колко време трябва да бъде задържано превозното средство (максимално: 6 седмици). Използваеми единици: `ч` - часове, `д` - дни и `с` - седмици. Пример: `3д` за 3 дни.",
		create_vehicle_hold_command_parameter_plate = "номер",
		create_vehicle_hold_command_parameter_plate_help = "Номер на превозното средство.",
		create_vehicle_hold_command_substitutes = "задръж_превоз",

		--jobs/duty
		toggle_duty_status_command = "toggle_duty_status",
		toggle_duty_status_command_help = "Превключва статуса ви на задължение/без задължение.",
		toggle_duty_status_command_parameter_server_id = "идентификатор на сървъра",
		toggle_duty_status_command_parameter_server_id_help = "Целевият идентификатор на сървъра или празно, ако искате да превключите своя собствен статус на задължение.",
		toggle_duty_status_command_substitutes = "duty_status, duty",

		toggle_training_command = "превключване_на_обучение",
		toggle_training_command_help = "Превключва вашето състояние на обучение.",
		toggle_training_command_substitutes = "обучение",

		toggle_operator_status_command = "превключване_на_статус_оператор",
		toggle_operator_status_command_help = "Превключва вашето състояние на аварийен оператор. С това включено, ще получите възможността да приемате обаждания на 911.",
		toggle_operator_status_command_substitutes = "оператор, превключване_оператор, операторски_статус",

		-- jobs/police
		aim_assist_command = "помощ_при_целта",
		aim_assist_command_help = "Превключва помощта на PD при целта. (В памет на Натан Спенсър.)",
		aim_assist_command_substitutes = "",

		undercover_command = "нелегален",
		undercover_command_help = "Превключва дали сте под прикритие. Това ще скрие различни неща, които обикновено разкриват полицейския ви статус.",
		undercover_command_substitutes = "",

		active_robberies_command = "активни_ограбвания",
		active_robberies_command_help = "Изброява всички в момента активни (отворени) магазини, банки и ювелирни магазини.",
		active_robberies_command_substitutes = "",

		pd_impound_command = "pd_задържане",
		pd_impound_command_help = "Това команда задържа автомобила на играч за определен период от време.",
		pd_impound_command_parameter_minutes = "минути",
		pd_impound_command_parameter_minutes_help = "За колко време да бъде задържано превозното средство (между 1 минута и 48 часа).",
		pd_impound_command_substitutes = "",

		dispatch_command = "изпращане",
		dispatch_command_help = "Изпраща съобщение в полицейската диспечерска.",
		dispatch_command_parameter_message = "съобщение",
		dispatch_command_parameter_message_help = "Съобщението, което искате да изпратите.",
		dispatch_command_substitutes = "",

		police_drive_mode_command = "режим_на_шофиране_на_полицейски_коли",
		police_drive_mode_command_help = "Превключва режима на шофиране на вашия полицейски автомобил.",
		police_drive_mode_command_parameter_mode = "режим",
		police_drive_mode_command_parameter_mode_help = "Режимът, който искате да зададете. \"D\" за шофиране и \"S\" за спортен (спортният е по подразбиране).",
		police_drive_mode_command_substitutes = "режим_шофиране",

		-- jobs/state
		license_give_command = "дай_лиценз",
		license_give_command_help = "Дай лиценз.",
		license_give_command_parameter_character_id = "идентификатор_герой",
		license_give_command_parameter_character_id_help = "Идентификаторът на героя, на когото искате да дадете лиценза.",
		license_give_command_parameter_license = "лиценз",
		license_give_command_parameter_license_help = "Лицензът, който искате да дадете. Можете да изброите наличните лицензи чрез `/license_list`.",
		license_give_command_substitutes = "give_license, add_license",

		license_remove_command = "license_remove",
		license_remove_command_help = "Премахва лиценз.",
		license_remove_command_parameter_character_id = "идентификатор на герой",
		license_remove_command_parameter_character_id_help = "Идентификационният номер на героя, от когото искате да премахнете лиценза.",
		license_remove_command_parameter_license = "лиценз",
		license_remove_command_parameter_license_help = "Лицензът, който искате да премахнете. Можете да изброите наличните лицензи с помощта на `/license_list`.",
		license_remove_command_substitutes = "remove_license",

		license_list_command = "license_list",
		license_list_command_help = "Изброява всички налични лицензи.",
		license_list_command_substitutes = "list_licenses",

		licenses_check_command = "licenses_check",
		licenses_check_command_help = "Проверете лицензите на някого.",
		licenses_check_command_parameter_character_id = "идентификатор на героя",
		licenses_check_command_parameter_character_id_help = "Идентификаторът на героя, за когото искате да проверите лицензите.",
		licenses_check_command_substitutes = "check_license, проверка_на_лиценз, проверка_на_лицензи",

		licenses_command = "лицензи",
		licenses_command_help = "Получете своите лицензи.",
		licenses_command_substitutes = "",

		-- jobs/tow
		toggle_mechanic_messages_command = "превключване_на_съобщенията_за_механик",
		toggle_mechanic_messages_command_help = "Превключва дали да получавате съобщения от механика.",
		toggle_mechanic_messages_command_substitutes = "механик_съобщения",

		-- vehicles/boats
		toggle_anchor_command = "превключване_на_котва",
		toggle_anchor_command_help = "Превключва котвата на близост лодка.",
		toggle_anchor_command_substitutes = "котва",

		-- vehicles/damage
		vehicle_damage_debug_command = "отстраняване_на_повреди_на_превозно_средство_отстраняване",
		vehicle_damage_debug_command_help = "Отстранява текущите стойности на повреди на превозните средства.",
		vehicle_damage_debug_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "задаване_на_гориво",
		set_fuel_command_help = "Задава нивото на горивото на превозното средство, в което се намирате.",
		set_fuel_command_parameter_fuel_level = "ниво_на_горивото",
		set_fuel_command_parameter_fuel_level_help = "Нивото на горивото, което искате да зададете. Оставянето на това поле празно ще автоматично избере `100`.",
		set_fuel_command_substitutes = "гориво",

		-- vehicles/garages
		toggle_garage_debug_command = "превключи_дебъг_на_гараж",
		toggle_garage_debug_command_help = "Превключва дебъга на гаража.",
		toggle_garage_debug_command_substitutes = "дебъг_на_гараж",

		garage_vehicle_command = "паркирай_кола_в_гараж",
		garage_vehicle_command_help = "Изтрива кола и я изпраща в гараж.",
		garage_vehicle_command_parameter_repair = "поправка",
		garage_vehicle_command_parameter_repair_help = "Дали превозното средство трябва да бъде поправено преди да бъде съхранено.",
		garage_vehicle_command_substitutes = "гараж",

		ungarage_vehicle_command = "изваждане_на_превозно_средство",
		ungarage_vehicle_command_help = "Изваждане на превозно средство от неговата гаража на текущото ви местоположение.",
		ungarage_vehicle_command_parameter_vehicle_id = "идентификатор_на_превозното_средство",
		ungarage_vehicle_command_parameter_vehicle_id_help = "Идентификаторът на превозното средство, което искате да извадите.",
		ungarage_vehicle_command_substitutes = "изваждане_от_гаража",

		-- vehicles/keys
		give_key_command = "дай_ключ",
		give_key_command_help = "Дай ключ за превозно средство на близък човек.",
		give_key_command_parameter_server_id = "сървър id",
		give_key_command_parameter_server_id_help = "Сървър id на играча, на когото искате да дадете ключа. Можете да го оставите празно (или на 0), за да го дадете на най-близкия човек.",
		give_key_command_substitutes = "дайключ",

		hotwire_vehicle_command = "откража_превозното_средство",
		hotwire_vehicle_command_help = "Незабавно откражете превозното средство, в което се намирате.",
		hotwire_vehicle_command_parameter_server_id = "идентификатор на сървъра",
		hotwire_vehicle_command_parameter_server_id_help = "Направете друг играч незабавно да краде превозното средство, в което се намират.",
		hotwire_vehicle_command_substitutes = "незаключвате",

		pickup_keys_command = "вземете_ключовете",
		pickup_keys_command_help = "Вземете ключовете на най-близкото превозно средство.",
		pickup_keys_command_substitutes = "",

		keys_command = "ключове",
		keys_command_help = "Вземете ключовете на превозното средство, в което в момента се намирате.",
		keys_command_parameter_server_id = "идентификатор на сървъра",
		keys_command_parameter_server_id_help = "Дайте на друг играч ключовете на превозното средство, в което се намират.",
		keys_command_substitutes = "",

		-- vehicles/modifications
		wheel_offset_command = "offset_na_kolyata",
		wheel_offset_command_help = "Променете отместването на колелата на превозното средство.",
		wheel_offset_command_parameter_wheels = "предно/задно",
		wheel_offset_command_parameter_wheels_help = "Какви колела искате да промените?",
		wheel_offset_command_parameter_value = "стойност",
		wheel_offset_command_parameter_value_help = "Количеството, което искате да промените. Това може да бъде някъде от -0.15 до 0.2, като 0 е стойността по подразбиране.",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "въртене_на_колелата",
		wheel_rotation_command_help = "Променете въртенето на колелата на превозното средство.",
		wheel_rotation_command_parameter_wheels = "предни/задни",
		wheel_rotation_command_parameter_wheels_help = "Кои гуми искате да промените?",
		wheel_rotation_command_parameter_value = "стойност",
		wheel_rotation_command_parameter_value_help = "Количеството, което искате да промените. Може да бъде в интервала от -0.5 до 0.5, като 0 е стандартната стойност.",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		fake_plate_command = "фалшива_табела",
		fake_plate_command_help = "Превключва фалшивата табела на текущото превозно средство.",
		fake_plate_command_substitutes = "",

		plate_available_command = "достъпна_табела",
		plate_available_command_help = "Проверява дали е наличен номер за табела за командата `/custom_plate`.",
		plate_available_command_parameter_plate_number = "номер на табелата",
		plate_available_command_parameter_plate_number_help = "Номерът на табелата, която искате да проверите. Номерата на табелата могат да бъдат само до 8 знака и могат да съдържат само главни букви и цифри.",
		plate_available_command_substitutes = "",

		custom_plate_command = "персонализирана_табела",
		custom_plate_command_help = "Задайте персонализирана табела за едно от Вашите превозни средства.",
		custom_plate_command_parameter_vehicle_id = "идентификатор на превозното средство",
		custom_plate_command_parameter_vehicle_id_help = "Идентификаторът на превозното средство, на което искате да зададете персонализираната табела. (Можете да намерите този идентификатор в гаража си)",
		custom_plate_command_parameter_plate_number = "номер на табелата",
		custom_plate_command_parameter_plate_number_help = "Номер на табелата, който искате да зададете. Номерата на табелата могат да бъдат до 8 знака и могат да съдържат само главни букви и цифри.",
		custom_plate_command_substitutes = "",

		-- vehicles/runways
		ifr_command = "ifr",
		ifr_command_help = "Превключване на IFR режим (показване на помощ при кацане за близките писти).",
		ifr_command_substitutes = "",

		-- vehicles/sirens
		mute_sirens_command = "mute_sirens",
		mute_sirens_command_help = "Заглушаване на всички сирени и клаксони.",
		mute_sirens_command_substitutes = "",

		-- vehicles/vehicles
		flip_command = "flip",
		flip_command_help = "Обръщане на обръщено превозно средство.",
		flip_command_substitutes = "",

		toggle_roll_control_command = "превключване_на_контрол_на_котене",
		toggle_roll_control_command_help = "Превключва контрола на котето и въздушния контрол.",
		toggle_roll_control_command_substitutes = "коте_контрол",

		enable_ls_customs_command = "активиране_на_ls_customs",
		enable_ls_customs_command_help = "Превключва менюто на LS Customs.",
		enable_ls_customs_command_substitutes = "ls_customs",

		toggle_gear_animation_command = "превключване_на_анимацията_на_скоростта",
		toggle_gear_animation_command_help = "Превключва анимацията на превключване на скоростите и звуковете в колите.",
		toggle_gear_animation_command_substitutes = "анимация_на_скорос",

		turtle_vehicle_command = "turtle_vehicle",
		turtle_vehicle_command_help = "Показва автомобила ви на обрат и го поставя на покрива му.",
		turtle_vehicle_command_substitutes = "turtle",

		door_command = "door",
		door_command_help = "Превключва вратата на автомобил.",
		door_command_parameter_door_id = "идентификатор на вратата (1-6)",
		door_command_parameter_door_id_help = "Коя врата на автомобила желаете да отворите? Този параметър се пренаписва, ако сте пътник. Можете също така да използвате тази команда извън автомобил.",
		door_command_substitutes = "",

		window_command = "window",
		window_command_help = "Превключете прозореца на МПС.",
		window_command_parameter_window_id = "идентификатор на прозореца (1-4)",
		window_command_parameter_window_id_help = "Кой прозорец на МПС искате да отворите? Този параметър се заменя, ако сте пътник.",
		window_command_substitutes = "",

		shuffle_command = "препуснете",
		shuffle_command_help = "Препуснете в друго място в МПС.",
		shuffle_command_substitutes = "препуска",

		seat_command = "място",
		seat_command_help = "Преместете се на друго място в МПС.",
		seat_command_parameter_seat_id = "идентификатор на мястото (1-6)",
		seat_command_parameter_seat_id_help = "Към кое седалка искате да се преместите?",
		seat_command_substitutes = "",

		engine_command = "двигател",
		engine_command_help = "Превключете двигателя на превозното средство.",
		engine_command_substitutes = "",

		mileage_command = "километраж",
		mileage_command_help = "Проверете километража на превозното средство.",
		mileage_command_substitutes = "",

		toggle_disabled_brakes_command = "toggle_disabled_brakes",
		toggle_disabled_brakes_command_help = "Изключва или включва спирачките на най-близкото превозно средство.",
		toggle_disabled_brakes_command_substitutes = "disable_brakes",

		manual_toggle_command = "manual_toggle",
		manual_toggle_command_help = "Превключете дали искате да управлявате скоростите на превозните средства ръчно или не.",
		manual_toggle_command_command_parameter_hybrid = "хибрид",
		manual_toggle_command_command_parameter_hybrid_help = "Хибридният режим автоматично превключва на по-ниска предавка при определено обороти на двигателя. Може да бъде `късно`, `средно` или `рано`.",
		manual_toggle_command_substitutes = "",

		speed_limiter_command = "ограничител_на_скоростта",
		speed_limiter_command_parameter_speed = "скорост",
		speed_limiter_command_parameter_speed_help = "Коя скорост бихте искали ограничителят на скоростта да използва? Можете да оставите това поле празно, за да го нулирате и върнете към нормалното поведение.",
		speed_limiter_command_help = "Преобразувайте обичайното поведение на ограничителя на скоростта, за да зададете предварително ограничение на скоростта.",
		speed_limiter_command_substitutes = "сл, контрол_на_скоростта, управление_на_скоростта",

		toggle_vehicle_weapons_command = "превключване_на_оръжия_на_превозното_средство",
		toggle_vehicle_weapons_command_help = "Превключва дали оръжията на превозното средство могат да бъдат използвани или не.",
		toggle_vehicle_weapons_command_parameter_server_id = "сървър идентификатор",
		toggle_vehicle_weapons_command_parameter_server_id_help = "Сървърният идентификатор на играча, за когото искате да превключите оръжията на превозното средство. Ако оставите това поле празно, ще бъде избран вашият собствен идентификатор.",
		toggle_vehicle_weapons_command_substitutes = "оръжия_на_превозното_средство",

		wheelie_command = "ухание_на_задните колела",
		wheelie_command_help = "Превключва режима на ухане на задните колела. (Натиснете Shift, докато сте в кола)",
		wheelie_command_parameter_power_level = "сила на задемоно",
		wheelie_command_parameter_power_level_help = "Колко ускорение да се приложи (по подразбиране е 2.5, намалете го, ако задемоното е твърде силно, увеличете го, ако е твърде слабо).",
		wheelie_command_substitutes = "",

		copy_vehicle_data_command = "копиране_на_информация_за_превозното_средство",
		copy_vehicle_data_command_help = "Копира всички модификации и повреди на превозното средство, в което в момента се намирате.",
		copy_vehicle_data_command_substitutes = "копиране",

		paste_vehicle_data_command = "залепете_информацията_за_превозното_средство",
		paste_vehicle_data_command_help = "Залепва всички модификации и повреди на превозното средство, в което в момента се намирате. (Това ще презапише модификациите на притежаваните превозни средства)",
		paste_vehicle_data_command_substitutes = "залепване",

		-- vehicles/vin_numbers
		vin_number_command = "vin_номер",
		vin_number_command_help = "Връща VIN номера на автомобила, с който карате.",
		vin_number_command_substitutes = "vin",

		vin_lookup_command = "vin_търсене",
		vin_lookup_command_help = "Търси VIN номера на автомобил.",
		vin_lookup_command_parameter_vin_number = "vin номер",
		vin_lookup_command_parameter_vin_number_help = "Номерът на VIN, който искате да проверите.",
		vin_lookup_command_substitutes = "lookup_vin, lv",

		-- weapons/ammo
		fill_ammo_command = "fill_ammo",
		fill_ammo_command_help = "Зарежда амуниция във всички оръжия.",
		fill_ammo_command_substitutes = "",

		-- weapons/recoil
		crosshair_command = "crosshair",
		crosshair_command_help = "Превключва  мерния кръст.",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "aim_down_sight",
		aim_down_sight_command_help = "Автоматично прицелява, когато натиснете дясно бутонче, дори ако сте в трето лице.",
		aim_down_sight_command_substitutes = "ads",

		-- weapons/throwables
		throw_weapon_command = "хвърли_оръжие",
		throw_weapon_command_help = "Хвърлете текущо оборудваното оръжие.",
		throw_weapon_command_substitutes = "изхвърлям, хвърляне",

		throwables_debug_command = "хвърляеми_отстраняване_на_грешки",
		throwables_debug_command_help = "Отстраняване на грешки за всички близки хвърляеми предмети.",
		throwables_debug_command_substitutes = "",

		-- weapons/weapons
		check_ammo_command = "провери_амуниция",
		check_ammo_command_help = "Проверява количеството налична амуниция.",
		check_ammo_command_substitutes = "амуниция",

		toggle_airsoft_mode_command_command = "превключи_режим_на_пушкар",
		toggle_airsoft_mode_command_command_help = "Превключва режима на игри със пушкар (за целия сървър), който намалява нанасяната от оръжията щета значително.",
		toggle_airsoft_mode_command_command_substitutes = "airsoft_mode, airsoft",

		toggle_folded_stock_command_command = "toggle_folded_stock",
		toggle_folded_stock_command_command_help = "Превключва свития капак на оръжието, което държите в момента.",
		toggle_folded_stock_command_command_substitutes = "folded_stock, stock"
	},

	connections = {
		your_account_is_connecting = "Вашият акаунт се свързва от нова сесия."
	},

	controls = {
		menu_control_up = "Нагоре в менюто",
		menu_control_down = "Надолу в менюто",
		menu_control_left = "Наляво в менюто",
		menu_control_right = "Надясно в менюто",

		menu_control_up_alternative = "Алтернативно движение нагоре в менюто",
		menu_control_down_alternative = "Алтернативно движение надолу в менюто",
		menu_control_left_alternative = "Алтернативно движение наляво в менюто",
		menu_control_right_alternative = "Алтернативно движение надясно в менюто"
	},

	core = {
		version = "Версия"
	},

	couches = {
		model_not_found = "Невалидно име на модел.",
		object_not_found = "Няма обект от този модел близо до вас.",
		offset_copied = "Отместването е копирано."
	},

	discord = {
		one_player = "1 играч",
		multiple_players = "${playerAmount} играчи",
		join_with_fivem = "Присъедини се с FiveM",
		discord_guild = "Discord общност",
		richer_presence_on = "По-богатото присъствие е включено.",
		richer_presence_off = "По-богатото присъствие е изключено.",

		announce_event = "Има събитие след ${minutes} минути! Проверете в Discord за повече информация.\n\n${name} @ **${location}**",
		announce_event_starting_now = "Събитие започва в момента! Проверете Discord за повече информация.\n\n${name} @ **${location}**"
	},

	emojis = {
		emoji_list = "${emojis}",
		api_reported_no_updates = "Discord API не докладва актуализации в списъка с емотикони.",
		emojis_added = "Добавени са ${added} емотикон(и).",
		emojis_removed = "Премахнати са ${removed} емотикон(и).",
		emojis_updated = "Добавени са ${added} емотикон(и) и премахнати са ${removed} емотикон(и)."
	},

	errors = {
		script_location = "Местоположение на скрипта",
		additional_information = "Допълнителна информация",
		error_report = "Доклад за грешка",
		send_report = "Изпрати доклад",
		abort_report = "Отказ на доклада",
		input_placeholder = "Моля, уведомете ни какво правехте, когато беше предизвикана тази грешка...",
		oh_no = "Ох не,",
		an_error_has_occurred = "възникна грешка!",
		error_occured_information = "Това означава, че нещо не функционира правилно или както е предвидено. Моля, помогнете ни да решим проблема, като предоставите допълнителни подробности относно действията, които извършвахте, когато тази грешка беше предизвикана."
	},

	firewall = {
		local_firewall_enabled = "Локалната защитна стена е активирана.",

		local_firewall_on = "Активирана е локалната защитна стена със съобщението за блокиране `${blockMessage}`.",
		local_firewall_re_enabled = "Повторно активирана е локалната защитна стена със съобщението за блокиране `${blockMessage}`.",
		local_firewall_off = "Деактивирана е локалната защитна стена.",
		local_firewall_blocked = "Локална защитна стена: Блокиран ${playerName} (${licenseIdentifier})"
	},

	ping = {
		getting_pings = "Получаване на данни за пинговете от всички играчи. Това може да отнеме няколко секунди.",
		host_data = "${position}. ${location} - Средно време за пинг ${averagePing} (базирано на ${totalPings} клиента), 10% Най-ниски: ${averagePingLow}, 10% Най-високи: ${averagePingHigh}",
		list_hosts = "${listHosts}"
	},

	profile = {
		profile_debug_enabled = "Профилът на дебъгера е активиран. Проверете конзолата F8 за изход.",
		profile_debug_disabled = "Профилът на дебъгера е деактивиран."
	},

	proxy = {
		proxied_via_logs_title = "Проксирано чрез",
		proxied_via_logs_details = "${consoleName} беше проксиран чрез `${serverName}`."
	},

	restart = {
		announcement_restart = "Сървърът ще се рестартира след ${minutes} минути.",
		announcement_restart_one_minute = "Сървърът ще се рестартира след 1 минута.",

		announcement_update = "Сървърът ще бъде изключен след ${minutes} минути за обновяване.",
		announcement_update_one_minute = "Сървърът ще бъде изключен след 1 минута за актуализация.",

		announcement_maintenance = "Сървърът ще бъде изключен след ${minutes} минути за поддръжка.",
		announcement_maintenance_one_minute = "Сървърът ще бъде изключен след 1 минута за поддръжка.",

		restart_cancelled = "Възстановяването на сървъра е отменено.",

		server_restarting = "Сървърът се рестартира. Можете да се върнете след няколко минути.",

		executed_restart_command = "Изпълнено е възстановяване на командата.",
		already_executed_restart_command = "Възстановяването на командата вече е изпълнено.",
		restart_planned_earlier = "Има предвидено рестартиране по-рано от посоченото време.",
		no_restart_planned = "Няма планирано рестартиране.",
		posted_restart_warning_message = "Публикува съобщение за предупреждение за рестартиране.",
		cancelled_restart = "Отказано рестартиране."
	},

	routes = {
		route_not_found = "Маршрутът ${route} не е намерен.",
		route_restricted = "Маршрутът ${route} е ограничен.",
		internal_server_error = "Вътрешна грешка на сървъра."
	},

	session = {
		connecting_from_new_session = "Свързвате се от нова сесия."
	},

	twitch = {
		streaming_state_already_set_to_target = "Състоянието на поточното предаване на потребителя вече е насочено към целевото състояние, предоставено.",
		streaming_state_changed = "Състоянието на потока на потребителя е променено на предоставеното целево състояние.",

		twitch_ban_exception_removed = "Премахната Twitch изключение за блокиране от ${consoleName}. Отстранена е изключението `${removedException}`.",
		twitch_ban_exception_not_removed = "Неуспешно премахване на изключение от забрана за Twitch от ${consoleName}.",

		removed_twitch_ban_exception_logs_title = "Изключение от забрана за Twitch е премахнато",
		removed_twitch_ban_exception_logs_details = "${consoleName} премахна изключение от забрана за Twitch от ${targetConsoleName}."
	},

	users = {
		playtime = "Игрово време",
		player_playtime = "${playerName} (Позиция ${position})\nОбщо игрово време: ${totalPlaytime}\nИгрово време в сесията: ${sessionPlaytime}",
		leaderboard = "Класация",
		your_position = "Вашата позиция",
		logs_user_reject_connection_title = "Отхвърлена връзка",
		logs_user_reject_connection_details = "Отхвърлена връзка от ${consoleName} (`${reason}`).",
		logs_user_connected_title = "Потребител свързан",
		logs_user_connected_details = "${consoleName} се свърза към сървъра.",
		logs_user_joined_title = "Потребител присъединен",
		logs_user_joined_details = "${consoleName} се присъедини към сървъра.",
		logs_user_dropped_title = "Потребител прекъсна връзката",
		logs_user_dropped_details = "${consoleName} се отключи от сървъра след като е играл за ${playtime} с причина: `${reason}`.",
		logs_user_dropped_proxied_details = "${consoleName} се отключи от сървъра след като е играл за ${playtime} с причина: `${reason}`. Те бяха проксиране през `${serverName}`.",
		logs_character_loaded_title = "Презареждане на героя",
		logs_character_loaded_details = "${consoleName} зареди героя ${fullName} (${characterId}).",
		logs_character_unloaded_title = "Отразпределяне на героя",
		logs_character_unloaded_details = "${consoleName} отразпредели героя ${fullName} (${characterId}).",
		logs_character_unloaded_details_reason = "${consoleName} отразпредели героя ${fullName} (${characterId}) с причина `${reason}`.",
		logs_character_created_title = "Създаване на герой",
		logs_character_created_details = "${consoleName} създаде герой ${fullName} (${characterId}).",
		logs_character_deleted_title = "Изтрит персонаж",
		logs_character_deleted_details = "${consoleName} изтри персонаж ${fullName} (${characterId}).",
		server_core_is_restarting = "Ядрото на сървъра се рестартира.",
		you_timed_out = "Изтече времето за връзка!",
		kicked_for_no_specified_reason = "Бяхте изгонен без посочена причина.",
		kicked_player = "Изгонихте играч.",
		kicked_player_and_removed_reconnect_priority = "Изгонихте играч и премахнахте приоритета за повторна връзка.",
		kicked_player_and_failed_to_remove_reconnect_priority = "Изгонихте играч и неуспешно премахнахте приоритета за повторна връзка.",
		removed_player_from_queue = "Изтрихте играча от опашката.",
		player_not_found = "Играчът не е намерен.",
		missing_license_identifier = "Липсващ `licenseIdentifier`.",
		package = "Пакет",
		package_updated = "Вашият пакет е обновен до `${packageName}`.",
		package_updated_remaining_time = "Вашият пакет е обновен до `${packageName}`. Ще изтече след ${remainingTime}.",
		package_expired = "Вашият пакет е изтекъл.",
		package_same = "Вашият пакет е `${packageName}`.",
		package_same_remaining_time = "Вашият пакет е `${packageName}`. Ще изтече след ${remainingTime}.",
		no_package = "Нямате пакет.",
		fetching_package_error = "Възникна грешка при опит за извличане на данните от пакета ви.",
		reason_unknown = "Неизвестна причина.",

		unloaded_character = "Изключен герой.",
		user_does_not_have_sent_character_loaded = "Потребителят няма заредения герой.",
		user_has_no_character_loaded = "Потребителят няма зареден герой.",
		user_not_found = "Изпратеният потребител не беше намерен на сървъра.",
		invalid_character_id = "Изпратеният параметър с идентификатор на герой е невалиден.",
		invalid_license_identifier = "Невалиден параметър за идентификатор на лиценз",

		unloaded_character_for_player_logs_title = "Незареден персонаж за играч",
		unloaded_character_for_player_logs_details = "${consoleName} незареди персонажа на ${targetConsoleName} ${characterFullName} (${characterId}) с причина `${message}`.",
		unloaded_character_for_player_no_reason_logs_details = "${consoleName} незареди персонажа на ${targetConsoleName} ${characterFullName} (${characterId}) без посочена причина.",

		unloaded_character_self_logs_title = "Изгружен Персонаж",
		unloaded_character_self_logs_details = "${consoleName} изгружи своя персонаж ${characterFullName} (${characterId}) с причината `${message}`.",
		unloaded_character_self_no_reason_logs_details = "${consoleName} изгружи своя персонаж ${characterFullName} (${characterId}) без посочена причина.",

		unloaded_character_for_everyone_logs_title = "Отпечатан персонаж за всички",
		unloaded_character_for_everyone_logs_details = "${consoleName} отпечата ${charactersUnloaded} персонажи с причина `${message}`.",
		unloaded_character_for_everyone_no_reason_logs_details = "${consoleName} изгрузи ${charactersUnloaded} героя без посочена причина.",

		unloaded_character_for_user = "Изгружен персонаж ${characterFullName} (${characterId}) за ${consoleName}.",
		unloaded_character_for_everyone = "Изгружат се героите на всички. Бяха изгружени ${unloadedCharacters} героя.",
		user_with_server_id_has_no_character_loaded = "Потребителят със сървър идентификатор `${serverId}` няма зареден персонаж.",
		user_with_server_id_not_found = "Потребителят с идентификатор на сървъра `${serverId}` не може да бъде намерен на сървъра.",

		custom_plate = "Персонализиран Номер",
		custom_character_id = "Персонализиран ИД на героя",
		custom_phone_number = "Персонализиран Телефонен номер",
		reskin = "Преобразуване",

		no_player_packages = "Нямате никакви пакети за играчи.",
		player_packages = "Пакети за играчи:\n${playerPackages}",
		player_package = "- ${label}: ${amount}x",

		appreciated_tier = "Разбираща стойност",
		respected_tier = "Уважавана стойност",
		heroic_tier = "Хероична стойност",
		legendary_tier = "Легендарна категория",
		godlike_tier = "Божествена категория",

		dropped_timed_out_player_logs_title = "Изхвърлен играч, който е загубил връзка",
		dropped_timed_out_player_logs_details = "${consoleName} е изхвърлен ръчно, защото не е пращал данни за дълъг период от време.",

		critical_error_while_loading_data = "Възникна критична грешка при зареждането на данните ви."
	},

	whitelist = {
		not_whitelisted = "Не сте в списъка с приетите на този сървър.\n\nПрисъединете се към нашия Discord сървър за информация как да кандидатствате на ${communityDiscord}."
	},

	-- game/*
	admin_menu = {
		menu_title = "Меню за администратори",
		spectate_player = "Следи Играча",
		teleport_player = "Телепортирай до Играча",
		teleport_player_here = "Телепортирай Играча до Теб",
		failed_teleport_to_player = "Неуспешно телепортиране до играч.",
		failed_teleport_player_here = "Неуспешно телепортиране на играч до теб.",
		invalid_target_server_id = "Невалиден идентификатор на целевия сървър.",
		invalid_destination_server_id = "Невалиден идентификатор на дестинационния сървър.",
		invalid_source_server_id = "Невалиден идентификатор на източника.",
		failed_teleport_player_to_player = "Неуспешно телепортиране на играч до играч.",
		teleported_player_to_player = "Телепортиране на играч към друг играч.",

		tp_player_logs_title = "ТП Играч",
		tp_player_logs_details = "${consoleName} се телепортира до ${targetConsoleName}.",
		tp_here_logs_title = "ТП Тук",
		tp_here_logs_details = "${consoleName} телепортира ${targetConsoleName} до себе си.",
		tp_everyone_logs_title = "ТП Тук на всички",
		tp_everyone_logs_details = "${consoleName} телепортира всички до себе си.",
		tp_to_logs_title = "ТП до",
		tp_to_logs_details = "${consoleName} телепортира ${sourceConsoleName} до ${targetConsoleName}."
	},

	afk = {
		you_are_afk = "Вие сте AFK. Вашата герой скоро ще бъде изгружен.",
		move_mouse = "Преместете мишката си, за да престанете да бъдете AFK.",
		you_have_been_unloaded_for_being_afk = "Вие бяхте AFK за продължителен период от време, разсмотрете да отидете на екрана за избор на герой следващия път."
	},

	airdrops = {
		created_airdrop = "Създадена е източничник с тип`${airdropType}`, с общо ${itemAmount} бройки артикули.",
		no_valid_items_provided = "Не са предоставени валидни артикули.",
		created_airdrop_with_items = "Създаден е източник със следните артикули вътре:\n${itemsListed}"
	},

	airports = {
		airport = "Летище",
		press_to_access_spawner = "Натиснете ~INPUT_CONTEXT~ за достъп до спавнера на превозни средства.",
		no_spawner_licenses = "Нямате разрешения за този спавнер на превозни средства.",
		vehicle_lists = "Списъци с превозни средства",
		parked_vehicle = "Паркирано превозно средство.",
		press_to_park_vehicle = "Натиснете ~INPUT_CONTEXT~ за паркиране на превозното средство.",
		no_vehicle_to_park = "Няма превозно средство за паркиране.",
		park_vehicle = "Паркирайте превозното средство",
		park_vehicle_outside = "Паркирайте превозното средство извън",
		close_menu = "Затвори менюто",
		spawned_vehicle = "Спавнато превозно средство.",
		spawner_on_timeout = "Генераторът на превозно средство е на пауза. Моля, опитайте отново.",
		spawn_area_not_clear = "Зоната за появяване не е свободна.",
		return_button = "Назад",
		deposit = "Депозит: $${amount}",
		no_deposit = "Без депозит",
		deposit_not_enough_money = "Нямате достатъчно пари, за да заплатите депозита."
	},

	airstrike = {
		airstrike_success = "Успешно създадена въздушна атака.",
		airstrike_failed = "Неуспешно създаване на въздушна атака."
	},

	airsupport = {
		distance = "Разстояние: ${distance}${unit}",
		time_to_impact = "Време до удар: ${timeToImpact}",

		out_of_range = "~r~Извън обхват",

		km = "км",
		mi = "ми",

		airsupport_failed = "Неуспешно повикване на въздушна подкрепа."
	},

	alcohol = {
		now_sober = "Сега сте отново трезви.",
		drunk_state_1 = "Леко сте пиян.",
		drunk_state_2 = "Сте пиян.",
		drunk_state_3 = "Много сте пиян.",
		drunk_state_4 = "Опасно сте пиян."
	},

	arcade = {
		use_arcade_machine = "Натиснете ~INPUT_CONTEXT~, за да използвате игровата машина. Цената е $${cost}.",
		finished_arcade_logs_title = "Завършена игра на аркада",
		finished_arcade_logs_details = "${consoleName} завърши игра на аркада с резултат от `${score}`."
	},

	archives = {
		press_to_access_archives = "Натиснете ~INPUT_CONTEXT~ за достъп до архивите.",
		archives_title = "Архиви",
		no_archives = "Няма архиви тук.",
		close_menu = "Затвори менюто",
		archive_label = "Дело No. ${case}",

		failed_get_archives = "Неуспешно извличане на архиви.",
		failed_not_on_duty = "Не сте на дежурство.",

		archive_created = "Успешно създаден архив с дело No. ${case}.",
		invalid_case_number = "Невалиден номер на дело (Цяло число между 1 и 99999).",
		not_near_archive = "Не сте близо до архив.",
		failed_create_archive = "Неуспешно създаване на архив.",
		archive_already_exists = "Номерът на делото вече съществува в този архив.",
		archive_destroyed = "Успешно унищожен архив с номер на делото ${case}.",
		archive_maximum_case_count = "Не можете да създавате нови дела.",
		failed_destroy_archive = "Неуспешно унищожаване на архива.",
		destroy_not_empty = "Можете да унищожите само празни архиви.",

		create_archive_logs_title = "Създадена Архив",
		create_archive_logs_details = "${consoleName} създаде дело в архива `${archiveName}` с номер на дело `${caseNumber}`.",
		destroy_archive_logs_title = "Унищожена архив",
		destroy_archive_logs_details = "${consoleName} унищожи случай в архива `${archiveName}` с номер на случая `${caseNumber}`."
	},

	arena = {
		player_died = "${name} почина.",
		player_suicide = "${name} се самоуби с ${deathCause}.",
		player_killed = "${killerName} уби ${name} с ${deathCause} (${distance}м).",
		hud_info = "Брой играчи: ${playerAmount}\n\nСмърти: ${deaths}\nУбийства: ${kills}",
		press_to_access_menu = "Натисни ~INPUT_INTERACTION_MENU~ за достъп до менюто на Арената.",
		this_command_is_only_for_arena = "Тази команда е само за Арена.",
		stand_still_to_respawn = "Застани на място за 5 секунди, за да се преродиш.",
		respawn_cancelled = "Прераждането е прекратено, тъй като се придвижи.",
		arena_suicide_reason = "Самоубийство",
		arena = "Арена",
		ordered_airdrop = "Поръчано слизане",

		store = "Магазин",
		team = "Екип",
		leaderboard = "Класиране",
		search = "Търсене",
		add_to_cart = "Добави в количката",
		unlocks_at_level = "Отключва се на ниво ${level}",
		show_vehicles = "Покажи превозни средства",
		hide_vehicles = "Скрий превозни средства",
		balance = "Баланс: $${balance}",
		shopping_cart = "${items} артикули ($${cost})",
		buy_now = "Купи сега",
		call_airdrop = "Обади въздушен снабдител",
		empty = "Празно",
		clear_cart = "Изчисти кошницата",
		can_not_afford = "Нямате достатъчно пари",
		brokie_lol = "Бедник, хаха",
		confirmation_exit_arena = "Наистина ли искате да напуснете арената?",
		confirmation_buy_now = "Наистина ли искате да закупите ${label} за $${cost}?",
		yes = "Да",
		no = "Не",
		empty_slot = "Празно място",
		team_name = "Име на отбора",
		level = "Ниво",
		arena = "Арена",
		battle_royale = "Битка за оцеляване",
		arena_gun_game = "Арена с пушки",
		lottery = "Лотария",
		jackpot = "Джакпот",
		daily_tasks = "Ежедневни Задачи",
		screenshots = "Снимки",
		categories = "Категории",
		refresh = "Опресни",
		refreshing = "Опресняване...",
		not_available = "Недостъпно",

		kill = "Убийство",
		headshot = "Хедшот",
		killstreak = "Запослен убиец",
		assist = "Помощ",

		level = "Ниво",
		position = "Позиция",
		name = "Име",
		kills = "Убийства",
		deaths = "Смърти",
		kd = "У/С",
		hits = "Попадения",
		hits_headshots = "ХС",
		headshot_ratio = "Съотношение ХС",
		damage_dealt = "Нанесен Урон",
		damage_taken = "Получен Урон",
		matches_played = "Игри",
		wins = "Победи",
		win_ratio = "Съотношение на победи",
		xp = "Опит",
		money_won = "Печалба",
		average_percentage = "Среден процент",
		streak = "Серия",
		money_lost = "Загуби",
		net = "Общо",
		net_ratio = "Съотношение на общо",
		items_gambled = "Играни предмети",
		screenshots_taken = "Заснети снимки"
	},

	atms = {
		withdraw = "Теглене",
		deposit = "Депозиране",
		balance = "Баланс",
		transfer = "Прехвърляне",
		savings_bonds = "Спестителни облигации",
		back = "Назад",

		amount = "Сума",
		target = "Дестинация",
		total = "Общо",

		confirm_target = "Искате ли да прехвърлите $${amount} на \"${name}\"?",
		cancel = "Не, отказвам",
		confirm_transfer = "Да, прехвърляне",

		failed_deposit = "Неуспешно депозиране на пари",
		failed_withdraw = "Неуспешно теглене на пари",
		failed_transfer = "Неуспешен трансфер на пари",
		failed_deposit_bonds = "Неуспешно депозиране на спестителни облигации",

		processing = "Обработка...",
		counting_bills = "Преброяване на банкнотите...",

		something_went_wrong = "Възникна проблем.",
		error_not_online = "Целевият потребител е недостъпен.",
		error_not_enough_money = "Недостатъчно пари.",
		deposit_amount_big = "Депозитите в банкомата са ограничени до 4 000 долара.",
		withdraw_amount_big = "Тегленето от банкомата е ограничено до 6 000 долара.",

		retrieving_card = "Издърпване на карта",
		atm_damaged = "Този банкомат е повреден",

		press_to_use = "Натиснете ~g~${InteractionKey} ~w~, за да използвате банкомата",
		press_to_interact_bank = "Натиснете ~g~${InteractionKey} ~w~, за да взаимодействате с банката",

		deposit_log_bank_title = "Внасяне в банката",
		deposit_log_atm_title = "Внасяне в банкомата",
		deposit_log = "${consoleName} внесе $${amount}.",

		withdraw_log_bank_title = "Теглене от банката",
		withdraw_log_atm_title = "Теглене от банкомата",
		withdraw_log = "${consoleName} изтегли $${amount}.",

		transfer_log_title = "Банков превод",
		transfer_log = "${consoleName} (#${characterId}) прехвърли $${amount} на ${targetConsoleName} (#${targetCharacterId}).",

		deposit_log_bonds_title = "Депозит на облигации",
		deposit_bonds_log = "${consoleName} депозира ${bonds} на стойност $${amount}."
	},

	attachments = {
		cancel_attachments = "Отказ",
		finish_attachments = "Приложи",

		modifying_attachments = "Промяна на прикачените файлове",

		failed_apply = "Неуспешно приложение на прикрепени файлове.",
		no_item = "Оръжието не е вече в инвентара ви.",
		no_attachment = "Нямате необходимото прикрепено оборудване.",
		no_paint = "Нямате никакъв бои.",
		success = "Успешно приложени прикрепени файлове.",

		not_available = "Нямате това прикачено оборудване в инвентара си.",

		attachment_label_suppressor = "Подавател",
		attachment_label_flashlight = "Светлина",
		attachment_label_extended_clip = "Удължен пълнител",
		attachment_label_extended_pistol_clip = "Удължен пълнител за пистолет",
		attachment_label_extended_smg_clip = "Удължен пълнител за SMG",
		attachment_label_extended_shotgun_clip = "Удължен пълнител за шотган",
		attachment_label_luxury = "Роскошно покритие",
		attachment_label_incendiary = "Огнена муниция",
		attachment_label_tracer = "Проследяваща муниция",
		attachment_label_hollow_point = "Муниция с празен връх",
		attachment_label_scope = "Оптически прицел",
		attachment_label_grip = "Дръжка",
		attachment_label_drum = "Барабанен пълнител",
		attachment_label_heavy_barrel = "Тежка цев",
		attachment_label_armor_piercing = "Пробиващи снаряди",
		attachment_label_explosive = "Експлозивни снаряди",
		attachment_label_sight = "Холографски прицел",
		attachment_label_pistol_sight = "Прицел за пистолет",
		attachment_label_fmj = "Снаряди с пълно метално покритие",
		attachment_label_scope_nv = "Прицел с нощно виждане",
		attachment_label_scope_thermal = "Термален прицел",
		attachment_label_stock = "Стока",

		attachment_label_luxury1 = "Елегантен",
		attachment_label_luxury2 = "Балас",
		attachment_label_luxury3 = "Хасълър",
		attachment_label_luxury4 = "Камъкът",
		attachment_label_luxury5 = "Ненавистникът",
		attachment_label_luxury6 = "Любовникът",
		attachment_label_luxury7 = "Играчът",
		attachment_label_luxury8 = "Кралят",
		attachment_label_luxury9 = "Вагосите",

		attachment_label_luxury_knife_1 = "VIP вариант",
		attachment_label_luxury_knife_2 = "Телохранителски вариант",

		attachment_label_stock_folded = "Сгънат капак",
		attachment_label_stock_unfolded = "Разгънат капак",

		attachment_label_skin_patriotic = "Патриотична кожа",
		attachment_label_skin_brushstroke = "Боя от четка",
		attachment_label_skin_skull = "Кожа с череп",
		attachment_label_skin_leopard = "Кожа с леопард",
		attachment_label_skin_zebra = "Кожа с зебра",
		attachment_label_skin_geometric = "Геометрична кожа",

		label_no_skin = "Без кожа",

		no_tint = "Без нюанс",

		tint_normal_0 = "Черно",
		tint_normal_1 = "Зелено",
		tint_normal_2 = "Златно",
		tint_normal_3 = "Розово",
		tint_normal_4 = "Армия",
		tint_normal_5 = "LSPD",
		tint_normal_6 = "Оранжево",
		tint_normal_7 = "Платина",

		tint_mk2_0 = "Класическо черно",
		tint_mk2_1 = "Класическо сиво",
		tint_mk2_2 = "Класическо двуцветно",
		tint_mk2_3 = "Класическо бяло",
		tint_mk2_4 = "Класическо бежово",
		tint_mk2_5 = "Класическо зелено",
		tint_mk2_6 = "Класическо синьо",
		tint_mk2_7 = "Класическо земно",
		tint_mk2_8 = "Класическо кафяво и черно",
		tint_mk2_9 = "Червена контраст",
		tint_mk2_10 = "Синя контраст",
		tint_mk2_11 = "Жълта контраст",
		tint_mk2_12 = "Оранжева контраст",
		tint_mk2_13 = "Ярко розово",
		tint_mk2_14 = "Ярко лилаво и жълто",
		tint_mk2_15 = "Ярко оранжево",
		tint_mk2_16 = "Ярко зелено и лилаво",
		tint_mk2_17 = "Силни червени акценти",
		tint_mk2_18 = "Силни зелени акценти",
		tint_mk2_19 = "Силни цианови акценти",
		tint_mk2_20 = "Силни жълти акценти",
		tint_mk2_21 = "Силни червени и бели",
		tint_mk2_22 = "Силни сини и бели",
		tint_mk2_23 = "Металик злато",
		tint_mk2_24 = "Металик платина",
		tint_mk2_25 = "Металик сиво и лилаво",
		tint_mk2_26 = "Металик лилаво и лайм",
		tint_mk2_27 = "Металик червено",
		tint_mk2_28 = "Металик зелено",
		tint_mk2_29 = "Металик синьо",
		tint_mk2_30 = "Металик бяло и аква",
		tint_mk2_31 = "Металик червено и жълто",

		tint_ray_0 = "Космически рейнджър",
		tint_ray_1 = "Лилав",
		tint_ray_2 = "Зелен",
		tint_ray_3 = "Оранжев",
		tint_ray_4 = "Розов",
		tint_ray_5 = "Златен",
		tint_ray_6 = "Платина",

		last_concat = "и",

		attachments_logs_title = "Прикачвания и тинтове",
		attachments_logs_details = "${consoleName} промени ${weaponName}-а си: ${modifications}.",

		removed_attachments = "Откачени ${removed}",
		added_attachments = "Добавени ${added}",
		tint_changed = "Променено оттенъка от `${before}` на `${after}`"
	},

	audio = {
		audio_id = "Аудио ${audioId}",
		illegal_sound_effect = "Опит за заявка на външно аудио без правилни разрешения.",
		url_invalid = "Предоставеният URL адрес не е валиден. Трябва да бъде качен на сигурна връзка (https://).",
		url_missing = "Моля, добавете URL адреса на аудиото, което се опитвате да пуснете.",
		played_audio_for_self = "Пуснато аудио за вас.",
		played_audio_for_player = "Пуснато аудио за ${consoleName}.",
		played_audio_for_everyone = "Пуснато аудио за всички.",
		played_audio_effect_for_everyone_title = "Пуснат аудио ефект за всички",
		played_audio_effect_for_everyone_details = "${consoleName} изпусна звуков ефект за всички. Звуковият ефект имаше URL `${url}` и беше зададен на ниво на звука `${volume}`.",
		played_audio_effect_for_player_title = "Изпуснат звуков ефект за играч",
		played_audio_effect_for_player_details = "${consoleName} изпусна звуков ефект за ${targetConsoleName}. Звуковият ефект имаше URL `${url}` и беше зададен на ниво на звука `${volume}`."
	},

	balls = {
		press_to_pick_up_ball = "Натиснете ~INPUT_CONTEXT~, за да вземете топката."
	},

	banana_peels = {
		slipped_logs_title = "Похлъзнато на бананова кожура",
		slipped_logs_details = "${consoleName} се похлъзна на бананова кожура докато ${slipForce}.",

		slip_0 = "ходи",
		slip_1 = "тръчи",
		slip_2 = "спринтира"
	},

	bandaids = {
		label = "${type} Превръзка",

		baby_yoda = "Бебе Йода",
		batman = "Батман",
		care_bear = "Care Bears",
		hello_kitty = "Hello Kitty",
		hotwheels = "Hot Wheels",
		mc_queen = "Светкавица Маккуин",
		minions = "Миньони",
		pony = "Моята Малка Пони",
		power_puff = "Power Puff",
		spiderman = "Спайдърмен",
		star_wars = "Междузвездни Войни",

		failed_random_bandaid = "Неуспешно получаване на случайна превръзка.",

		received_bandaid_logs_title = "Получена превръзка",
		received_bandaid_logs_details = "${consoleName} получи 1x ${bandaid} след въздушно издигане.",
		spawned_bandaid_logs_details = "${consoleName} даде на себе си 1x ${bandaid}."
	},

	battle_royale = {
		failed_to_toggle_battle_royale = "Неуспешно превключване на Battle Royale.",
		toggled_battle_royale_on = "Превключихте Battle Royale.",
		toggled_battle_royale_off = "Изключихте Battle Royale.",
		battle_royale_info = "Вие сте в реда за Battle Royale!\nВ момента има ${battleRoyaleQueueLength} играчи в реда.",
		toggle_battle_royale_missing_permissions = "Играчът опита да превключи Битката на Royale, но нямаше необходимите разрешения за това.",
		start_battle_royale_missing_permissions = "Играчът опита да стартира Битка на Royale, но нямаше необходимите разрешения за това.",
		unable_to_start_battle_royale_not_active = "Не може да се стартира Битка на Royale, тъй като Битката на Royale не е активирана.",
		not_enough_players_in_queue = "Не може да се стартира Битка на Royale, тъй като няма достатъчно играчи в опашката.",
		zone_idling = "Зоната сега е в покой.",
		zone_advancing = "Зоната сега напредва.",
		player_died = "Играчът ${name} умира: Остават ${remainingPlayers}.",
		player_suicide = "${name} се самоубива с ${deathCause}: Остават ${remainingPlayers}.",
		player_killed = "${killerName} убива ${name} с ${deathCause} (${distance}м): Остават ${remainingPlayers}.",
		player_won = "${name} е победител!",
		your_team = "Твоят Отбор:",
		received_lobby_invite = "Получихте покана за север от ${serverId}. Използвайте `/br_join ${serverId}`, за да се присъедините!",
		unable_to_invite_yourself = "Не можете да си поканите сами себе си.",
		unable_to_join_yourself = "Не можете да се присъедините към себе си.",
		player_already_invited = "Играчът с идентификатор \"${serverId}\" вече е поканен.",
		sent_player_invite = "Изпратена покана на играч с идентификатор \"${serverId}\".",
		joined_lobby = "Влезли сте в лобито.",
		player_not_invited = "Вие не сте поканени в това лоби.",
		you_are_not_in_a_lobby = "Вие не сте в лоби.",
		left_lobby = "Излезли сте от лобито.",
		created_match = "Създаден мач с ${playerAmount} играчи.",
		created_match_no_vehicles = "Създаден мач без превозни средства с ${playerAmount} играчи.",
		zone_complete = "Зоната е завършена.",
		battle_royale_match_info = "Текуща зона: ${zoneId}/${zoneAmount}\nОставащо време: ${remainingTime}s\nВ момента: ${currentlyLabel}\nОставащи играчи: ${remainingPlayers}\nУбийства: ${kills}",
		idling = "На празен ход",
		advancing = "Предстои да напредне",
		battle_royale = "Битка на рояли",
		press_to_deploy_parachute = "Натиснете ~INPUT_PARACHUTE_DEPLOY~, за да деплоирате падалото.",
		join_battle_royale_instance_missing_permissions = "Играчът опита да се присъедини към инстанция на Битка на рояли, но нямаше необходимите разрешения да го направи.",
		no_match_found = "${consoleName} не участва в никакъв мач.",
		joined_instance = "Влезе в инстанцията на ${consoleName}.",
		leave_battle_royale_instance_missing_permissions = "Играчът опита да напусне инстанция на Битка на роял, но нямаше необходимите разрешения да го направи.",
		left_instance = "Напусна инстанцията.",
		failed_to_leave_instance = "Неуспешно напускане на инстанция, тъй като не си в никаква.",
		already_in_match = "Неуспешно присъединяване към инстанция, тъй като вече си в мач.",
		lobby_is_full = "Лобито, което се опита да се присъединиш, е пълно.",
		zone_center = "Център на зона",
		team_marker = "Маркер на отбор",
		trophy_information_top = "${name} е най-добрият!",
		trophy_information_bottom = "Има общо ${playerAmount} играчи в мача и уби ${kills} от тях.",
		not_able_to_join_while_in_match = "Не можете да се присъедините към лобито, докато сте в мач."
	},

	bazaar = {
		access_bazaar = "Натиснете ~INPUT_CONTEXT~, за да получите достъп до базара.",

		bazaar_blip = "Базар",

		no_items = "Нямате нищо за продажба тук.",
		price_total = "$${price} общо",
		price_per = "$${price} на бройка",

		sold_logs_title = "Продажба в базара",
		sold_logs_details = "${consoleName} продаде ${amount}бр. `${itemName}` за $${price}.",

		sold_items = "Продадохте ${amount}бр. ${label} за $${money}.",
		failed_sell_items = "Неуспешно продаване на предметите.",

		store_title = "Базарен магазин",

		close_menu = "Затвори менюто"
	},

	beds = {
		no_nearby_available_bed_found = "Не е намерена налична легло на близо.",
		press_to_leave_bed = "Натиснете ~INPUT_CONTEXT~ , за да излезете от леглото."
	},

	bills = {
		select_player = "Изберете играч",
		no_nearby_players = "Няма близки играчи за фактуриране.",

		amount = "Сума",
		reason = "Причина",
		bill_title = "Получен нов законопроект",
		sender = "Изпращач",
		amount = "Сума",
		reason = "Причина",
		no_receipt = "Без Квитанция",
		yes_receipt = "Квитанция",
		tip = "Джобна паричка",
		none = "Няма",
		custom = "Собствено",
		custom_tip = "Собствена Джобна паричка (в $)",

		close = "Затвори",
		back = "Назад",
		send = "Изпрати",
		pay = "Плати",

		receipt = "Квитанция (${name})",
		receipt_text = "Сметка от ${name}\n\nСума: $${amount}\nПричина: ${reason}",

		invalid_player = "Играчът е извън линия или твърде далече.",
		bill_created = "Успешно изпратена сметка за $${amount} към ${name}.",
		failed_create_bill = "Неуспешно изпращане на сметка за $${amount} на ${name}.",
		no_reason = "Няма посочена причина.",
		failed_pay_bill = "Неуспешно плащане на сметката.",
		not_enough_money = "Нямате достатъчно пари, за да платите тази сметка.",
		bill_paid = "Успешно платени $${amount} на ${name}.",
		bill_paid_notification = "${name} плати сметката ви с допълнителни $${tip}.",

		paid_bill_title = "Платена сметка",
		paid_bill_details = "${consoleName} плати $${amount} (с допълнителни $${tip}) сметка на ${targetName}.",
		bill_created_title = "Създадена сметка",
		bill_created_details = "${consoleName} изпрати сметка на стойност $${amount} до ${targetName} с повод `${reason}`."
	},

	blackjack = {
		play_blackjack = "Натиснете ~INPUT_CONTEXT~ за да играете Блекджек.",
		play_blackjack_high_limit = "Натиснете ~INPUT_CONTEXT~ за да играете Блекджек с висока става."
	},

	blindfold = {
		blindfolding_player = "Слагане на чувал на играч",
		blindfolding_self = "Самостоятелно слагане на чувал",
		hold_to_take_blindfold_off = "Задръжте ~INPUT_VEH_HEADLIGHT~ за да махнете чувала.",
		hold_to_take_blindfold_off_holding = "Продължавайте да задържате, за да махнете чувала."
	},

	blips = {
		comedy_club = "Комедиен клуб",
		bean_machine = "Бийн Машийн",
		arcade_bar = "Аркаден бар",
		japanese_restaurant = "Японски ресторант",
		luxury_autos = "Луксозни автомобили",
		rockford_records = "Рокфорд Рекърдс",
		dispensary = "Лекарствена канабис аптека",
		haunted_high_school = "Заклинателна гимназия",
		sushi_restaurant = "Ресторант Суши",

		bank = "Банка",
		hospital = "Болница",
		bolingbroke = "Корекционна затвора Болингброук",
		police_department = "Полицейски управление",
		motel = "Мотел",
		tattoo_parlor = "Тату студио",
		repair_shop = "Автосервиз",
		material_vendor = "Материален продавач",
		pdm = "Премиум Делукс Моторспорт",
		ls_customs = "Лос Сантос Къстъмс",
		jewelry_store = "Вангелико Бижутерия",
		pd_air_hq = "Полицейска въздушна база",
		pd_sea_hq = "Полицейска морска база",
		ems_air_hq = "Медицинска въздушна база",
		ems_boat_hq = "Медицинска морска база",
		ems_garage = "Гараж на медицинска екипировка"
	},

	bombs = {
		not_in_plane = "Вие не сте в самолет.",
		not_in_plane_anymore = "Вече не сте в самолет.",
		interaction_menu = "~INPUT_CONTEXT~ Пуснете бомба ${name}, ~INPUT_VEH_HEADLIGHT~ Смяна на тип.",
		too_low = "Ти си твърде ниско, за да пуснеш бомби.",

		you_are_not_in_a_vehicle = "В момента не карате превозно средство.",
		ignition_bomb_on = "Активирано е запалително устройство за запалване.",
		ignition_bomb_off = "Изключено е запалително устройство за запалване.",
		failed_ignition_bomb = "Неуспешно превключване на запалително устройство.",

		recharging_countermeasures = "Презареждане на противомерни мерки ${percentage}%",

		ignition_bomb_triggered_logs_title = "Запалително устройство за запалване",
		ignition_bomb_triggered_logs_details = "${consoleName} включи двигателя на превозното средство, към което е прикрепена бомба за запалване.",

		toggle_ignition_bomb_missing_permissions = "Играчът опита да превключи запалително устройство, но няма необходимите разрешения."
	},

	boomboxes = {
		boombox = "Бумбокс",
		play = "Пусни",
		pause = "Пауза",
		skip_song = "Прескочи песента",
		volume = "Сила на звука",
		music = "Музика",

		store_boombox = "Запази бумбокса в инвентара си",
		put_boombox_down = "Постави бумбокса на земята",
		use_boombox = "Използвай бумбокса",
		hold_to_pick_boombox_up = "Задръж, за да вземеш бумбокса",
		illegal_boombox_item_id = "Опит за използване на предмет бумбокс с невалиден идентификатор на предмет.",
		logs_attempted_to_add_song_title = "Опит за добавяне на песен",
		logs_attempted_to_add_song_details = "${consoleName} опита да добави песен от видео URL `${url}` към бумбокс с идентификатор `${boomboxId}`.",
		logs_wiped_all_boomboxes_title = "Изтрити всички Boomboxes",
		logs_wiped_all_boomboxes_details = "${consoleName} изтри всички Boomboxes.",
		logs_wiped_nearby_boomboxes_title = "Изтрити близките Boomboxes",
		logs_wiped_nearby_boomboxes_details = "${consoleName} изтри всички Boomboxes в радиус от `${radius}`.",
		radius_invalid = "Радиусът от `${radius}` не е валидна стойност.",
		wiped_all_boomboxes = "Изтрити ${boomboxesWiped} Boomboxes.",
		wiped_nearby_boomboxes = "Изтрити ${boomboxesWiped} Boomboxes в радиус от `${radius}`.",
		failed_to_wipe_boomboxes = "Неуспешно изтриване на радиопредаватели.",
		no_boomboxes = "Няма радиопредаватели за изтриване.",
		no_boomboxes_within_radius = "Няма радиопредаватели за изтриване в радиус от `${radius}`."
	},

	boosting = {
		boosting_contracts = "Договори за усилване",
		join_queue = "Присъедини се към опашката",
		leave_queue = "Напусни опашката",

		transfer_crypt = "Прехвърли CRYPT",
		transfer_crypt_info = "Въведете сумата и идентификационния номер на сървъра на играча, към когото желаете да прехвърлите.",

		amount = "Сума",
		server_id = "Идентификационен номер на сървъра",

		transfer = "Прехвърли",
		cancel = "Отказ",

		start_contract = "Започни Договор",
		start_contract_info = "Сигурни ли сте, че искате да започнете този договор?",

		yes = "Да",
		no = "Не",

		transfer_contract = "Прехвърли Договор",
		transfer_contract_info = "Въведете идентификационния номер на сървъра на човека, на когото искате да прехвърлите контакта.",

		decline_contract = "Откажи Договор",
		decline_contract_info = "Сигурни ли сте, че искате да откажете този договор?",

		cancel_contract = "Отмени Договор",
		cancel_contract_info = "Сигурни ли сте, че искате да отмените този договор?",

		no_contracts = "Нямате налични договори. Влезте в опашката, за да получите някои.",

		model = "Модел",
		plate = "Номер",
		buy_in = "Входна такса",
		expires_in = "Изтича след",

		start_contract_type = "Какво искате да направите?",
		start_contract_type_info = "Искате ли да направите доставка или да изтриете VIN номера? Изтриването на VIN номера се заплаща допълнително ${cost} CRYPT.",

		drop_off = "Спускане",
		vin_scratch = "Изтриване на VIN номер",

		start_contract = "Започни Договор",
		transfer_contract = "Прехвърли Договор",
		decline_contract = "Откажи Договор",
		mark_pickup = "Маркирай саморъчно",
		cancel_contract = "Отмени Договор",

		new_contract = "Имате нов договор за покачване. (Клас: ${className})",
		started_contract = "Започнат контракт.",
		failed_contract = "Неуспешен контракт.",
		completed_contract = "Завършен контракт. Получихте ${payout} CRYPT.",
		completed_contract_vin_scratch = "Завършен контракт. МПС-то може да бъде намерено в гаража ви.",
		marked_pickup = "Маркирана доставка.",

		vehicle_tracker_is_being_hacked = "Тракерът на МПС-то се хаква. Остават ${hacksRemaining} хакове(а).",
		use_chip_to_hack_vehicle_tracker = "Използвайте чип, за да хакнете тракера на МПС-то. Остават ${hacksRemaining} хакове(а).",
		vehicle_hacking_is_timed_out = "Трябва да изчакате малко преди да хакнете отново. Остават ${hacksRemaining} хак(ове).",
		drop_the_vehicle_off = "Оставете превозното средство на отбелязаното място.",
		drop_off = "Спускане",
		exit_the_vehicle = "Излезте от превозното средство и напуснете района, за да завършите мисията.",

		vehicle_is_being_tampered = "Превозното средство близо до ${locationLabel} се намесва. Моделът е ${modelLabel} (клас ${className}), а номерната табела е ${plate}.",
		vehicle_tamper = "Опит за намеса в превозното средство (${plate})",
		vehicle_tracker_alert = "Внимание за проследяване на превозното средство (${plate})",

		exit_the_vehicle_to_scratch = "Излезте от превозното средство, за да направите царапите на VIN номера.",

		scratch = "Царапане на VIN номер",
		press_to_scratch = "Натисни ~g~${InteractionKey} ~w~за да направиш VIN драскотина.",

		scratching_vehicle = "Царапане на превозното средство",

		deleted_boosted_vehicle_logs_title = "Изтрито отчетността за препълнено превозно средство",
		deleted_boosted_vehicle_logs_details = "${consoleName} изтри препълнено превозно средство с ID ${vehicleId}.",

		spawned_contract = "Успешно създаден договор.",
		spawned_contract_for = "Успешно създаден договор за ${displayName}.",

		already_max_vin_scratched_vehicles = "Вече имате максималния брой превредени превозни средства с VIN в гаража си.",
		contract_has_expired = "Този договор е изтекъл.",
		you_already_have_a_contract_started = "Вече сте започнали договор."
	},

	brochure = {
		welcome_to = "Добре дошли в",
		san_andreas = "Сан Андреас",

		getting_started = "Започване",
		getting_started_1 = "Току-що пристигнахте на летището и вероятно се чудите къде да продължите от тук? Всички нови граждани получават безплатен начален автомобил. Той може да не е най-добрият, но е ваш. Можете да го намерите на паркинга.",
		getting_started_2 = "Ако не предпочитате да карате, можете също да ходите пеша, да попитате приятел да ви вземе или да се обадите на такси чрез своя телефон. Можете да отворите своя телефон, като натиснете клавиша \"P\".",
		getting_started_3 = "Повечето превозни средства имат багажници, в които не само можете да поставите предмети, но и други хора. Можете да използвате командата /carry, за да носите някого, след това да се приближите до багажника, да го отворите (/door) и да го сложите в него. По същия начин можете да ги извадите от багажника. Ако сте обърнали превозното средство си, можете да го обърнете обратно на колелата му с командата /flip.",

		where_now = "Къде сега?",
		where_now_1 = "Сега, когато сте си осигурили първия си автомобил, можете да започнете да проучвате града. Тъй като трябва да се храните и хидратирате, добро място за начало е супермаркетът. Там можете да закупите храна и напитки. Също така, може да купите бинтове, които ще ви помогнат да се възстановите от наранявания.",
		where_now_2 = "След като сте се снабдили с нужните материали, трябва да отидете в съда и да вземете гражданската си карта. Тя ще ви служи като лична карта, книжка за шофьор и лиценз за оръжие.",

		getting_a_job = "Намиране на работа",
		getting_a_job_1 = "Как да заработите пари? Можете да започнете, като си намерите работа. Можете да намерите обяви за работа в Life Invader. Иконката й на червен куфар е показана на картата. Тук можете да намерите избор от работи, за които може да кандидатствате.",
		getting_a_job_2 = "Работата на камионджия изисква да доставяте стоки на различни места. Първо трябва да закупите камион от камионджийския Център за $2,000.",
		getting_a_job_3 = "При записване за работата на куриер, можете да вземете доставка с пакети от центъра за доставки. След това трябва да доставите пакетите на различни места в града. Можете да отворите задната част на курната кола, като се приближите и отворите /door.",
		getting_a_job_4 = "Можете също да станете работник по събиране на отпадъци. В центъра за събиране на отпадъци можете да вземете камион за събиране на боклук и да започнете да събирате отпадъци.",
		getting_a_job_5 = "След като сте се записали за една от работите, ще можете да видите различни маркери на картата си. Пътеводителят ви показва къде да отидете, за да започнете.",

		your_appearance = "Вашият Външен Изглед",
		your_appearance_1 = "Облеклата като панталони, обувки, ризи и други могат да бъдат сменени във всякакъв магазин за облекло, безплатно. Вашата прическа, брада и грим могат да бъдат сменени във фризьорски салон. Можете да намерите и двете магазини за облекло и фризьорски салони на картата.",
		your_appearance_2 = "След като пристигнете за първи път, няма да можете да променяте своя общ външен изглед като цвят на кожата, черти на лицето и други. Ако сте се объркали с външния си изглед или сте го завършили твърде бързо, можете да използвате командата /report и да поискате промяна.",

		medical_care = "Медицинска грижа",
		medical_care_1 = "Ако се нараните, можете да отидете в болницата, за да се регистрирате и получите лечение. Болницата може да бъде намерена на картата. Също така можете да използвате бинтове или първа помощ за излекуване.",
		medical_care_2 = "Ако респаунете без да бъдете откаран до болницата или излезете от играта, докато сте мъртви, може да загубите част от своите предмети. Рестарта на сървъра се брои като излизане от играта.",

		safety_hint = "Подсказка: Можете да смените режима на оръжието си, като натиснете ALT и средния бутон на мишката. Бъдете в безопасност!",

		closing_sentence = "Има много повече неща, които можеш да направиш в града! Запитай около и си намери няколко приятели ;)"
	},

	buddy_pass = {
		buddy_pass = "Приятелски Пропуск",
		information_part_1 = "Мигновено преведи приятеля си през опашката с Приятелски Пропуск!",
		information_part_2 = "Всички потребители с Господска Давка имат достъп до тази функция с един безплатен пропуск.",
		information_part_3 = "Пропускът е активен, докато приятелят ти не се отсъедини от сървъра. След това можеш да преведеш някого друг.",
		information_part_4 = "Запитай за техния PIN за опашката, за да ги преведеш!",
		queue_pin = "ПИН за опашката",
		available = "Достъпно",
		close = "Затвори",
		webstore = "Магазин",
		buddy_passes = "Пропуски за приятели",
		push_through = "Промъкни се!",
		queue_pin_not_set = "Трябва да добавите ПИН за опашката.",
		queue_pin_is_a_4_digit_pin = "ПИН за опашката е четирицифрен ПИН.",
		no_buddy_passes = "Нямате пропуски за приятели.",
		no_buddy_passes_available = "Нямате налични пропуски за приятели.",
		no_queue_with_queue_pin = "Никой не е в опашката с предоставения ПИН.",
		buddy_pushed_through = "Промъкнахте ${playerName} през опашката!",

		buddy_pass_used_logs_title = "Използван Buddy Pass",
		buddy_pass_used_logs_details = "${consoleName} използва своя Buddy Pass, за да премине през ${targetConsoleName}."
	},

	cache = {
		download_progress = "Прогрес на изтеглянето:\n- МПС: ${vehiclesDone}/${vehiclesTotal}\n- Обекти: ${objectsDone}/${objectsTotal}\n- Хора: ${pedsDone}/${pedsTotal}\n- Облекла: ${clothingRequested}/${clothingTotal}",
		slow_download_enabled = "Бавното изтегляне е активирано.",
		slow_download_disabled = "Бавното изтегляне е деактивирано.",

		join_cache_disabled = "Входен кеш е деактивиран.",
		join_cache_enable = "Присъединяването към кеша е активирано."
	},

	capri_sun = {
		capri_sun_name = "Капри Сън (${flavor})"
	},

	cargo = {
		cargo_already_active = "Товарът е вече активен.",
		started_cargo = "Товарът е стартиран.",
		cargo_not_active = "Товарът не е активен.",
		ended_cargo = "Товарът е приключен.",
		cargo_crate = "Товарна каса",
		use_chip_to_hack_crate = "Използвайте ~g~Чип ~w~за хакване на касата.",
		crate_is_being_hacked = "Касата се хаква.",
		crate_will_unlock_in = "Касата ще отключи след ~g~${time}~w~.",
		press_k_to_access = "Натиснете ~g~K ~w~за достъп."
	},

	casino = {
		successfully_set_screen_label = "Успешно зададохте екраните на екран с етикет `${screenLabel}`.",
		successfully_queued_screen_label = "Успешно добавихте в опашката екрана с етикет `${screenLabel}`.",
		failed_to_set_screen_label = "Неуспешно задаване на екраните на екран с етикет `${screenLabel}`.",
		invalid_screen_label = "Етикетът на екрана `${screenLabel}` е невалиден.",
		missing_screen_label = "Липсва параметърът `етикет на екран`.",
		set_screen_label_already_set_to = "Етикетът на екрана вече е зададен на `${screenLabel}`.",
		only_available_in_the_casino = "Можете да направите това само докато сте в казиното.",
		casino_blip = "Казино"
	},

	cayo_perico = {
		approaching_out_of_bounds = "Приближавате се до границата на картата",
		out_of_bounds = "Извън границите на картата"
	},

	cayo_perico_world = {
		keep_heading_in_direction_in = "Продължете в посока ${direction}, за да стигнете до Кайо Перико.\n(остават ${distanceToTeleport}м)",
		keep_heading_in_direction_out = "Продължете в посока ${direction}, за да стигнете до Лос Сантос.\n(остават ${distanceToTeleport}м)",

		south = "южно",
		south_east = "югоизточно",
		east = "източно",
		north_east = "североизточно",
		north = "север",
		north_west = "северозапад",
		west = "запад",

		not_the_driver = "Трябва да сте шофьорът на превозното средство, за да летите до Кайо Перико.",
		not_a_cayo_vehicle = "Трябва да сте на лодка, самолет или хеликоптер, за да стигнете до Кайо Перико.",
		entering_cayo_perico_logs_title = "Влизане в Кайо Перико",
		entering_cayo_perico_logs_details = "${consoleName} влиза в Кайо Перико.",
		exiting_cayo_perico_logs_title = "Излизане от Кайо Перико",
		exiting_cayo_perico_logs_details = "${consoleName} излиза от Кайо Перико.",
		entering_cayo_perico_with_passengers_logs_title = "Влизане в Кайо Перико с Пасажери",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName} влиза в Кайо Перико с ${passengersAmount} пасажери.",
		exiting_cayo_perico_with_passengers_logs_title = "Излизане от Кайо Перико с Пасажери",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName} излиза от Кайо Перико с ${passengersAmount} пасажери."
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "Изкара отварка от Календара на Свети Михаил",
		claimed_money = "${consoleName} получи $${amount}.",
		claimed_item = "${consoleName} получи `${itemLabel}`.",
		claimed_vehicle = "${consoleName} получи кола специално за Коледа.",
		claimed_queue_priority = "${consoleName} получи приоритет на опашката за Коледна седмица.",

		claimed_advent_calendar_bonus_title = "Получен Коледен Календар Бонус",
		claimed_advent_calendar_bonus_details = "${consoleName} получи Коледния календар бонус - автомобил с име на модел `${modelName}`."
	},

	cinema = {
		failed_to_find_cinema_identifier = "Неуспешно намиране на идентификатора на киното.",

		screen_model_size = "Размер: x: ${sizeX}, y: ${sizeY}",
		screen_model_offset = "Отместване: x: ${offsetX}, y: ${offsetY}, z: ${offsetZ}",
		screen_model_rotation = "Завъртане: x: ${rotationX}, y: ${rotationY}, z: ${rotationZ}",
		screen_model_volume = "Обем: ${volumeRadius} (${volumeCutOffRadius})",
		screen_model_model = "Модел: ${modelName}",

		locked = "Заключено",

		add_video_to_queue_title = "Добавяне на видео в опашката",
		add_video_to_queue_details = "${consoleName} добави видео в опашката в кино с видео ключ `${videoType}:${videoId}`.",

		blacklisted_video = "Забранено видео с ключ `${videoKey}`.",
		failed_to_blacklist_video = "Неуспешно забраняване на видео с ключ `${videoKey}`.",
		video_is_already_blacklisted = "Видеото с ключ `${videoKey}` вече е забранено.",

		watching_movie = "Гледане на ${title}",

		cinema = "Кино",
		doppler_cinema = "Доплер Кино",
		sandy_cinema = "Санди Кино",
		tv = "Телевизия",
		monitor = "Монитор",
		laptop = "Лаптоп",
		projector = "Проектор",

		zoom = "Приближаване и одалечаване на камерата",
		slow = "Бавно",
		toggle_lights = "Превключване на светлините",
		exit = "Изход",

		-- NOTE: UI locales
		title = "Заглавие",
		length = "Дължина",
		date = "Дата",
		author = "Автор",
		queue = "Опашка",
		search_through_library = "Търсене в библиотеката...",
		add_to_library = "Добавете видео към библиотеката (URL)...",

		share_your_screen = "Споделете екрана си",
		how_to_share_screen = "Стриймване чрез OBS:",
		how_to_share_screen_part_1 = "Отворете OBS и отидете в настройките.",
		how_to_share_screen_part_2 = "В раздела 'Поток', изберете 'Потребителски...' за услугата.",
		how_to_share_screen_part_3 = "Въведете долу посочените стойности.",
		how_to_share_screen_part_4 = "Започнете да стриймвате в OBS.",
		how_to_share_screen_part_5 = "Натиснете 'Go Live!' долу.",
		server = "Сървър",
		stream_key = "Ключ за стриймване",
		cancel = "Отказ",
		go_live = "Стриймване",
		copied = "Копирано!",
		low_latency = "Намаляване на латенса на стрийма:",
		how_to_reduce_latency_part_1 = "Отворете OBS и отидете на настройките.",
		how_to_reduce_latency_part_2 = "Изберете опцията 'advanced' в 'Output Mode' под секцията 'Output'.",
		how_to_reduce_latency_part_3 = "Намерете настройката за Keyframe Interval в настройките на енкодера.",
		how_to_reduce_latency_part_4 = "Задайте интервала на ключовите кадри на 1 секунда.",
		custom_stream = "Персонализиран запис"
	},

	cinematic = {
		cinematic = "Кинематографичен",
		black_bars_set_to = "Кинематографичните черни ленти са зададени на ${blackBarsHeight}%."
	},

	claymores = {
		arm_claymore = "[${InteractionKey}] Зареди",
		disarm_claymore = "[${InteractionKey}] Разарми",

		disarming = "Развъоръжаване",
		arming = "Въоръжаване"
	},

	clothing = {
		outfit_failed = "Неуспешно прилагане на тоалет.",
		missing_outfit = "Липсващо тоалет",
		missing_outfit_name = "Липсващо име на тоалет",
		invalid_outfit = "Невалиден тоалет",
		no_nearby_clothing_spot = "Няма близък място за обличане.",
		trunk_closed = "Багажникът е затворен.",
		trunk_too_far = "Вие сте твърде далеч от багажника.",
		moved_too_far_trunk = "Вие се отдалечихте твърде много от багажника.",
		invalid_job = "Нямате необходимата работа, за да използвате това място за обличане.",
		outfit_list = "Комплекти облекла",
		no_saved_outfits = "Нямате запазени комплекти облекла.",
		saved_outfit = "Успешно запазен комплект облекло `${name}`.",
		replaced_outfit = "Успешно заменен комплект облекло `${name}`.",
		failed_save_outfit_exists = "Неуспешно запазване, комплект облекло `${name}` вече съществува.",
		failed_save_outfit = "Неуспешно запазване на екипировка.",
		deleted_outfit = "Екипировката '${name}' е изтрита успешно.",
		failed_delete_outfit_doesnt_exists = "Неуспешно изтриване, екипировката '${name}' не съществува.",
		failed_delete_outfit = "Неуспешно изтриване на екипировка.",

		player_model_missmatch = "Не можете да споделите екипировката си с този играч.",
		player_too_far = "Играчът е твърде далече.",
		shared_outfit_too_far = "${displayName} сподели екипировка с вас, но вие не се намирате близо до облекло.",
		outfit_shared = "Екипировката е успешно споделена.",
		outfit_not_shared = "Грешка при споделянето на облеклото.",
		shared_outfit = "${displayName} сподели облекло с вас. Напишете `yes`, за да приемете или `no`, за да откажете. (Това ще изтече след 30 секунди)",
		applied_shared_outfit = "Успешно приложено споделено облекло.",
		declined_shared_outfit = "Отклонено споделено облекло.",

		no_nearby_dead_player = "Няма близък мъртъв играч.",
		failed_to_steal_shoes = "Неуспешно откраднати обувки.",

		loading_model = "Зареждане на модела на героя...",
		loading_spawn = "Създаване на герой...",
		loading_preload_data = "Зареждане на данните на героя...",
		loading_set_data = "Настройка на данните на персонажа...",
		loading_tattoos = "Настройка на татуировките...",
		loading_finalize = "Финализиране..."
	},

	clothing_bag = {
		packed_outfit = "Успешно опакована външност в чанта.",
		packed_outfit_failed = "Неуспешно опаковане на външност в чанта.",

		item_description_filled = "Има опакована външност \"<i>${outfit}</i>\".",
		item_description_empty = "Няма опакована външност.",

		bag_empty = "Тази чанта за облекло е празна.",
		wrong_ped_model = "Тази външност не изглежда подходяща за вас.",
		cant_use_in_vehicle = "Не можете да използвате чанта за облекло в превозно средство.",
		cant_use_while_moving = "Не можете да използвате чанта с дрехи, докато се движите.",

		opening_bag = "Отваряне на чанта"
	},

	clothing_menu = {
		component = "Компонент",
		texture = "Текстура",
		palette = "Палитра",

		clothing = "Дрехи",
		accessories = "Аксесоари",
		face = "Лице",
		outfits = "Комплекти",

		reset_zoom = "Нулиране на увеличението",
		zoom_level = "Ниво на увеличение",

		variation = "Вариант",
		color = "Цвят",
		secondary_color = "Вторичен цвят",
		opacity = "Непрозрачност",

		limited_customization = "Този персонаж няма или има ограничени опции за персонализация.",

		press_to_access = "Натиснете ~INPUT_CONTEXT~, за да отворите магазина за дрехи.",
		press_no_freemode = "Този модел не може да получи достъп до магазин за облекло.",
		press_no_freemode_barber = "Този модел не може да получи достъп до фризьорски салон.",
		press_to_access_barber = "Натиснете ~INPUT_CONTEXT~ за достъп до фризьорски салон.",
		press_to_change_outfit = "Натиснете ~INPUT_CONTEXT~ за смяна на тоалета ви.",

		clothingstore = "Магазин за облекло",
		barbershop = "Фризьорски салон",

		changing_area = "Зона за смяна",

		switch_outfit = "Облечете този тоалет.",
		replace_outfit = "Заменете този тоалет.",
		new_outfit = "Запази тоалет",
		no_saved_outfits = "Няма запазени тоалети.",

		save_outfit_title = "Запазване на ново теме",
		save_outfit_label = "Име на тоалета:",
		save_outfit_button = "Запази",

		replace_outfit_title = "Замяна на тоалет",
		replace_outfit_description = "Сигурни ли сте, че искате да замените тоалета с име ${outfit}?",
		replace_outfit_button = "Замени",

		delete_outfit_title = "Изтриване на тоалет",
		delete_outfit_description = "Сигурни ли сте, че искате да изтриете тоалета с име ${outfit}?",
		delete_outfit_button = "Изтрий",

		packing_outfit_title = "Подреждане на тоалет",
		packing_outfit_description = "Изберете слотът, в който се намира чантата с дрехи, в която искате да опаковате комплекта \"${outfit}\".",

		cancel_button = "Отказ",

		remove_button = "Премахни ${label}",
		menu_description = "Натиснете \"V\", за да превключите камерата. Можете да плъзгате плъзгачите с мишката или да използвате стрелките. Можете да натиснете \"A\" и \"D\" за регулиране на вашата позиция.",

		failed_toggle_clothing_menu = "Неуспешно превключване на менюто с дрехи.",
		clothing_menu_success = "Отворено меню с дрехи за ${consoleName}.",
		barber_menu_success = "Неуспешно превключване на менюто на фризьорския салон.",
		failed_toggle_barber_menu = "Отвори менюто за фризьор за ${consoleName}.",

		hats_and_helmets = "Шапки/Каски",
		glasses = "Очила",
		earrings = "Обици",
		left_wrist = "Лява Китка",
		right_wrist = "Дясна Китка",

		pants = "Панталони",
		shoes = "Обувки",
		undershirt = "Долно бельо",
		necklaces_and_ties = "Гривни & Краватки",
		decals = "Налепници",
		shirts = "Ризи",
		arms = "Ръце",
		masks = "Маски",
		armor = "Броня",
		parachute_and_bag = "Парашут & Чанта",

		hair = "Коса",

		blemishes = "Прекъсвания",
		facial_hair = "Брада",
		eyebrows = "Вежди",
		ageing = "Остаряване",
		makeup = "Грим",
		blush = "Руж",
		complexion = "Тен",
		sun_damage = "Увреда от слънце",
		lipstick = "Червило",
		moles_and_freckles = "Родинки и петна",
		chest_hair = "Косми по гърдите",
		body_blemishes = "Дефекти на тялото",
		add_body_blemish = "Добави дефект на тялото"
	},

	command_socket = {
		connected = "Свързан с команден сокет.",
		disconnected = "Изключен от команден сокет.",
		failed_reconnect = "Неуспешно свързване към команден сокет."
	},

	containers = {
		drill_container = "Натиснете ~INPUT_CONTEXT~, за да отворите контейнера с дрила.",

		drilling_container = "Контейнер за пробиване",
		failed_drill = "Неуспешно пробиване на контейнера.",
		drill_success = "Успешно пробиване на контейнера.",

		container_blip = "Контейнер"
	},

	crafting = {
		menu_title = "Занаяти",
		close_menu = "Затваряне на менюто",

		smelt_materials = "Стопяване на материали",
		press_to_smelt_materials = "[${SeatEjectKey}] Стопяване на материали",

		glass_recipe = "Стопяване на стъкло",
		steel_recipe = "Стопяване на стомана",
		scrap_metal_recipe = "Стопяване на скрап метал",
		aluminium_recipe = "Стопяване на алуминий",

		smelting_materials = "Стопяване на ${usedItems}",
		smelted_materials = "Стопен ${usedItems}.",
		failed_smelt_materials = "Неуспешно топене на материали.",

		scrap_knife = "Ножове от скрап",
		press_to_scrap_knife = "[${SeatEjectKey}] Скропи ножове",
		failed_scrap_knife = "Неуспешно скропване на нож.",

		scrap_item = "Предмети за скрап",
		press_to_scrap_item = "[${SeatEjectKey}] Скропи предмети",
		failed_scrap_item = "Неуспешно скропване на предмет.",

		cut_item = "Картофи за нарязване",
		press_to_cut_item = "[${SeatEjectKey}] Нарежи картофи",
		cutting_item = "Нарязване на 3 картофи",
		cut_item_done = "Нарязани картофи на фриз.",
		failed_cut_item = "Неуспешно рязане на картофите.",

		fry_item = "Пържене на картофките",
		press_to_fry_item = "[${SeatEjectKey}] Пържене на картофките",
		frying_item = "Пържене на картофките",
		fried_item = "Пържени белгийски картофи.",
		failed_fry_item = "Неуспешно пържене на картофи.",

		grill_item = "Печене на сурови кюфтета",
		press_to_grill_item = "[${SeatEjectKey}] Печене на сурови кюфтета",
		grilling_item = "Печене на кюфтета",
		grilled_item = "Печени кюфтета.",
		failed_grill_item = "Неуспешно печене на кюфтета.",

		hamburger_recipe = "Хамбургер",
		cheeseburger_recipe = "Чийзбургер",

		assemble_burger = "Сглоби бургер",
		press_to_assemble_burger = "[${SeatEjectKey}] Сглоби бургер",
		assembling_burger = "Сглобяване на хамбургер",
		assembled_burger = "Сглобен хамбургер",
		failed_assemble_burger = "Неуспешно сглобяване на хамбургер.",

		assembling_cheeseburger = "Сглобяване на чийзбургер",
		assembled_cheeseburger = "Сглобен чийзбургер",
		failed_assemble_cheeseburger = "Неуспешно сглобяване на чийзбургер.",

		mix_avocado_smoothie = "Смесване на авокадо смути",
		press_to_mix_avocado_smoothie = "[${SeatEjectKey}] Смесване на авокадо смути",
		mixing_avocado_smoothie = "Смесване на авокадов смути",
		mixed_avocado_smoothie = "Смесен авокадов смути",
		failed_mix_avocado_smoothie = "Неуспешно смесване на авокадов смути.",

		fill_nitro_tank = "Запълване на нитро резервоар",
		press_to_fill_nitro_tank = "[${SeatEjectKey}] Запълнете нитро резервоар",
		filling_nitro_tank = "Запълване на нитро резервоар",
		filled_nitro_tank = "Напълнен нитро резервоар",
		failed_fill_nitro_tank = "Неуспешно запълване на нитро резервоар.",

		craft_sheet_metal = "Изработка на листов метал",
		press_to_craft_sheet_metal = "[${SeatEjectKey}] Изработете листов метал",
		crafting_sheet_metal = "Изработка на листов метал",
		crafted_sheet_metal = "Изработен листов метал.",
		failed_craft_sheet_metal = "Неуспешно изработване на листов метал.",

		craft_empty_tank = "Сглобяване на празен резервоар",
		press_to_craft_empty_tank = "[${SeatEjectKey}] Сглоби празен резервоар",
		crafting_empty_tank = "Сглобяване на празен резервоар",
		crafted_empty_tank = "Сглобен празен резервоар.",
		failed_craft_empty_tank = "Неуспешно сглобяване на празен резервоар.",

		craft_valve = "Сглобяване на клапан",
		press_to_craft_valve = "[${SeatEjectKey}] Сглоби клапан",
		crafting_valve = "Сглобяване на вентил",
		crafted_valve = "Сглобен вентил.",
		failed_craft_valve = "Неуспешно сглобяване на вентил.",

		craft_nitro_tank = "Сглобяване на нитро резервоар",
		press_to_craft_nitro_tank = "[${SeatEjectKey}] Сглобяване на нитро резервоар",
		crafting_nitro_tank = "Сглобяване на нитро резервоар",
		crafted_nitro_tank = "Сглобен нитро резервоар.",
		failed_craft_nitro_tank = "Неуспешно сглобяване на нитро резервоар.",

		salvage_meth_table = "Разглобяване на метамфетаминена маса",
		press_to_salvage_meth_table = "[${SeatEjectKey}] Разглобяване на метамфетаминена маса",
		salvaging_meth_table = "Разглобяване на метамфетаминена маса",
		salvaged_meth_table = "Разопитана маса за метамфетамин.",
		failed_salvage_meth_table = "Неуспешно разопитване на масата за метамфетамин.",

		refill_vape = "Зареждане на Вейп",
		press_to_refill_vape = "[${SeatEjectKey}] Зареди Вейп",
		refilling_vape = "Зареждане на Вейп",
		refilled_vape = "Вейпът е зареден.",
		failed_refill_vape = "Неуспешно зареждане на Вейп.",

		deconstructing_item = "Деконструкция на ${usedItems}",
		deconstructed_item = "Деконструиран ${usedItems}.",

		deconstruct_pistol = "Деконструкция на Полуавтоматичен Пистолет",
		press_to_deconstruct_pistol = "[${SeatEjectKey}] Деконструиране на Полуавтоматичен Пистолет",
		failed_deconstruct_pistol = "Неуспешно разглобяване на пистолет.",

		deconstruct_smg = "Разглобяване на SMG",
		press_to_deconstruct_smg = "[${SeatEjectKey}] Разглобяване на SMG",
		failed_deconstruct_smg = "Неуспешно разглобяване на SMG.",

		deconstruct_shotgun = "Разглобяване на пушка",
		press_to_deconstruct_shotgun = "[${SeatEjectKey}] Разглобяване на пушка",
		failed_deconstruct_shotgun = "Неуспешно разглобяване на пушка.",

		deconstruct_rifle = "Разглобяване на карабина",
		press_to_deconstruct_rifle = "[${SeatEjectKey}] Разглобяване на карабина",
		failed_deconstruct_rifle = "Неуспешно деконструиране на пушката.",

		extract_copper = "Извличане на мед",
		press_extract_copper = "[${SeatEjectKey}] Извличане на мед",
		extracting_copper = "Извличане на мед",
		extracted_copper = "Извлечен мед.",
		failed_extract_copper = "Неуспешно извличане на мед.",

		processing_item = "Обработване на ${usedItems}",
		processed_item = "Обработен(и) ${usedItems}.",

		process_copper = "Обработване на медни напитки",
		press_process_copper = "[${SeatEjectKey}] Обработване на медни напитки",
		failed_process_copper = "Неуспешно обработване на медни напитки.",

		process_rubber = "Преработка на гума",
		press_process_rubber = "[${SeatEjectKey}] Преработка на гума",
		failed_process_rubber = "Неуспешна преработка на гума.",

		process_aluminium = "Преработка на алуминий",
		press_process_aluminium = "[${SeatEjectKey}] Преработка на алуминий",
		failed_process_aluminium = "Неуспешна преработка на алуминий.",

		process_steel = "Преработка на стомана",
		press_process_steel = "[${SeatEjectKey}] Преработка на стомана",
		failed_process_steel = "Неуспешна преработка на стомана.",

		craft_lens = "Изработка на обектив",
		press_craft_lens = "[${SeatEjectKey}] Изработка на обектив",
		crafting_lens = "Изработка на обектив",
		crafted_lens = "Изработен обектив.",
		failed_craft_lens = "Неуспешно изработване на обектив.",

		craft_sight = "Изработка на прицел",
		press_craft_sight = "[${SeatEjectKey}] Изработване на прицел",
		crafting_sight = "Изработка на прицел",
		crafted_sight = "Изработен прицел.",
		failed_craft_sight = "Неуспешно изработване на прицел.",

		craft_pistol_sight = "Изработка на пистолетен прицел",
		press_craft_pistol_sight = "[${SeatEjectKey}] Изработване на пистолетен прицел",
		crafting_pistol_sight = "Изработка на пистолетен прицел",
		crafted_pistol_sight = "Изработен пистолетен прицел.",
		failed_craft_pistol_sight = "Неуспешно изработване на прицел за пистолет.",

		craft_scope = "Изработване на прицел",
		press_craft_scope = "[${SeatEjectKey}] Изработване на прицел",
		crafting_scope = "Изработка на прицел",
		crafted_scope = "Изработен прицел.",
		failed_craft_scope = "Неуспешно изработване на прицел.",

		craft_grip = "Изработване на дръжка",
		press_craft_grip = "[${SeatEjectKey}] Изработване на дръжка",
		crafting_grip = "Изработка на дръжка",
		crafted_grip = "Изработена дръжка.",
		failed_craft_grip = "Неуспешно изработване на дръжка.",

		craft_extended_clip = "Изработване на разширен магазин",
		press_craft_extended_clip = "[${SeatEjectKey}] Изработване на разширен магазин",
		crafting_extended_clip = "Изработка на разширен пълнител",
		crafted_extended_clip = "Изработен разширен пълнител.",
		failed_craft_extended_clip = "Неуспешно изработване на разширен пълнител.",

		craft_extended_smg_clip = "Изработка на разширен пълнител за SMG",
		press_craft_extended_smg_clip = "[${SeatEjectKey}] Изработка на разширен пълнител за SMG",
		crafting_extended_smg_clip = "Изработка на разширен пълнител за SMG",
		crafted_extended_smg_clip = "Изработен разширен пълнител за SMG.",
		failed_craft_extended_smg_clip = "Неуспешно изработване на разширен пълнител за SMG.",

		craft_extended_shotgun_clip = "Изработка на разширен пълнител за пушка",
		press_craft_extended_shotgun_clip = "[${SeatEjectKey}] Изработи разширен патронник за пушка",
		crafting_extended_shotgun_clip = "Изработване на разширен патронник за пушка",
		crafted_extended_shotgun_clip = "Изработен разширен патронник за пушка.",
		failed_craft_extended_shotgun_clip = "Неуспешно изработване на разширен патронник за пушка.",

		craft_extended_pistol_clip = "Изработи разширен патронник за пистолет",
		press_craft_extended_pistol_clip = "[${SeatEjectKey}] Изработи разширен патронник за пистолет",
		crafting_extended_pistol_clip = "Изработване на разширен патронник за пистолет",
		crafted_extended_pistol_clip = "Изработка на удължен пистолетен пълнител.",
		failed_craft_extended_pistol_clip = "Неуспешна изработка на удължен пистолетен пълнител.",

		craft_drum = "Изработка на барабан.",
		press_craft_drum = "[${SeatEjectKey}] Изработка на барабан.",
		crafting_drum = "Изработка на барабан.",
		crafted_drum = "Изработка на барабан.",
		failed_craft_drum = "Неуспешна изработка на барабан.",

		craft_suppressor = "Изработка на подавач.",
		press_craft_suppressor = "[${SeatEjectKey}] Изработка на подавач.",
		crafting_suppressor = "Изработка на подавач.",
		crafted_suppressor = "Изработка на подавач.",
		failed_craft_suppressor = "Неуспешно изработване на приглушител.",

		craft_flashlight = "Изработка на фенерче",
		press_craft_flashlight = "[${SeatEjectKey}] Изработка на фенерче",
		crafting_flashlight = "Изработка на фенерче",
		crafted_flashlight = "Фенерче изработено.",
		failed_craft_flashlight = "Неуспешно изработване на фенерче.",

		mix_paint = "Смесване на боя",
		press_mix_paint = "[${SeatEjectKey}] Смесване на боя",
		mixing_paint = "Смесване на боя",
		mixed_paint = "Боята е смесена.",
		failed_mix_paint = "Неуспешно смесване на боя.",

		modify_knuckle = "Преработка на латунени юмруци",
		press_modify_knuckle = "[${SeatEjectKey}] Промяна на бронзови юмруци",
		modifying_knuckle = "Променяне на бронзови юмруци",
		modified_knuckle = "Бронзови юмруци променени.",
		failed_modify_knuckle = "Неуспешна промяна на бронзови юмруци.",

		craft_jammer = "Изработи пречка",
		press_craft_jammer = "[${SeatEjectKey}] Изработи пречка",
		crafting_jammer = "Изработване на пречка",
		crafted_jammer = "Изработена пречка.",
		failed_craft_jammer = "Неуспешно изработване на пречка.",

		craft_advanced_repair_kit = "Изработи напреднал комплект за ремонт",
		press_craft_advanced_repair_kit = "[${SeatEjectKey}] Изработи напреднал комплект за ремонт",
		crafting_advanced_repair_kit = "Изработка на напреднал комплект за ремонт",
		crafted_advanced_repair_kit = "Изработен напреднал комплект за ремонт.",
		failed_craft_advanced_repair_kit = "Неуспешна изработка на напреднал комплект за ремонт.",

		process_metal = "Обработване на метал",
		press_process_metal = "[${SeatEjectKey}] Обработване на метал",

		aluminium_powder_recipe = "Създаване на алуминиев прах",
		pulverizing_aluminium = "Натриване на алуминий",
		pulverized_aluminium = "Натриване на алуминий завършено.",
		failed_pulverize_aluminium = "Неуспешно натриване на алуминий.",

		iron_oxide_recipe = "Произведи Желязен Оксид",
		pulverizing_steel = "Разпулверизиране на стомана",
		pulverized_steel = "Разпулверизирана стомана.",
		failed_pulverize_steel = "Неуспешно разпулверизиране на стомана.",

		steel_filings_recipe = "Произведи Стоманени Търкалки",
		filing_steel = "Търкане на Стомана",
		filed_steel = "Търкана стомана.",
		failed_file_steel = "Неуспешно търкане на стомана.",

		craft_steel_file = "Произведи Стоманен Файл",
		press_craft_steel_file = "[${SeatEjectKey}] Произведи Стоманен Файл",
		crafting_steel_file = "Произвежда Стоманен Файл",
		crafted_steel_file = "Произведен стоманен файл.",
		failed_craft_steel_file = "Неуспешно произвеждане на стоманен файл.",

		mix_thermite = "Смесване на термит",
		press_mix_thermite = "[${SeatEjectKey}] Смесване на термит",
		mixing_thermite = "Смесване на термит",
		mixed_thermite = "Смесен термит.",
		failed_mix_thermite = "Неуспешно смесване на термит.",

		deconstruct_phone = "Разглобяване на телефон",
		press_deconstruct_phone = "[${SeatEjectKey}] Разглобяване на телефон",
		failed_deconstruct_phone = "Неуспешно разглобяване на телефона.",

		deconstruct_radio = "Разглобяване на радиото",
		press_deconstruct_radio = "[${SeatEjectKey}] Разглоби радиото",
		failed_deconstruct_radio = "Неуспешно разглобяване на радиото.",

		deconstruct_raspberry = "Разглобяване на raspberry",
		press_deconstruct_raspberry = "[${SeatEjectKey}] Разглоби raspberry",
		failed_deconstruct_raspberry = "Неуспешно разглобяване на raspberry.",

		deconstruct_chip = "Разглобяване на чип",
		press_deconstruct_chip = "[${SeatEjectKey}] Разглоби чип",
		failed_deconstruct_chip = "Неуспешно разглобяване на чип.",

		craft_device_scanner = "Изработване на Скенер за Устройства",
		press_craft_device_scanner = "[${SeatEjectKey}] Изработете Скенер за Устройства",
		crafting_device_scanner = "Изработка на Скенер за Устройства",
		crafted_device_scanner = "Създаден е скенер за устройства.",
		failed_craft_device_scanner = "Неуспешно изработване на скенер за устройства.",

		craft_decryption_key = "Изработване на Ключ за Декриптиране",
		press_craft_decryption_key = "[${SeatEjectKey}] Изработете Ключ за Декриптиране",
		crafting_decryption_key = "Изработка на Ключ за Декриптиране",
		crafted_decryption_key = "Изработена ключ за декриптиране.",
		failed_craft_decryption_key = "Неуспешно изработване на ключ за декриптиране.",

		craft_tire_wall = "Изработи Гумена Стена",
		press_craft_tire_wall = "[${SeatEjectKey}] Изработи Гумена Стена",
		crafting_tire_wall = "Изработка на Гумена Стена",
		crafted_tire_wall = "Изработена гумена стена.",
		failed_craft_tire_wall = "Неуспешно изработване на гумена стена.",

		fix_tire_wall = "Поправи Гумена Стена",
		press_fix_tire_wall = "[${SeatEjectKey}] Поправи Гумена Стена",
		fixing_tire_wall = "Поправка на Гумена Стена",
		fixed_tire_wall = "Поправена гумена стена.",
		failed_fix_tire_wall = "Неуспешно почистване на гума срещу стена.",

		saw_shotgun = "Пила за отрязване на дръбноговорни пушки",
		press_saw_shotgun = "[${SeatEjectKey}] Пила за отрязване на дръбноговорни пушки",
		sawing_shotgun = "Отрязване на дръбноговорни пушки",
		sawed_shotgun = "Дръбноговорна пушка отрязана.",
		failed_saw_shotgun = "Неуспешно отрязване на дръбноговорни пушки.",

		bake_brownies = "Печене на брауни",
		press_bake_brownies = "[${SeatEjectKey}] Печене на брауни",
		baking_brownies = "Печене на брауни",
		baked_brownies = "Изпечени брауни.",
		failed_bake_brownies = "Неуспешно печене на брауни.",

		mix_brushstroke_paint = "Смесване на боя с четка",
		press_mix_brushstroke_paint = "[${SeatEjectKey}] Смесване на боя с четка",
		mixing_brushstroke_paint = "Смесване на боя с четка",
		mixed_brushstroke_paint = "Смесена боя с четка.",
		failed_mix_brushstroke_paint = "Неуспешно смесване на боя с четка.",

		mix_skull_paint = "Смесване на боя с череп",
		press_mix_skull_paint = "[${SeatEjectKey}] Смесване на боя с череп",
		mixing_skull_paint = "Смесване на боя с череп",
		mixed_skull_paint = "Смесена боя с череп.",
		failed_mix_skull_paint = "Неуспешно смесване на боя с череп.",

		mix_leopard_paint = "Смесване на боя с леопард",
		press_mix_leopard_paint = "[${SeatEjectKey}] Смеси леопардов цвят",
		mixing_leopard_paint = "Смесване на леопардов цвят",
		mixed_leopard_paint = "Смесен леопардов цвят.",
		failed_mix_leopard_paint = "Неуспешно смесване на леопардов цвят.",

		mix_zebra_paint = "Смешка на зебра цвят",
		press_mix_zebra_paint = "[${SeatEjectKey}] Смеси зебра цвят",
		mixing_zebra_paint = "Смесване на зебра цвят",
		mixed_zebra_paint = "Смесен зебра цвят.",
		failed_mix_zebra_paint = "Неуспешно смесване на зебра цвят.",

		mix_geometric_paint = "Смешка на геометричен цвят",
		press_mix_geometric_paint = "[${SeatEjectKey}] Смеси геометричен цвят",
		mixing_geometric_paint = "Смесване на геометрично боя",
		mixed_geometric_paint = "Смесена геометрична боя.",
		failed_mix_geometric_paint = "Неуспешно смесване на геометрична боя.",

		mix_patriotic_paint = "Смесване на патриотична боя",
		press_mix_patriotic_paint = "[${SeatEjectKey}] Смесване на патриотична боя",
		mixing_patriotic_paint = "Смесване на патриотична боя",
		mixed_patriotic_paint = "Смесена патриотична боя.",
		failed_mix_patriotic_paint = "Неуспешно смесване на патриотична боя.",

		craft_radio_decrypter = "Създаване на радио декриптор",
		press_craft_radio_decrypter = "[${SeatEjectKey}] Създаване на радио декриптор",
		crafting_radio_decrypter = "Създаване на Декриптор за Радио",
		crafted_radio_decrypter = "Създаден декриптор за радио.",
		failed_craft_radio_decrypter = "Неуспешно създаване на декриптор за радио.",

		craft_grenade_shell = "Създаване на Гранатна Туба",
		press_craft_grenade_shell = "[${SeatEjectKey}] Създаване на гранатна туба",
		crafting_grenade_shell = "Създаване на Гранатна Туба",
		crafted_grenade_shell = "Създадена гранатна туба.",
		failed_craft_grenade_shell = "Неуспешно създаване на гранатна туба.",

		craft_grenade_pin = "Създаване на Гранатен Щифт",
		press_craft_grenade_pin = "[${SeatEjectKey}] Създаване на гранатен щифт",
		crafting_grenade_pin = "Изработка на пин на граната",
		crafted_grenade_pin = "Изработен пин на граната.",
		failed_craft_grenade_pin = "Неуспешна изработка на пина на граната.",

		craft_gas_grenade = "Изработка на газова граната",
		press_craft_gas_grenade = "[${SeatEjectKey}] Изработка на газова граната",
		crafting_gas_grenade = "Изработка на газова граната",
		crafted_gas_grenade = "Изработена газова граната.",
		failed_craft_gas_grenade = "Неуспешна изработка на газовата граната.",

		break_apart_ring = "Разглобяване на пръстен",
		press_break_apart_ring = "[${SeatEjectKey}] Разглобяване на пръстен",
		breaking_ring = "Разделяне на пръстен",
		broke_ring = "Разделен пръстен.",
		failed_break_ring = "Неуспешно разделяне на пръстен.",

		mix_lean = "Смесване на Lean",
		press_to_mix_lean = "[${SeatEjectKey}] Смесване на Lean",
		mixing_lean = "Смесване на Lean",
		mixed_lean = "Смесен Lean.",
		failed_mix_lean = "Неуспешно смесване на Lean.",

		craft_pager = "Изработка на Pager",
		press_to_craft_pager = "[${SeatEjectKey}] Изработка на Pager",
		crafting_pager = "Изработка на Pager",
		crafted_pager = "Изработен Pager.",
		failed_craft_pager = "Неуспешна изработка на Pager.",

		craft_multi_tool = "Изработка на Multi Tool",
		press_to_craft_multi_tool = "[${SeatEjectKey}] Изработете многофункционален инструмент",
		crafting_multi_tool = "Изработка на многофункционален инструмент",
		crafted_multi_tool = "Изработихте многофункционален инструмент.",
		failed_craft_multi_tool = "Неуспешно изработване на многофункционален инструмент.",

		mix_grimace_shake = "Смесете Гримейс Шейк",
		press_to_mix_grimace_shake = "[${SeatEjectKey}] Смесете Гримейс Шейк",
		mixing_grimace_shake = "Смесване на Гримейс Шейк",
		mixed_grimace_shake = "Смесихте Гримейс Шейк.",
		failed_mix_grimace_shake = "Неуспешно смесване на Гримейс Шейк.",

		deconstruct_ammo = "Разглобете Муниции",
		press_to_deconstruct_ammo = "[${SeatEjectKey}] Разглобяване на боеприпаси",

		pistol_deconstruct_recipe = "Разглобяване на пистолетни боеприпаси",
		shotgun_deconstruct_recipe = "Разглобяване на дробовикови боеприпаси",
		sub_deconstruct_recipe = "Разглобяване на подкуфарни боеприпаси",
		rifle_deconstruct_recipe = "Разглобяване на стрелкови боеприпаси",

		deconstructing_ammo = "Разглобяване на боеприпаси",
		deconstructed_ammo = "Разглобихте боеприпаси.",
		failed_deconstruct_ammo = "Неуспешно разглобяване на боеприпаси.",

		craft_ammo = "Производство на боеприпаси",
		press_to_craft_ammo = "[${SeatEjectKey}] Производство на боеприпаси",

		pistol_ammo_recipe = "Произведи патрони за пистолет",
		shotgun_ammo_recipe = "Произведи патрони за пушка",
		sub_ammo_recipe = "Произведи патрони за пистолет-пушка",
		rifle_ammo_recipe = "Произведи патрони за гвинтовка",

		crafting_ammo = "Производство на патрони",
		crafted_ammo = "Произведени патрони.",
		failed_craft_ammo = "Неуспешно произведени патрони.",

		no_required_items = "Нямате всички необходими предмети.",

		debug_multi = "- Няколко изхода -",

		used_crafting_station_title = "Станция за производство",
		used_crafting_station_details = "${consoleName} използва станция за производство, за да произведе ${amount}x ${itemName}."
	},

	crashes = {
		crash_failed = "Неуспешно генериране на авария за ${consoleName}.",
		crash_success = "Успешно генериране на авария за ${consoleName}."
	},

	creation = {
		turn_right = "Завий надясно",
		turn_left = "Завий наляво",
		toggle_light = "Превключи светлините",
		move_menu = "Меню за Движение",
		change_colors = "Промяна на Цветовете",
		move_sliders = "Движение на Скролбаровете",
		enter = "Вход",
		back = "Назад"
	},

	creation_menu = {
		character_creation = "Създаване на герой",
		new_character = "НОВ ГЕРОЙ",

		select_a_model = "Избери модел.",

		heritage = "Наследство",
		heritage_description = "Избери за да избереш родителите си.",
		mom = "Майка",
		mom_description = "Избери майка си.",
		dad = "Баща",
		dad_description = "Избери баща си.",
		resemblance = "Подобие",
		resemblance_description = "Изберете дали чертите ви са повече влияние на майка ви или баща ви.",
		skin_tone = "Цвят на кожата",
		skin_tone_description = "Изберете дали цветът на кожата ви се определя повече от майка ви или баща ви.",
		divorced = "Разведени",
		divorced_description = "Изберете ако родителите ви са разведени.",

		["in"] = "in",
		out = "навън",
		up = "нагоре",
		down = "надолу",
		brow = "Вежда",
		brow_description = "Направете промени във външния си вид.",

		squint = "Шишнати",
		wide = "Широк",
		eyes = "Очи",
		eyes_description = "Направете промени във вънешния си вид.",

		narrow = "Тесен",
		wide = "Широк",
		nose = "Нос",
		nose_description = "Направете промени във вашите физически черти.",

		short = "Къс",
		long = "Дълъг",
		crooked = "Крив",
		curved = "Извиване",
		nose_profile = "Профил на носа",
		nose_profile_description = "Направете промени във вашите физически черти.",

		broken_left = "Счупен в ляво",
		broken_right = "Счупен в дясно",
		tip_up = "Нагоре",
		tip_down = "Надолу",
		nose_tip = "Връх на носа",
		nose_tip_description = "Направете промени във вашите физически черти.",

		cheekbones = "Бузници",
		cheekbones_description = "Направете промени във вашите физически черти.",

		gaunt = "Изхуднал",
		puffed = "Изпълнен",
		cheeks = "Бузи",
		cheeks_description = "Направете промени по външния вид на лицето си.",

		thin = "Тънък",
		fat = "Дебел",
		lips = "Устни",
		lips_description = "Направете промени по външния вид на устните си.",

		round = "Кръгъл",
		square = "Квадратен",
		jaw = "Щам",
		jaw_description = "Направете промени по външния вид на челюстта ви.",

		chin_profile = "Брадичка",
		chin_profile_description = "Направете промени по външния вид на брадичката си.",

		pointed = "Остър",
		rounded = "Закръглен",
		bum = "Малозрял",
		chin_shape = "Форма на брадичката",
		chin_shape_description = "Променете физическите си характеристики.",

		thick = "Дебел",
		neck_thickness = "Дебелина на врата",
		neck_thickness_description = "Променете физическите си характеристики.",

		features = "Характеристики",
		appearance = "Изглед",
		save_and_continue = "Запази и продължи",
		components = "Компоненти",
		props = "Аксесоари",
		ambient_females = "Обикновени жени",
		ambient_male = "Обикновени мъже",
		animals = "Животни",
		cutscene = "Анимация",
		gang_female = "Женска банда",
		gang_male = "Мъжка банда",
		multiplayer = "Мултиплейър",
		scenario_female = "Сценарий (жена)",
		scenario_male = "Сценарий (мъж)",
		story = "История",
		story_scenario_female = "Исторически сценарий (жена)",
		story_scenario_male = "Исторически сценарий (мъж)",
		models = "Модели",

		features_description = "Изберете за промяна на вашите лицеви черти.",

		unknown_hair = "Непозната коса (${hairId})",
		unknown_eyebrow = "Непознати вежди (${eyebrowId})",
		unknown_facial_hair = "Непозната брада (${facialHairId})",
		unknown_skin_blemish = "Непознати изричия на кожата (${skinBlemishId})",
		unknown_skin_aging = "Непозната стареене на кожата (${skinAgingId})",
		unknown_skin_complexion = "Непознат тен на кожата (${skinComplexionId})",
		unknown_moles_and_freckles = "Непозната петна и пъпки (${molesAndFrecklesId})",
		unknown_skin_damage = "Непознато увреждане на кожата (${skinDamageId})",
		unknown_eye_makeup = "Непознат грим за очи (${eyeMakeupId})",
		unknown_blusher = "Непознат руж (${blusherId})",
		unknown_lipstick = "Непознато червило (${lipstickId})",
		unknown_chest_hair = "Непознато косми по гърдите (${chestHairId})",

		color = "Цвят",
		opacity = "Прозрачност",

		hair = "Коса",
		hair_description = "Направете промени във външността си.",

		eyebrows = "Вежди",
		eyebrows_description = "Направете промени във вашето излъчване.",

		facial_hair = "Лицева коса",
		facial_hair_description = "Направете промени във вашето излъчване.",

		skin_blemishes = "Дефекти на кожата",
		skin_blemishes_description = "Направете промени във вашето излъчване.",

		skin_aging = "Стареене на кожата",
		skin_aging_description = "Направете промени във вашето излъчване.",

		skin_complexion = "Тена на кожата",
		skin_complexion_description = "Направете промени във вашето излъчване.",

		moles_and_freckles = "Миризми и петна",
		moles_and_freckles_description = "Направете промени във вашия външен вид.",

		skin_damage = "Увреждане на кожата",
		skin_damage_description = "Направете промени във вашия външен вид.",

		eye_color = "Цвят на очите",
		eye_color_description = "Направете промени във вашия външен вид.",

		eye_makeup = "Спирала за очи",
		eye_makeup_description = "Направете промени във вашия външен вид.",

		blusher = "Руж",
		blusher_description = "Направете промени във вашия външен вид.",

		lipstick = "Червило",
		lipstick_description = "Направете промени във вашия външен вид.",

		chesthair = "Косми на гърдите",
		chesthair_description = "Направете промени във вашето излъчване.",

		ready_to_start_playing = "Готови ли сте да започнете да играете?",
		no = "Не",
		go_back = "Върнете се обратно.",
		yes = "Да",
		you_will_not_be_able_to_return = "Няма да можете да се върнете.",

		freemode = "Freemode",
		freemode_description = "Изберете дали искате да използвате модел във Freemode. Моделите в Freemode са с висока степен на персонализация.",

		sex = "Пол",
		sex_description = "Изберете пола на вашия персонаж.",
		male = "Мъж",
		female = "Жена",

		props_description = "Изберете предпочитаните аксесоари.",

		hat = "Шапка",
		glass = "Очила",
		ear = "Слушалки",
		watch = "Часовник",
		bracelet = "Гривна",

		appearance_description = "Изберете за промяна на външността си.",
		components_description = "Изберете предпочитаните си компоненти.",

		none = "Няма",

		texture = "Текстура ${textureId}",
		drawable = "Рисуваем ${drawableId}",

		clean_shaven = "Гладко бръснат",

		face = "Лице",
		mask = "Маска",
		hair = "Коса",
		torso = "Горен торс",
		leg = "Долен торс",
		parachute_and_bag = "Парашут / раница",
		shoes = "Обувки",
		accessory = "Аксесоари",
		undershirt = "Горно бельо",
		kevlar = "Кевлар",
		badge = "Значка",
		torso_two = "Торс 2"
	},

	crosshair = {
		copied_config = "Конфигурацията беше копирана в клипборда.",
		imported_config = "Конфигурацията беше импортирана.",
		disabled_crosshair = "Персонализираната мерник беше деактивирана.",

		invalid_url_title = "Невалиден URL на изображението",
		invalid_url_description = "URL адресът на изображението, който сте въвели, е невалиден. Трябва да бъде пряк линк към изображението, а не линк към уебсайт, който съдържа изображението. Трябва да започва с един от следните URL адреси:",
		cancel_button = "Добре",

		center = "Център",
		main = "Основен",
		outer = "Външен",
		kill = "Убийство",

		enabled = "Активиран",
		size = "Размер",
		image = "Изображение",
		length = "Дължина",
		offset = "Отместване",
		secondary_offset = "Вторично отместване",
		rotation = "Завъртане",
		color = "Цвят",
		duration = "Продължителност (ms)",

		flash_no_image = "Убийственият флаш не работи със специално изображение.",
		do_flash = "Извърши флаш",
		flashing = "Флашване"
	},

	clip_saver = {
		start_recording = "Запис на началото",
		clip_save = "Запази клипа",
		clip_discard = "Отхвърли клипа"
	},

	compass = {
		north = "С",
		north_east = "СИ",
		east = "И",
		south_east = "ЮИ",
		south = "Ю",
		south_West = "SW",
		west = "З",
		north_west = "СЗ"
	},

	courthouse = {
		press_to_use_gavel = "Натиснете ~INPUT_CONTEXT~ за използване на мъниче."
	},

	daily_activities = {
		not_enough_money = "Нямате достатъчно пари.",

		press_to_daily_activities = "[${InteractionKey}] Дневни Активности",
		daily_activities = "Дневни Активности",
		resets_in = "Нулира се след ${resetsIn}...",
		complete_the_other_tasks_to_unlock = "Завършете другите задачи, за да отключите...",
		remain = "${remain} остават",
		remain_money = "${remain} пари остават",
		claimed = "Получено",
		claim = "Получи",
		streak_reward_one = "Когато вашата серия е 7 или повече, ще получите още един безплатен дневен завъртане на Късметлийското Колело.",
		streak_reward_two = "Когато вашата серия достигне 30 или повече, имате шанс да спечелите специално превозно средство на 4-тата си задача.",

		special_vehicle_won = "Спечелихте специално превозно средство! Можете да го намерите в гаража си.",

		reset_daily_activities = "Нулиране на дневните активности.",

		task_progress = "Прогрес на задачата: ${task} (остават ${remain})",
		task_progress_money = "Прогрес на задачата: ${task} (остават $${remain})",
		task_finished = "Задачата е изпълнена: ${task}",

		parachute_from_location = "Използвайте парашут от ${location}.",
		gamble_at_blackjack = "Играйте ${amount} ръце на масата за блекджек.",
		bring_in_items = "Донеси следните предмети.",
		kills_in_arena = "Направи ${amount} убийства в Арената.",
		headshot_kills_in_arena = "Направи ${amount} убийства в главата в Арената.",
		punch_locals = "Удари ${amount} местни жители.",
		move_from_place_to_place = "Премести се от ${from} до ${to} за ${time} секунди.",
		put_bets_in_jackpot = "Постави залози на стойност $${amount} в Джакпота.",
		win_bets_in_jackpot = "Изиграй залози на стойност $${amount} в Джакпота.",
		chop_vehicles = "Разкъсвай ${amount} превозни средства.",
		purchase_ammo = "Купи ${amount} боеприпаси.",
		collect_items_from_diving = "Съберете ${amount}бр. ${itemLabel} от гмуркане.",
		take_zombie_pills = "Вземете ${amount}бр. зомби пили.",
		dig_up_a_treasure = "Изкопайте съкровище с помощта на Съкровищна Карта.",
		refine_gems = "Рафинирайте ${amount} бр. скъпоценни камъни.",
		visit_location = "Посетете ${location}.",
		visit_the_location = "Посетете ${location}.",

		confirm_task_refresh = "Сигурни ли сте, че искате да освежите тази задача? Цената е $${cost}.",
		yes = "Да",
		no = "Не",

		logs_daily_streak_changed_title = "Променен Дневен Запис",
		logs_daily_streak_changed_details = "${consoleName} сега има дневна поредица от `${streak}`.",

		logs_daily_task_completed_title = "Дневна задача завършена",
		logs_daily_task_completed_details = "${consoleName} завърши дневна задача с име `${taskName}`.",

		restore_streak = "Възстановяване на поредица от ${streak}",
		confirm_streak_restore = "Сигурни ли сте, че искате да възстановите поредицата си от ${streak} дни? Цената е ${cost} ОП точки.",

		not_enough_op_points = "За да възстановите поредицата, ви трябват ${cost} ОП точки. Вие разполагате с ${points} ОП точки.",
		streak_restored = "Вашата поредица от ${streak} дни е възстановена срещу ${cost} ОП точки."
	},

	dashcam = {
		video = "Видео",
		time = "Време",
		date = "Дата",

		unit_id = "ID на единица",
		unit_name = "Име на единица",
		unit_speed = "Скорост на единица",

		state_seal_one = "Това превозно средство е с лиценз за",
		state_seal_two = "Щат Сан Андреас",
		state_seal_three = "Всяко неоторизирано използване е подложено на тежка наказателна мярка съгласно 13 S.A. Pen. Код 502 (а).",

		kmh = "км/ч",
		mph = "мили/ч",

		set_unit_id_to = "Вашето идентификационно номер е настроено на ${unitId}.",
		reset_unit_id = "Вашето идентификационно номер е нулирано.",
		failed_to_set_unit_id = "Неуспешно настройване на идентификационния ви номер.",
		unit_id_already_set_to = "Вашият идентификационен номер вече е настроен на ${unitId}.",
		unit_id_already_reset = "Вашият идентификационен номер вече е нулиран.",
		invalid_unit_id = "Идентификационният номер трябва да бъде цяло число между 1 и 999.",

		unit_id_vehicles_updated = "Вашите спешни превозни средства са актуализирани, за да отразят новият ви идентификационен номер на отряд `${unitId}`."
	},

	debug = {
		ped = "NPC",
		vehicle = "Превозно средство",
		object = "Обект",
		owned_by_us = "Притежание на нас",
		owned_by = "Притежание на",
		one_state_set = "1 състояние",
		many_states_set = "${count} състояния",
		no_states = "Няма настройки",
		native_model = "природен/gta",
		owned_by_server = "Сървър",
		owned_by_you = "Ваше притежание",
		first_owned_short = "Първи собственик: ${firstOwned}",
		current_owned_short = "Текущ Собственик: ${currentOwner}",
		network_id_side = "Физическо ID: ${networkId}",
		no_target = "Няма Цел",
		loading_owner = "Регистрирано на ~y~Зареждане...",
		owner_npc = "Регистрирано на ~b~${fullName}",
		owner_player = "Регистрирано на ~g~${fullName}",
		character_known = "Герой: ~g~${fullName}",
		character_unknown = "Герой: ~r~Неизвестен",
		invalid_radius_parameter = "Невалиден параметър `radius`.",
		inject_code_invalid_player = "Няма играчи със сървър ID `${serverId}`.",
		inject_code_success_for_everyone = "Успешно вмъкнат код за всички.",
		inject_code_success_for_player = "Успешно инжектиран код за ${consoleName}.",
		inject_code_success = "Успешно инжектиран код.",
		inject_code_target_user_not_found = "Не е намерен целеви потребител.",
		inject_code_invalid_text = "Невалиден текст.",
		inject_code_invalid_input = "Невалиден вход.",
		inject_code_no_permissions = "Няма права.",
		inject_code_user_not_found = "Потребителят не е намерен.",
		inject_code_invalid_url = "Невалиден URL адрес.",
		inject_code_invalid_radius = "Невалиден радиус.",
		game_pools = "Игрални групи:",
		ped_config_flags = "Флагове за настройки на педи:",
		ped_is = "Присъства Персонаж:",
		vehicle_is = "Присъства Превозно средство:",
		world_is = "Светът:",
		controls = "Контроли: ${controls}",
		tasks = "Заявки: ${calls} (${total})",
		invoke_calls = "Извиквания на функция: ${calls} (${total})",
		draw_calls = "Извиквания на draw: ${calls}",
		player_speed = "Скорост на Играча: ${playerSpeed}",
		player_ped = "Идентификационен номер на Играча: ${playerPedId}",
		heading = "Настройки: ${heading}",
		coords = "Координати: ${coords}",
		rotation = "Ротация: ${rotation}",
		normal = "Повърхност: ${normal}",
		velocity = "Скорост: ${velocity}",
		ground_material = "Тип повърхност: ${material}",
		g_force = "Lateralno ускорение: ${force}",
		debug_print_f8 = "Информация за дебъгване е отпечатана в конзолата F8.",
		no_vehicle_bone = "Няма '${boneName}' кости",
		server_vehicles = "Сървър превозни средства: ${count}",
		not_networked_vehicles = "Превозни средства извън мрежа: ${count}",
		parked_vehicles = "Паркирани превозни средства: ${count}",

		distance = "Дистанция: ${distance}м",
		distance_first = "Запаметена първа позиция.",

		get_search_invalid = "Невалидно търсене (поне 2 символа).",

		disabled_ped_bone_debug = "Деактивиран дебъг на кости на пешеходци.",

		mph = "мч",
		vehicle_speed = "Скорост: ${speed}",
		vehicle_average = "Средна: ${speed}",
		vehicle_top_speed = "Максимална скорост: ${speed}",
		vehicle_acceleration = "0 до 60: ${time}",
		vehicle_acceleration_120 = "0 до 120: ${time}",
		vehicle_acceleration_150 = "0 до 150: ${time}",
		vehicle_acceleration_force = "Сила на старт: ${force}",

		invalid_network_id = "Невалиден идентификатор в мрежата.",
		delete_entity_success = "Успешно изтрито существо с идентификационен номер на мрежата ${networkId}.",
		delete_entity_failed = "Неуспешно изтрито существо.",
		delete_entity_no_permissions = "Опит за изтриване на существо без достатъчни разрешения.",

		failed_entity_info = "Неуспешно получена информация за същество.",
		printed_entity_info = "Изписана сървърна информация за съществото в F8.",

		move_entity_success = "Успешно премести едност на мрежовото идентификационно номер ${networkId}.",
		move_entity_failed = "Неуспешно преместване на едноств.",
		move_entity_no_permissions = "Опит за преместване на едиство без необходимите права.",

		weapon_name_missing = "Липсващ параметър с име на оръжие.",
		weapon_name_invalid = "`${weaponName}` не е валидно име на оръжие.",
		model_name_missing = "Липсващ параметър с име на модел.",
		model_name_invalid = "`${modelName}` не е валидно име на модел.",
		model_view_enabled = "Разрешен преглед на модела.",
		model_view_disabled = "Моделният изглед е деактивиран.",
		invalid_component = "Невалиден компонент `${componentName}`.",

		animation_currently_playing = "В момента се изпълнява анимация.",
		invalid_or_missing_animation_dict = "Невалиден или липсващ речник на анимации `${animationDict}`.",
		missing_animation_name = "Невалидно или липсващо име на анимация `${animationName}`.",
		invalid_animation_flags = "Невалидни флагове за анимация.",
		animation_played = "Изпълнява се анимация `${animationDict}` `${animationName}` (флагове: ${flags}).",
		no_flags = "Без флагове",

		invalid_coordinates = "Невалидни координати.",
		added_coordinates_draw = "Добавени са координати `x: ${x}, y: ${y}, z: ${z}` към списъка с маркировки с идентификатор `${drawId}`.",
		no_coordinate_draws_to_destroy = "Няма маркирани координати за унищожаване.",
		destroyed_coordinate_draws = "Унищожени са ${drawingCoordinatesAmount} маркирани координати.",

		debug_damage_enabled = "Отстраняване на повреди е активирано.",
		debug_damage_disabled = "Отстраняване на повреди е деактивирано.",

		enabled_network_debug = "Отстраняване на проблеми с мрежата на обектите е активирано.",
		disabled_network_debug = "Отстраняване на проблеми с мрежата на обектите е деактивирано.",
		failed_network_debug = "Неуспех при включване на отстраняване на проблеми в мрежата на обекти.",

		network_owner_subscription_no_permissions = "Опит за абониране към собствениците на обекти в мрежата без необходимите права.",

		missing_ipl = "Липсващ параметър за ipl.",
		enabled_ipl = "Успешно активиран ipl `${ipl}`.",
		disabled_ipl = "Успешно деактивиран ipl `${ipl}`.",

		enabled_ipl_globally = "Успешно активиран ipl `${ipl}` в цялата система.",
		failed_enabled_ipl_globally = "Неуспех при активиране на ipl в цялата система.",
		disabled_ipl_globally = "Успешно деактивиран ipl `${ipl}` в цялата система.",
		failed_disabled_ipl_globally = "Неуспешно изключване на ipl глобално.",

		enabled_ipls_list = "Активирани IPLs: ${list}.",
		no_ipls_enabled = "Няма активирани IPLs.",

		missing_code = "Липсващ параметър 'code'.",
		run_code_success = "Успешно изпълнение на кодов фрагмент.",
		run_code_error = "Грешка при изпълнение на кодов фрагмент.",

		searching_world = "Търсене в света:\n${modelNames}",
		copied_clipboard = "Координатите бяха копирани в клипборда.",

		saved_vehicle_model_lists_to_file = "Списъците с модели на превозни средства бяха записани във файл върху сървъра.",

		network_debug_logs_title = "Превключено отстраняване на проблеми в мрежата",
		network_debug_logs_details_on = "${consoleName} превключи отстраняването на проблеми в мрежата.",
		network_debug_logs_details_off = "${consoleName} превключи отстраняването на проблеми в мрежата.",

		debug_info_failed = "Неуспешно събиране на информация за отстраняване на проблеми.",
		close = "Затвори",
		import = "Внос",
		export = "Износ",
		copied = "Копирано!",
		invalid_data = "Невалидни данни.",
		invalid_json = "Невалиден JSON."
	},

	debug_menu = {
		menu_title = "Меню за отстраняване на проблеми",

		timecycles = "Цикли на времето",
		weather = "Времето",
		reset = "Нулиране",
		refresh_interior = "Опресни интериора"
	},

	dna_evidence = {
		taking_sample = "Взимане на ДНК проба",
		already_taking_sample = "Вече взимате ДНК проба от играч.",
		sample_no_player = "Няма играч близо до вас, от когото може да вземете ДНК проба.",
		sample_no_bags = "Нямате никакви торби за доказателства.",
		dna_evidence_bag = "Доказателство - ДНК",

		evidence_failed = "Неуспешно взимане на ДНК доказателство.",

		evidence_text = "Тип на Доказателството: ДНК Доказателство\nДНК събрана от ${fullName} #${characterId}\n\nДопълнителна информация:\n • Времеви отпечатък на събирането: ${time}"
	},

	docks = {
		press_to_access_spawner = "Натиснете ~INPUT_CONTEXT~, за да достъпите спауъра за превозни средства.",
		boat_dock = "Място за лодки",
		vehicle_list = "Списък с превозни средства",
		park_boat = "Запаркирай лодката",
		close_menu = "Затвори менюто",
		main_menu = "Главно меню",
		deposit = "Депозит: $${amount}",
		no_deposit = "Няма депозит",
		area_not_clear = "Зоната не е свободна.",
		no_vehicle_park = "Няма превозно средство за паркиране.",
		failed_park = "Неуспешно паркиране на лодката.",
		deposit_not_enough_money = "Нямате достатъчно пари, за да платите депозита.",
		failed_spawn = "Неуспешно задействане на лодката.",
		vehicle_anchor = "Лодката ви беше задействана и вързана, може да използвате /anchor, за да дигнете котва.",
		too_shallow = "Има твърде малко дълбочина за тази лодка тук."
	},

	doors = {
		locked = "Заключено",
		unlocked = "Отключено",
		locked_press_to_unlock = "[${InteractionKey}] Заключено",
		unlocked_press_to_lock = "[${InteractionKey}] Отключено",
		locking = "Заключване",
		unlocking = "Отключване",
		jewelry_store_closed = "Магазинът за бижута е в момента затворен. Моля, върнете се по-късно.",
		bank_closed = "Банката е в момента затворена. Моля, върнете се по-късно.",
		store_closed = "Магазинът е в момента затворен. Моля, върнете се по-късно.",
		failed_to_sync_doors = "Неуспешна синхронизация на вратите. Най-вероятно нещо се е повредило. Моля, опитайте отново.",
		saved_doors_to_file = "Записани са ${amount} врати във файл на сървъра.",
		no_nearby_doors = "Няма близки врати, които да се запишат.",
		lockpicking_door = "Взлом на врата",

		debug_doors_on = "Отстраняването на грешки на вратите е включено.",
		debug_doors_off = "Отстраняването на грешки на вратите е изключено.",
		doors_no_job = "Няма",

		unlocks = "Отключвания: <i>${cluster}</i>."
	},

	elevators = {
		use_elevator = "[${InteractionKey}] Използвайте асансьора",
		elevator_title = "Асансьор",
		close_menu = "Затвори меню",
		already_on_floor = "Вече сте на този етаж.",

		no_elevator_nearby = "Няма близък асансьор.",
		elevator_enabled = "Успешно активиран асансьор №${elevatorId}.",
		elevator_disabled = "Успешно деактивиран асансьор №${elevatorId}.",
		elevator_toggle_failed = "Неуспешно превключване на асансьор.",
		elevator_enabled_all = "Успешно активирани всички асансьори.",

		out_of_service = "Извън сервиз",
		out_of_service_help = "Този асансьор е извън сервиз в момента.",

		current = "Текущ",
		up = "Към горе",
		down = "Към долу",

		floor_tunnel_entrance = "Вход в тунела",
		floor_underground_tunnel = "Подземен тунел",

		floor_lounge = "Салон",

		floor_garage = "Гараж",
		floor_lobby = "Лоби",
		floor_roof = "Покрив",
		floor_helipad = "Хеликоптерно кацане",

		floor_shop = "Магазин",

		floor_casino = "Казино",
		floor_security = "Охрана",
		floor_loading_bay = "Пристанище за товарене",
		floor_vault = "Сейфова стая",

		floor_second_floor = "Втори етаж",
		floor_icu = "Интензивно отделение",
		floor_ground = "Партер",
		floor_surgery = "Операционна",

		floor_entrance = "Вход",
		floor_server_room = "Сървърна стая",

		floor_50 = "50-и етаж",
		floor_49 = "49-и етаж",
		floor_47 = "47-и етаж",
		floor_basement = "Сутерен",

		floor_exclusive_dealership = "Магазин за Ексклузивни Автомобили",
		floor_mayors_office = "Офис на Кмета",
		floor_mechanic_shop = "Автосервиз",

		floor_fourth_floor = "4-ти етаж",
		floor_third_floor = "3-ти етаж",

		floor_hangout = "Място за Прекарване",
		floor_penthouse = "Пентхаус",
		floor_theatre_office = "Офис на Театъра",
		floor_psychiatrists_office = "Офис на Психиатъра",
		floor_nightclub_garage = "Гараж на Нощния клуб",
		floor_submarine = "Подводница",

		floor_lower_penthouse = "Долен Пентхаус",
		floor_middle_penthouse = "Среден Пентхаус",
		floor_upper_penthouse = "Горен пентхаус",

		floor_showroom = "Шоурум",
		floor_office = "Офис",
		floor_doj_office = "Офис на DOJ",

		floor_penthouse_top = "Пентхаус (Горен етаж)",
		floor_penthouse_entrance = "Пентхаус (Вход)",

		floor_containment = "Стая за държавна сигурност",

		doj_office = "Офис на DOJ",

		used_elevator_logs_title = "Използван асансьор",
		used_elevator_logs_details = "${consoleName} използва асансьора ${elevatorId} за да отиде на етаж `${floor}`."
	},

	emails = {
		title = "OP Имейл",
		email_domain = "san-andreas.gov",

		app_title = "Имейл",

		error_loading_emails = "Възникна проблем при зареждането на вашите електронни писма.",

		new_email_notification = "~o~Ново E-Mail",

		email_label = "E-Mail",
		password_label = "Парола",
		set_password = "Задай парола",
		inbox = "Входящи",
		outbox = "Изходящи",
		new_email = "Нов E-Mail",

		loading = "Зареждане...",
		failed_load_email = "Неуспешно зареждане на съдържанието на електронното писмо.",

		from_label = "От",
		to_label = "До",

		send_email = "Изпрати",

		no_emails = "Няма електронни писма.",
		to_email = "до ${email}",

		error_no_subject = "Липсва тема на електронното писмо.",
		error_invalid_target = "Невалидно получателно електронно писмо.",
		error_subject_too_long = "Твърде дълга тема на имейла.",
		error_body_too_long = "Тялото на имейла е твърде дълго.",
		error_body_missing = "Липсва съдържание на имейла.",
		error_failed_send = "Изпращането на имейл неуспешно.",
		error_password_empty = "Паролата не може да бъде празна.",
		error_password_update_failed = "Неуспешно обновяване на парола."
	},

	emote_items = {
		give_item = "[${InteractionKey}] Дай ${itemName}",
		received_item = "${firstName} ти даде ${itemName}.",
		give_item_success = "Успешно даде ${itemName} на играча.",
		give_item_failed = "Неуспешно даване на ${itemName} на играча."
	},

	exclusive_dealership = {
		cost_money = "${price} лв.",
		cost_points = "${points} OP Points",

		marker_label = "${label} | ${cost}",
		marker_label_purchase = "[${SeatEjectKey}] Закупуване на ${label} за ${cost}",

		confirm_purchase = "Потвърди покупката",
		confirm_purchase_label = "${label} | ${cost}",

		deny_purchase = "Не, благодаря",
		accept_purchase = "Да, желая да го купя",
		accept_purchase_info = "Сигурни ли сте, че искате да закупите това превозно средство? Това действие не може да бъде отменено.",

		purchased_vehicle = "Закупен ${label} за ${cost}.",
		insufficient_funds = "Недостатъчни средства.",
		area_not_clear = "Зоната за спаун не е свободна.",
		invalid_package = "Грешно поддържащо обещание.",
		something_went_wrong = "Нещо се обърка.",

		failed_vehicle_spawn = "Неуспешен спаун на превозно средство. Превозното средство ще остане в гаража ви.",

		next_rotation_in = "Следващата ротация след: ${time}",

		exclusive_dealership_blip = "Ексклузивен Deluxe Motorsport",

		buyback_closed = "Обмяната е затворена. Можете да продадете превозното си средство на друг играч с правилния ранг вместо това.",

		log_title = "Изкупуване на EDM",
		log_description = "Купени на `${label}` за ${cost}."
	},

	failures = {
		engine_failure_chance = "Задайте шанса за неизправност на двигателя на `${chance}`.",
		failure_chance_invalid = "Шансът за неизправност на двигателя трябва да бъде между 1 и 1500.",
		engine_failure_reset = "Нулиране на шанса за неизправност на двигателя до стойността по подразбиране."
	},

	fake_ids = {
		press_to_purchase = "Натисни ~INPUT_CONTEXT~ за закупуване на фалшифицирано ID.",

		store_title = "Магазин за фалшифицирани ID-та",

		female_id = "Фалшифицирано женско ID",
		male_id = "Фалшифицирано мъжко ID",
		close_menu = "Затвори Меню",

		logs_purchased_title = "Закупени фалшифицирани ID-та",
		logs_purchased_details = "${consoleName} закупи ${type} (${firstName} ${lastName} #${characterId}).",

		something_went_wrong = "Нещо се обърка.",
		failed_not_on_duty = "Трябва да сте на дежурство, за да закупите Фалшиво ID.",
		failed_not_enough_money = "Нямате достатъчно пари, за да закупите Фалшиво ID.",
		purchase_success = "Успешно закупен Фалшиво ID за 3 000 долара."
	},

	farming = {
		milk_cow_interact = "[${InteractionKey}] Музене на крава",
		milking_cow = "Музене на крава",
		milking_cow_moved = "Кравата изглежда се е отдалечила.",
		milking_cow_failed = "Неуспех при подмяна на крава."
	},

	fingerprint = {
		taking_fingerprint = "Вземане на отпечатък",
		already_fingerprinting = "Вече вземате отпечатък от играч.",
		sample_no_player = "Няма играч в близост, от когото да вземете отпечатък.",
		sample_no_bags = "Нямате никакви торбички с доказателства.",
		fingerprint_evidence = "Отпечатък",

		evidence_failed = "Грешка при вземане на отпечатък.",

		evidence_text = "Тип на доказателство: Отпечатък\nОтпечатък на ${fullName} #${characterId}\n\nДопълнителна информация:\n • Времева маркировка на събиране: ${time}"
	},

	fireworks = {
		fire_firework = "[${InteractionKey}] Изстрелване на фойерверк"
	},

	flag_swap = {
		toggled_flag_swap_on = "Превключена смяна на знамета включена.",
		toggled_flag_swap_off = "Превключена смяна на знамета изключена.",

		showing_flags = "Показване на знамената.",
		not_showing_flags = "Не се показват повече знамена.",

		flag = "Знаме ${flagId}",

		flag_swap_leaderboard = "Класация за смяна на знамената",
		ongoing = "В процес",
		not_ongoing = "Не е в процес",
		position_and_name = "${position}. ${name}",
		flag_count_one = "1 знаме",
		flag_count = "${flags} знамета",
		players_with_most_flags_will_show_here = "Играчите с най-много знамена ще се показват тук.",
		flags_on_ground = "Знамена по земята: ${flagsOnGround}"
	},

	forcefields = {
		invalid_radius = "Невалиден радиус (трябва да бъде между 1 и 200).",
		failed_create = "Неуспешно създаване на сила на полет.",
		forcefield_marker = "ИД: ${id}",
		invalid_forcefield_id = "Невалиден идентификатор на сила на полет.",
		failed_destroy = "Неуспешно унищожаване на сила на полет."
	},

	fortnite = {
		no_buildings_in_radius = "Няма сгради в радиус от ${radius}.",
		no_buildings = "Няма сгради.",
		wiped_buildings_in_radius = "Почистени ${removedBuildings} сгради в радиус от ${radius}.",
		wiped_buildings = "Бяха изтрити ${removedBuildings} сгради."
	},

	fortune_cookies = {
		opened_cookie_logs_title = "Отворен печеливш фортунат бисквитка",
		opened_cookie_logs_details = "${consoleName} отвори фортунат бисквитка и получи `${fortune}`.",

		failed_open = "Неуспешно отваряне на фортунат бисквитка."
	},

	freecam = {
		enabled_freecam = "Активирана свободна камера.",
		disabled_freecam = "Деактивирана свободна камера.",
		freecam_failed = "Неуспех при активирането на свободната камера. Имате ли активиран 'noclip' или нещо подобно?",

		freecam_no_dead = "Не може да активирате свободната камера, докато сте недействащ.",

		freecam_logs_title = "Включена/изключена свободна камера",
		freecam_on_logs_details = "${consoleName} активира свободната си камера.",
		freecam_off_logs_details = "${consoleName} деактивира свободната си камера.",

		freecam_inactive = "В момента не сте в свободна камера.",
		added_point = "Добавена камерна точка на индекс ${index} (Транзиция: ${transition}мс).",
		disable_freecam = "Деактивирайте свободната камера, за да възпроизведете точките.",
		not_enough_points = "Трябват ви поне 2 точки, за да започнете възпроизвеждането.",
		already_replaying = "Вече възпроизвеждате камерните точки.",
		cleared_points = "Изчистени всички камерни точки.",
		replaced_point = "Заменена камера на точка с индекс ${index} (Преход: ${transition}мс).",
		moved_to_point = "Фрикамерата е преместена на точка ${index} (Преход: ${transition}мс).",
		invalid_point_index = "Невалиден индекс на камерна точка."
	},

	frisk = {
		frisk_no_player = "Няма играч близо до вас, на когото да претърсите.",
		already_frisking = "Вече претърсяте играч.",
		frisk_failed = "Неуспешно претърсване на играч.",
		frisking = "Претършване на играч",

		frisk_category_0 = "Изглежда няма оръжия.",
		frisk_category_1 = "Изглежда, че може да има оръжие.",
		frisk_category_2 = "Изглежда, че притежава оръжие.",
		frisk_category_3 = "Изглежда определено притежава голямо оръжие.",
		frisk_category_4 = "Определено притежава голямо оръжие."
	},

	fruits = {
		pick_fruit = "[${InteractionKey}] Бери ${fruit}",
		picking_fruit = "Бере се ${fruit}",

		shake_tree = "Натисни ~INPUT_CONTEXT~, за да разтърсиш дървото.",
		shaking_tree = "Разтърсва се дървото",

		extract_rubber = "Натисни ~INPUT_CONTEXT~, за да извлечеш гума от дървото.",
		extracting_rubber = "Извличане на гума",

		tree_klonk = "Нещо падна от дървото и удари главата ти."
	},

	gas_masks = {
		gas_grenade = "Газова граната",
		in_gas_circle = "В газов кръг!",
		not_in_gas_circle = "Не си в газов кръг.",
		gas_time_left = "Имаш още ${gasTime} секунди с газова маска.",
		hold_to_take_gas_mask_off = "Задържи ~INPUT_VEH_HEADLIGHT~ за сваляне на газовата маска.",
		hold_to_take_gas_mask_off_holding = "Продължи да задържаш за сваляне на газовата маска."
	},

	golf = {
		pickup_ball = "[${InteractionKey}] Вдигнете",

		failed_pickup = "Неуспешно вдигане на топка.",
		failed_place = "Неуспешно поставяне на топка."
	},

	gps = {
		altitude = "Височина",
		latitude = "Ширина",
		longitude = "Дължина",
		speed = "Скорост",

		distance = "Разстояние",
		heading = "Посока",

		reset_target = "Нулиране на целта за GPS.",
		set_gps_target = "Задайте GPS цел към ${x}, ${y}.",
		gps_blip = "GPS Цел",
		no_gps_item = "Нямате GPS.",

		collar_no_target = "Това оглавничка няма свързан телефон.",
		collar_timeout = "Току-що изпратихте сигнал, изчакайте малко преди да изпратите следващ.",
		collar_sent = "Успешно беше изпратено съобщение до ${firstName} ${lastName} (${phoneNumber}).",

		mph = "мили на час",
		kph = "километри на час",
		ft = "фута",
		m = "метра",
		km = "километра",
		mi = "мили",
		deg = "градуси"
	},

	gravity = {
		gravity_success_on = "Превключихте гравитация на ${consoleName}.",
		gravity_success_off = "Превключихте обратно гравитацията на ${consoleName}.",
		gravity_client_failed = "Неуспешно превключване на гравитацията за ${consoleName}.",
		gravity_failed = "Възникна проблем при опита за превключване на гравитацията.",
		yourself = "себе си"
	},

	gravity_gun = {
		name_override = "Гравитационна пушка",

		failed_item_spawn = "Неуспешно създаване на гравитационна пушка."
	},

	grills = {
		campfire = "Каминка",
		use_campfire = "[${InteractionKey}] Използване на каминката",
		grill = "Грил",
		use_grill = "[${InteractionKey}] Използване на грила"
	},

	gumballs = {
		use_gumball_machine = "[${InteractionKey}] Вмъкни монета",
		using_gumball_machine = "Вмъкване на монета",
		not_enough_money = "Нямате достатъчно пари, за да си купите топка за жуване.",
		something_went_wrong = "Възникна грешка при опит за закупуване на жвака.",

		flavor = "Жвачка (${flavor})"
	},

	gun_running = {
		insert_key = "Вмъкни ключ: ${key}",
		wrong_key = "Използвайте грешния ключ.",
		decrypting = "Декодиране",
		guns_disabled = "Търговията с оръжие в момента е забранена.",
		high_level_cooldown = "Неуспешно свързване със FIB сървъра, опитайте по-късно.",
		failed_start_run = "Неуспешно стартиране на търговска сделка с оръжие.",
		hack_timeout = "Връзката със сървъра е прекъсната, опитайте отново.",

		started_run_logs_title = "Търговска сделка с оръжие",
		started_run_logs_details = "${consoleName} стартира хакерска атака за търговска сделка с оръжие.",
		finished_run_logs_title = "Доставка на оръжия",
		finished_run_logs_details = "${consoleName} пробива кутията с оръжия и получава 1x ${item}."
	},

	gun_trader = {
		press_e_to_talk = "Натиснете ~INPUT_CONTEXT~, за да говорите с Джим.",
		trader_closed = "Магазинът на Джим е затворен в момента.",

		sorry_closed = "Съжалявам, приятелю, магазинът е затворен.",
		sorry_closed_hug = "Благодаря за обичта, приятелю :)",
		sorry_closed_finger = "Какво като това, приятелю? Много грубо!",
		sorry_closed_kiss = "Уоу, приятелю, аз не съм за това...",
		sorry_closed_dab = "Dab на омразниците, обаче наистина!",
		sorry_closed_fight = "Съжалявам, успокой се, братко, не съм направил нищо.",

		trader_locked = "Джим има няколко неща, които му трябват преди да е готов да отвори магазина си.",
		unlock_trader = "Донесете предмет на Джим.",

		trader_duty = "Здравейте, офицере, съжалявам, но просто затворих магазина. Върнете се по-късно!",

		purchase = "Купуване",
		out_of_stock = "Няма в наличност",
		special_offer = "Специална оферта!",

		failed_trader_closed = "Неуспешно закупуване на оръжие, магазинът на Джим е затворен.",
		failed_no_stock = "Неуспешно закупуване на оръжие, няма наличен сток.",
		failed_no_money = "Неуспешно закупуване на оръжие, нямате достатъчно пари.",
		failed_something_went_wrong = "Неуспешно закупуване на оръжие, нещо се обърка.",
		failed_trader_not_locked = "Неуспешно отключване, магазинът на Джим вече е отключен.",
		failed_no_item = "Неуспешно отключване, Джим не се нуждае от този предмет.",
		failed_no_enough_items = "Неуспешно отключване, нямате достатъчно от този предмет.",

		bought_gun_logs_title = "Оръжеен магазин на Джим",
		bought_gun_logs_details = "${consoleName} закупи 1x ${itemName} за $${price} от Джим.",

		trader_active = "Търговец (отворен)",
		trader_inactive = "Търговец (затворен)",

		slogan_1 = "Помни, първото правило на оръжейната борба е...имай оръжие!",
		slogan_2 = "Оръжията имат само двама врагове: ръжда и политици",
		slogan_3 = "Когато се съмняваш...извади го!",
		slogan_4 = "Едно оръжие в ръката е по-добро от всеизвестния полицаи на телефона.",

		copyright = "Авторски права © 2009-2016 Jim's Gun Shop NC. Всички права запазени.",

		remaining_messages = "Оставащи съобщения: ${messages}",
		no_messages_left = "Пейджърът няма оставащи съобщения.",
		just_used_pager = "Току-що ползвахте пейджъра, изчакайте малко преди да го ползвате отново.",
		page_trader_closed = "Джим не отговаря, трябва да е затворен.",
		page_success = "Джим изпрати сигнал за грубо местоположение."
	},

	hacking = {
		local_disk = "Локален диск (C:)",
		network = "Мрежа",
		external_device = "Външно устройство (J:)",
		hack_connect = "HackConnect.exe",
		brute_force = "BruteForce.exe",

		my_computer = "Моят компютър",
		power_off = "Изключване на захранването",

		password_cracked = "Разбита парола!",
		brute_force_failed = "Брутална сила неуспешна!",

		writing_data = "Запис на данните в буфера...",
		executing_code = "Изпълнение на зловреден код...",
		memory_leak_detected = "Открита е пропускане на памет, изключване на играта..."
	},

	halloween = {
		is_in_school = "Е в училище: ${isInSchool}",
		yes = "Да",
		no = "Не",
		press_to_hide_in_locker = "Натисни ~INPUT_CONTEXT~, за да се скриеш в шкафчето.",
		locker_is_occupied = "Шкафчето е заето.",
		press_to_exit_locker = "Натисни ~INPUT_CONTEXT~, за да излезеш от шкафчето.",
		failed_to_start_escape_room = "Неуспешно стартиране на стаята за измъкване.",
		started_escape_room = "Стартирана е стая за измъкване с ${playerAmount} играчи.",
		escape_instructions = "След като я завършиш, вратите ще се отключат и ще можеш да напуснеш сградата.",
		answer_the_phone = "Отговорете на телефона.",

		-- NOTE: temp
		none = "Няма"
	},

	health = {
		successfully_revived_player = "Успешно възкресихте ${consoleName}.",
		successfully_revived_player_removed_injuries = "Успешно възкресихте ${consoleName} и премахнахте техните наранявания.",
		successfully_revived_everyone = "Успешно възкресихте всички.",
		successfully_revived_everyone_removed_injuries = "Успешно възкресихте и премахнахте нараняванията на всички.",
		failed_to_revive = "Неуспешно изпълнение на командата `/revive`.",
		revived_self_removed_injuries_title = "Възкресен и премахнати наранявания",
		revived_self_removed_injuries_details = "${consoleName} се възстанови и премахна контузиите си.",
		revived_self_title = "Самовъзстановяване",
		revived_self_details = "${consoleName} се възстанови.",
		revived_everyone_removed_injuries_title = "Възстановяване на всички и премахване на контузиите",
		revived_everyone_removed_injuries_details = "${consoleName} възстанови всички и премахна контузиите им.",
		revived_everyone_title = "Възстановяване на всички",
		revived_everyone_details = "${consoleName} възстанови всички.",
		revived_player_removed_injuries_title = "Възстановяване на играч и премахване на контузиите",
		revived_player_removed_injuries_details = "${consoleName} възкреси ${targetConsoleName} и премахна техните наранявания.",
		revived_player_title = "Възкресен Играч",
		revived_player_details = "${consoleName} възкреси ${targetConsoleName}.",
		death_alcohol_poisoning = "Вие отпаднахте от алкохолно отровяване.",
		character_has_hardcore_died = "${fullName} умря. Можете да изберете друга герой.",

		death_timer_override_already_set_to = "Презаписът на времето за смърт вече е зададен на `${time}`.",
		set_death_timer_override = "Презаписът на времето за смърт беше зададен на `${time}`.",
		time_parameter_is_invalid = "Невалиден параметър 'time'.",
		death_timer_override_removed = "Пренулирането на таймера за смърт е премахнато.",
		no_death_timer_override_set = "Не е зададено пренулиране на таймера за смърт.",

		no_nearby_ped = "Няма близък NPC.",
		ped_not_dead = "NPC-то не е мъртво.",
		performing_cpr = "Извършване на изкуствено дишане и масаж на сърцето",

		invalid_distance = "Невалиден обхват за оживяване (трябва да бъде между 1 и 50).",
		no_players_in_range = "Няма играчи в близост в радиус от ${distance}м.",
		successfully_revived_range = "Успешно оживени ${amount} играчи в радиус от ${distance}м.",
		failed_revive_range = "Неуспешно възкресяване на играчи.",

		cpr_ped_logs_title = "Извършено CPR на пешеходец",
		cpr_ped_logs_details = "${consoleName} извърши CPR на пешеходец и получи $${money}.",
		cpr_player_logs_title = "Извършено CPR на играч",
		cpr_player_logs_details = "${consoleName} извърши CPR на ${targetConsoleName}."
	},

	hitmarkers = {
		hitmarkers_enabled = "Показване на попаденията е активирано.",
		hitmarkers_disabled = "Показване на попаденията е деактивирано."
	},

	hud = {
		knots = "възли",
		ft = "фута",
		m = "метра",
		belt = "ПОЯС",
		oil = "МАСЛО",
		manual = "РЪЧНИК",
		limiter = "ОГРАНИЧИТЕЛ",
		gear_uc = "СКОРОСТ",
		fuel = "гориво",
		nitro = "Нитро",
		battery = "Батерия",
		fps = "FPS",
		ping = "PING",
		autopilot = "Автопилот",
		ground_asl = "Надморска височина/кота (${unit})",
		heading = "Посока",
		gear = "Скоростна кутия",
		rpm = "обороти в минута",
		degrees = "°C",
		degrees_f = "°F",
		npc_kills = "${kills} местни хора убити ~r~/~w~ ${ranOver} наредени",
		steps_walked_deaths = "Дължина на стъпките: ${stepsWalked} ~t~/~w~ Загиналита: ${deaths}",
		altitude_temperature = "Височина: ${altitude} ${unit} ~t~/~w~ Температура: ${temperature}${degrees}",
		scuba_timer = "Оставащ кислород: ${timer}",

		alignment_warning_title = "Позиция на HUD",
		alignment_warning = "Твоето HUD изглежда частично извън екрана (~${amount}px). Можеш да го настроиш, намалявайки \"*Safezone Size*\" в настройките на \"*Display*\".",

		muted = "Заглушен",
		tx = "TX",
		rx = "RX",

		fps_unit = "кадри в секунда",
		ping_unit = "мс",

		smart_warnings = "Внимание: ${warnings}!",
		dehydrated = "ревматизъм",
		starving = "гладен",
		injured = "раний",
		seriously_injured = "сериозно ранен",
		how_are_you_alive = "брат, как кът кокошката все още си жив?",
		incapacitated = "дезориентиран",
		stressed = "стресиран",

		and_seperator = "и",

		toggle_phone_gps_off = "Включване / изключване на GPS на телефона.",
		toggle_phone_gps_on = "Включване / изключване на GPS на телефона.",

		advanced_hud_on = "Включване / изключване на разширения худ.",
		advanced_hud_off = "Включване / изключване на разширения худ.",

		hud_gauges_on = "Hud графиките са включени.",
		hud_gauges_off = "Hud графиките са изключени."
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] Задръжте, за да обработите кожата",
		skinning_animal = "Обработка на мъртво животно",
		animal_is_being_skinned = "Животното се обработва.",

		hold_to_remove = "[${InteractionKey}] Задръжте, за да премахнете трупа",
		removing_carcass = "Премахване на повреденият труп",
		carcass_damaged = "Трупът е твърде повреден, за да се очисти.",

		meat_too_damaged = "Месото на животното е твърде повредено, за да бъде събрано.",

		skinned_logs_title = "Обработено Животно",
		skinned_logs_details = "${consoleName} обработи животно (${modelName}) и придоби ${skinnedItems}.",
		received_nothing = "нищо"
	},

	identification = {
		los_santos = "Лос Сантос",
		citizen_card = "Гражданска карта",
		first_name = "Име",
		last_name = "Фамилия",
		gender = "Пол",
		gender_male = "Мъж",
		gender_female = "Жена",
		date_of_birth = "Дата на раждане",
		citizen_id = "Гражданско Лице",

		citizenship = "Гражданство",
		citizenship_value = "САЩ",
		surname = "Презиме",
		issued_on = "Издаден на",
		expires_on = "Изтича на",

		month_1 = "Януари",
		month_2 = "Февруари",
		month_3 = "Март",
		month_4 = "Април",
		month_5 = "Май",
		month_6 = "Юни",
		month_7 = "Юли",
		month_8 = "Август",
		month_9 = "Септември",
		month_10 = "Октомври",
		month_11 = "Ноември",
		month_12 = "Декември",

		citizen_card_details = "${firstName} ${lastName} | Дата на раждане: ${dateOfBirth} | Пол: ${gender} | Граждански идентификационен номер: ${characterId}",
		just_showed_citizen_card = "Току-що показахте гражданска карта. Моля, изчакайте малко.",

		boat_license = "Лиценз за лодка",
		boat_license_details = "Лиценз за лодка | ${firstName} ${lastName} | Граждански идентификационен номер: ${characterId}",
		hunting_license = "Ловен лиценз",
		hunting_license_details = "Ловен лиценз | ${firstName} ${lastName} | Граждански идентификационен номер: ${characterId}",
		fishing_license = "Риболовен лиценз",
		fishing_license_details = "Лиценз за риболов | ${firstName} ${lastName} | Граждански идентификационен номер: ${characterId}",
		pilot_license = "Лиценз за пилот",
		pilot_license_details = "Лиценз за пилот | ${firstName} ${lastName} | Граждански идентификационен номер: ${characterId}",
		weapon_license = "Лиценз за оръжие",
		weapon_license_details = "Лиценз за оръжие | ${firstName} ${lastName} | Граждански идентификационен номер: ${characterId}",
		mining_license = "Лиценз за миньорство",
		mining_license_details = "Лиценз за миньорство | ${firstName} ${lastName} | Граждански идентификационен номер: ${characterId}",
		just_showed_license = "Току-що показахте лиценз. Моля, изчакайте малко.",

		just_showed_badge = "Току-що показахте значка. Моля, изчакайте малко.",
		sasp_badge = "Значка на САСП",
		sasp_badge_details = "САСП | ${firstName} ${lastName} | Длъжност: ${positionName}",
		bcso_badge = "Значка на BCSO",
		bcso_badge_details = "BCSO | ${firstName} ${lastName} | Длъжност: ${positionName}",
		sahp_badge = "Значка на SAHP",
		sahp_badge_details = "SAHP | ${firstName} ${lastName} | Длъжност: ${positionName}",
		iaa_badge = "Значка на IAA",
		iaa_badge_details = "IAA | ${firstName} ${lastName} | Длъжност: ${positionName}",
		fib_badge = "Знак на ФИБ",
		fib_badge_details = "ФИБ | ${firstName} ${lastName} | Длъжност: ${positionName}",
		swat_badge = "Знак на СУР",
		swat_badge_details = "СУР | ${firstName} ${lastName} | Длъжност: ${positionName}",
		management_badge = "Знак на Управление",
		management_badge_details = "Управление | ${firstName} ${lastName} | Длъжност: ${positionName}",
		ems_badge = "Идентификационна карта на СМП",
		ems_badge_details = "СМП | ${firstName} ${lastName} | Длъжност: ${positionName}",
		doctor_badge = "Идентификационна карта на Лекар",
		doctor_badge_details = "Лекар | ${firstName} ${lastName} | Длъжност: ${positionName}",
		bcfd_badge = "Надпис BCFD",
		bcfd_badge_details = "BCFD | ${firstName} ${lastName} | Длъжност: ${positionName}",
		state_security_badge = "Идентификационна карта на Държавната сигурност",
		state_security_badge_details = "Департамент Държавна сигурност | ${firstName} ${lastName}",
		doj_badge = "Идентификационна карта на DOJ",
		doj_badge_details = "DOJ | ${firstName} ${lastName} | Длъжност: ${positionName}",
		doc_badge = "Идентификационна карта на DOC",
		doc_badge_details = "DOC | ${firstName} ${lastName} | Длъжност: ${positionName}",

		badge_type_sasp = "Полиция на щата Сан Андреас",
		badge_type_bcso = "Шерифска служба на окръг Блейн",
		badge_type_sahp = "Хайуей Патрул на Сан Андреас",
		badge_type_iaa = "Агенция за вътрешни работи",
		badge_type_fib = "Федерално Бюро за Разследвания",
		badge_type_swat = "Специални оръжия и тактика",
		badge_type_management = "Управление на SASP",
		badge_type_ems = "Служби за спешна помощ",
		badge_type_doctor = "Медицинско лечилище",
		badge_type_bcfd = "Пожарна служба на Блейн Каунти",
		badge_type_state_security = "Държавно служба за сигурност",
		badge_type_doj = "Министерство на правосъдието",
		badge_type_doc = "Министерство на корекциите",

		badge_type_short_sasp = "САСП",
		badge_type_short_bcso = "БКСО",
		badge_type_short_sahp = "СТРГ",
		badge_type_short_iaa = "ААА",
		badge_type_short_fib = "ФИБ",
		badge_type_short_swat = "СВАТ",
		badge_type_short_management = "Управление",
		badge_type_short_ems = "СМП",
		badge_type_short_doctor = "Доктор",
		badge_type_short_bcfd = "БКПБ",
		badge_type_short_state_security = "ДЛУ",
		badge_type_short_doc = "ДОКТ"
	},

	import_export = {
		press_to_access = "Натиснете ~INPUT_CONTEXT~ за достъп до менюто за внос/износ.",

		storage_units = "складови единици",
		minutes = "минути",

		total = "Общо",
		header = "Кайо Перико - Внос / Износ",
		header_small = "Бърз и лесен превоз от и до Кайо Перико.",

		loading = "Зареждане...",

		order_arrived = "Пристигане",
		claim = "Вземане",

		claim_cayo = "Вземи от Кайо",
		claim_lsia = "Вземи от LSIA",

		big_goods = "Големи стоки",
		go_postal = "Изпрати по пощата",
		caipira = "Caipira Airlines",

		no_items = "Няма стоки за изпращане.",

		confirm_dialog = "Сигурен ли сте, че искате да изпратите ${total} складови единици за $${price}? Тази доставка не може да бъде отменена.",
		confirm = "Да",

		no_active_order = "Нямате активен пратковотранспорт.",
		order_not_completed = "Пратковото ви не е пристигнало още.",

		order_claimed = "Пратковото ви е прието.",

		not_enough_items = "Нямате достатъчно артикули, за да осъществите пратковото.",
		not_enough_money = "Нямате достатъчно пари, за да създадете пратково.",
		already_has_order = "Вече имате активен пратковотранспорт.",
		something_went_wrong = "Нещо се обърка.",

		order_success = "Вашето пратково е в път! Ще пристигне след ${minutes} минути.",

		created_shipment_title = "Създадено пратково",
		created_shipment_details = "${consoleName} е създал доставка за ${weight}su на цена от $${price} с ${company}.",

		claimed_shipment_title = "Пратка заявена",
		claimed_shipment_details = "${consoleName} е взел доставка за ${weight}su с ${company}.",

		blip_label = "Импорт / Експорт"
	},

	injuries = {
		inspect_no_player = "Няма играч рядко, когото може да проверите.",
		already_inspecting = "Вече проверявате играч.",
		inspect_failed = "Неуспешно проверяване на играч.",
		inspecting = "Проверяване на играч",
		no_injuries = "Няма наранявания или кървене",
		patient_bleeding = "Пациент кърви.",
		injury = "${label} нараняване"
	},

	instances = {
		instance_created_added = "Създаден е инстанция с ID `${instanceId}` (Добавени играчи: ${serverIds}).",
		instance_created = "Създадена е инстанция с ID `${instanceId}`.",
		instance_creation_failed = "Неуспешно създаване на инстанция.",
		instance_destroyed = "Унищожена е инстанция с ID `${instanceId}`.",
		instance_destruction_failed = "Неуспешно унищожаване на инстанция.",
		instance_id_parameter_invalid = "Невалиден параметър за идентификатор на инстанция.",
		added_player_to_instance = "Добавен/а е ${consoleName} към инстанцията с идентификатор `${instanceId}`.",
		failed_to_add_player_to_instance = "Неуспешно добавяне на играч в инстанцията.",
		server_id_parameter_invalid = "Невалиден параметър за ID на сървъра.",
		removed_player_from_instance = "Премахнат ${consoleName} от инстанцията с ID `${instanceId}`.",
		failed_to_remove_player_from_instance = "Неуспешно премахване на играч от инстанцията.",
		instance_players = "Играчи в инстанцията с ID `${instanceId}`: `${players}`.",
		failed_to_get_instance_players = "Неуспешно получаване на играчите в инстанцията.",
		no_players = "Няма играчи.",

		instance_hud = "Инстанция ID: ${instanceId}"
	},

	interiors = {
		in_interior = "В интериор: ${interiorId} (${portals} портали).",
		in_room_id = "В стая: ${roomId} (${roomName}).",
		total_interiors = "Общо интериори: ${totalInteriors} (общо ${totalInteriorPortals} портали).",
		total_unloaded_interiors = "Общо незаредени интериори: ${totalUnloadedInteriors} (общо ${totalUnloadedInteriorPortals} портали).",
		portal_text = "id=${portalId} f=${flags}"
	},

	inventory = {
		access_trunk = "Движете се тук, за да достъпите багажника",

		used = "Използван",
		added = "Добавен",
		received = "Получено",

		storage_units = "su",
		storage_unit_description = "su = единица за съхранение",

		store = "Магазин",
		gas_station = "Бензиностанция",
		gas_station_backdoor = "Задни врати на бензиностанцията",
		cleaning_station = "Станция за почистване",
		grocery_store = "Хранителен магазин",
		dons_country_store = "Магазин Донс Кънтри",
		penthouse_fridge = "Хладилник в пентхауса",
		mug_shots = "Снимки на арестувани",
		prison_store = "Магазин в затвора",
		fruit_vendor = "Плодова палатка",
		supermarket = "Супермаркет",
		island_store = "Магазин на острова",
		travel_agency = "Пътна агенция",
		island_bar = "Бар на острова",
		burger_bar = "Бургер бар",
		tool_store = "Магазин за инструменти",
		gun_store = "Аму-Нация",
		discount_store = "Магазин с намаление",
		gun_store_with_shooting_range = "Аму-Нация със стрелбище",
		green_wonderland = "Зелен рай",
		copy_shop = "Магазин за копия",
		submarine_locker = "Подводен шкаф",
		astrology_stand = "Астрологически щанд",
		irish_pub = "Ирски пъб",
		bar = "Бар",
		midnight = "Магазин Midnight",
		cinema = "Кино",
		strip_club = "Стриптйз клуб",
		police_store = "Магазин на полицията",
		fib_store = "Магазин на ФИБ",
		police_badge_store = "Полицейско бюро за значки",
		doc_badge_store = "Бюро за значки на DOC",
		flower_store = "Цветарски магазин на Стейси",
		gift_store = "Магазин за подаръци Дел Перо",
		ems_store = "Магазин на СЛУЖБАТА за спешни медицински случаи",
		drug_store = "Кабинет за лекарства",
		ems_badge_store = "Бюро за значки на СЛУЖБАТА за спешни медицински случаи",
		doj_badge_store = "Бюро за значки на Департамента за правораздаване",
		state_security_store = "Магазин за държавната сигурност",
		pharmacy = "Аптека",
		chop_shop = "Магазин за изкореняване на автомобили",
		courthouse = "Зала за правосъдие",
		burger_shot = "Бъргър Шот",
		burger_shot_fridge = "Хладилник на Бъргър Шот",
		erp_shop = "ERP Магазин",
		pet_shop = "Зоомагазин",
		bean_machine = "Bean Machine",
		hunting_store = "Магазин за лов",
		fishing_store = "Магазин за риболов",
		los_santos_golf_club = "Клуб за голф Лос Сантос",
		arcade_bar = "Аркада Бар",
		japanese_restaurant = "Японски Ресторант",
		japanese_restaurant_kitchen = "Японска Ресторантска Кухня",
		["945_studios"] = "945 Studios",
		grain_mill = "Мелница за Зърно",
		pd_prefix = "ПД",
		ems_prefix = "СМП",
		government_prefix = "Управление",
		wonderland_prefix = "Чудясия",
		br_prefix = "БР",
		inventory_overweight = "Вашето инвентарно пространство е претоварено!",
		vehicle_locked = "Това превозно средство е заключено.",
		press_to_access_store = "Натиснете ~INPUT_REPLAY_SHOWHOTKEY~, за да отворите магазина.",
		press_to_access_locker = "Натиснете ~INPUT_REPLAY_SHOWHOTKEY~, за да отворите личният си сейф.",
		press_to_access_shared_storage = "Натиснете ~INPUT_REPLAY_SHOWHOTKEY~, за да получите достъп до споделеното хранилище.",

		failed_give = "Неуспешно предаване на елемент(и) към играча.",
		character_too_far = "Играчът е твърде далече.",
		target_inventory_full = "Инвентарът на играча е пълен.",
		received_item = "${displayName} ти даде ${amount}бр. ${item}.",

		inspect_weapon = "Серийният номер на това ${itemName} изглежда е `${itemId}`.",
		inspect_weapon_broken = "Серийният номер на това ${itemName} изглежда е `${itemId}`, също така изглежда напълно повреден.",
		inspect_bank_property = "Тази ${item} е отбелязана като собственост на ${bank} Банка.",
		inspect_no_property = "Тази ${item} не изглежда, че има никакви отбелязвания за собственост върху нея.",

		searching_dumpster = "Търсене в контейнера",

		nameable_title = "Име на предмет, което може да се именува:",

		locker_restricted = "Не можеш да преместиш този предмет в това хранилище.",

		press_to_access_shredder = "[${InteractionKey}] Достъп до унищожителя.",

		invalid_item_id = "Невалиден идентификатор на предмет.",
		item_not_found = "Не може да бъде намерен предмет с идентификатор `${itemId}`.",
		item_lookup = "${label} (${itemId}) в момента е в ${inventoryName}:${inventorySlot}.",

		invalid_evidence_id = "Невалиден идентификатор на доказателство.",
		not_near_evidence_locker = "Не се намирате близо до камерата за доказателства.",
		clear_evidence_success = "Успешно изчистени данните за доказателството с идентификатор `${evidenceId}`.",
		clear_evidence_failed = "Неуспешно изтриване на доказателства.",

		clear_evidence_logs_title = "Изтрити доказателства",
		clear_evidence_logs_details = "${consoleName} изтри доказателства с ID `${evidenceId}`. Изтрити са ${deleted} елемент(и) и запазени са ${kept}.",

		big_inventory_disabled = "Нулиране на слотовете в инвентара на героя до стойностите по подразбиране.",
		big_inventory_enabled = "Временно увеличение на слотовете в инвентара на героя.",

		press_to_open_public_inventory = "~INPUT_REPLAY_SHOWHOTKEY~ Натиснете, за да отворите ${label}",

		burgershot_counter = "Бургършот шПриколката",

		inventory_name_missing = "Липсва параметър за име на инвентара.",

		shredder_title = "Машина за дребосъци",
		shredder_description = "Внимание: Всеки предмет, който бъде поставен тук, ще бъде изтрит веднага и няма да може да бъде възстановен.",

		npc_vehicle_inventory = "Инвентар на NPC пътници",

		store_help = "За да закупите нещо, плъзнете предмет от вторичния инвентар във вашия собствен инвентар.",
		store_tax = "Такса за магазин",
		store_tax_percentage = "${tax}%",

		missing_job = "Нямате необходимата работа, за да използвате този инвентар.",

		item_is_broken = "Този предмет е повреден.",
		battle_royale_item = "Този предмет може да се използва само в Battle Royale мачове.",
		battle_royale_item_disallowed = "Този предмет не е разрешен в Battle Royale мачове.",

		broken_food = "Този предмет е изтекъл.",
		broken_drugs = "Този предмет е изтекъл.",
		vape_empty = "Този атомайзер е празен.",

		craft_combine = "Съчетаване на <i>${output}</i>",
		combining = "Съчетаване",

		file_serial = "Сериен номер на файла",
		filing_off_serial_number = "Притискане на сериен номер",
		filed_serial_number = "Успешно изтрит сериен номер.",
		failed_file_serial_number = "Неуспешно прекъсване на сериен номер.",

		carve_jack_o_lantern = "Изрязване на <i>Тиква за Хелоуин</i>",
		crush_cocoa_beans = "Смилане на <i>Какаови зърна</i>",
		mix_hot_chocolate = "Смесване на <i>Горещ шоколад</i>",
		crush_raw_ruby = "Смилане на <i>Суров рубин</i>",
		crush_raw_sapphire = "Сгъни <i>Самороден Сапфир</i>",
		break_apart_weed = "Раздели <i>1 унция трева</i>",

		search = "Търси",
		amount = "Количество",
		use = "Използвай",
		close = "Затвори",

		done = "ГОТОВО",
		burnt = "ИЗГОРЯНО",
		danger = "ОПАСНОСТ",
		fuel = "Гориво: ${fuel}",

		item_does_stack = "Този предмет може да се събира.",
		item_does_not_stack = "Този предмет не може да се събира.",
		individual_weight = "Индивидуално Тегло",
		stack_amount = "Брой Предмети",

		logs_secondary_inventory_title = "Отворена е Вторична Инвентарна Кутия",
		logs_secondary_inventory_details = "${consoleName} отвори вторична инвентарна кутия с име `${inventoryName}`.",
		logs_ground_inventory_created_title = "Създаден инвентар на земя",
		logs_ground_inventory_created_details = "${consoleName} създаде инвентар на земя с име `${inventoryName}`.",

		logs_item_moved_title = "Преместено предмет",
		logs_item_moved_details = "${consoleName} премести ${moveAmount}x ${itemLabel} към ${endInventory}:${endSlot} от инвентар ${startInventory}:${startSlot}.",

		logs_item_purchased_title = "Купен(и) предмет(и)",
		logs_item_purchased_no_tax_details = "${consoleName} закупи ${purchaseAmount}x `${itemLabel}` за $${purchaseCost}.",
		logs_item_purchased_tax_details = "${consoleName} закупи ${purchaseAmount}x `${itemLabel}` за $${purchaseCost} с допълнителни $${taxCost} поради данък от ${salesTaxPercentage}%",

		radius_invalid = "Радиусът от `${radius}` не е валидна стойност.",
		wiped_all_ground_inventories = "Изтрити ${inventoriesWiped} инвентари на земята.",
		wiped_nearby_ground_inventories = "Изтрити ${inventoriesWiped} инвентари на земята в радиус от `${radius}`.",
		failed_to_wipe_ground_inventories = "Неуспешно изтриване на инвентарите на земята.",
		no_ground_inventories = "Няма земни складове за изтриване.",
		no_ground_inventories_within_radius = "Няма земни складове за изтриване в радиус от `${radius}`.",

		logs_wiped_all_ground_inventories_title = "Изтрити всички земни складове",
		logs_wiped_all_ground_inventories_details = "${consoleName} изтри всички земни складове.",

		logs_wiped_nearby_ground_inventories_title = "Изтрити близките земни складове",
		logs_wiped_nearby_ground_inventories_details = "${consoleName} изтри всички земни складове в радиус от `${radius}`.",

		inventory_crafting_logs_title = "Инвентар за изработка",
		inventory_crafting_logs_details = "${consoleName} използва ${inputs}, за да създаде ${amount}x ${output}.",

		press_use_campfire = "[${InteractionKey}] Използвайте костенурката",
		use_campfire = "Използвайте костенурката",

		dumpster_sandwich = "Плеснели парченца хляб",
		dumpster_beer = "Нацъфтяло бира",
		dumpster_milk = "Изтекло гълъбово мляко",
		dumpster_meat = "Праховито месо (малко плеснеещо)",
		dumpster_fries = "Стари френски пържоли",
		dumpster_brownies = "Изсъхнали блонд брауни",
		dumpster_pizza_slice = "Плеснели парче пица",
		dumpster_banana = "Космати банани (много гнила)",
		dumpster_almond_milk = "Кисело бадемово мляко",
		dumpster_knife = "Ръждив нож",

		-- items & item descriptions
		body_armor = "Бронежилетка",
		body_armor_description = "Защита и готовност за война или просто за всяка друга ден на улиците на ЛС.",
		first_aid_kit = "Кутия за първа помощ",
		first_aid_kit_description = "Комплект за самолечение.",
		bandages = "Бинтове",
		bandages_description = "За всички рани и наранявания.",
		oxygen_tank = "Аксесоар за кислород",
		oxygen_tank_description = "Пакет за разширяване на белите дробове.",
		ifak = "IFAK",
		ifak_description = "\"Power Pack Полицейското Отделение\" което осигурява победа. Приемането на повече от 1 ще доведе до изпитването на лесни победи, заедно с раздаването на трофеи за участие на криминалните елементи след като бъдат свалени.\"<br><br>- Джо, 2020",

		citizen_card = "Гражданска карта",
		citizen_card_description = "Служи като идентификация, лиценз за оръжие и шофьорска книжка.",
		phone = "Телефон",
		phone_description = "never:tm:",
		radio = "Радио",
		radio_description = "Полезно средство за всички метагеймъри там!",
		smart_watch = "Умни часовници",
		smart_watch_description = "Мразиш да плащаш винаги с налични пари? Просто използвай своя умен часовник! Освен това притежава и вграден компас, часовник, GPS и стъпка-брояч! Просто не тръгвай да тренираш в 2 часа сутринта.",
		tablet = "Таблет",
		tablet_description = "Много голям телефон.",
		wallet = "Портфейл",
		wallet_description = "За всичките ви пари и карти.",

		gps = "GPS",
		gps_description = "Удовлетворете всичките си нужди от гаджети.",

		gps_collar = "ГPS Ярем",
		gps_collar_description = "ГPS ярем за проследяване на домашните Ви любимци.",

		boosting_tablet = "Таблет за подсилване",
		boosting_tablet_description = "Използва се за получаване на _съвсем_ законни договори.",

		boat_license = "Лиценз за лодка",
		boat_license_description = "Лиценз за управление на лодки.",
		hunting_license = "Лиценз за лов",
		hunting_license_description = "Лиценз за лов.",
		fishing_license = "Лиценз за риболов",
		fishing_license_description = "Лиценз за риболов.",
		pilot_license = "Пилотска лицензия",
		pilot_license_description = "Пилотска лицензия за управление на самолети и други.",
		weapon_license = "Оръжейна лицензия",
		weapon_license_description = "Оръжейна лицензия за притежание и носене на оръжие от по-висок клас.",
		mining_license = "Лиценз за миньорство",
		mining_license_description = "Лиценз за миньорство.",

		sasp_badge = "Служебна карта на SASP",
		sasp_badge_description = "Служебна карта за офицери от Полицейския департамент на Сан Андреас.",
		sahp_badge = "Знак за Служители от Пътна полиция на Сан Андреас",
		sahp_badge_description = "Знак за офицери от Пътна полиция на Сан Андреас.",
		bcso_badge = "Знак за депутати от Шерифството на Блейн Каунти",
		bcso_badge_description = "Знак за депутати от Шерифството на Блейн Каунти.",
		iaa_badge = "Знак за агенти от Агенцията за вътрешни работи",
		iaa_badge_description = "Знак за агенти от Агенцията за вътрешни работи.",
		fib_badge = "Знак за агенти на Федералното бюро за разследване",
		fib_badge_description = "Знак за агенти на Федералното бюро за разследване.",
		swat_badge = "Знак за офицери от Специалната полицейска единица",
		swat_badge_description = "Знак за офицери от Специалната полицейска единица.",
		management_badge = "Значка за управление",
		management_badge_description = "Значка за агенти от управленското подразделение на SASP.",
		ems_badge = "Идентификационна карта на медицински специалисти",
		ems_badge_description = "Идентификационна карта за медицински специалисти от службата за спешна помощ (EMS).",
		doctor_badge = "Идентификационна карта на лекари",
		doctor_badge_description = "Идентификационна карта за лекари.",
		bcfd_badge = "BCFD",
		bcfd_badge_description = "Значка за пожарникари от Пожарното департамент на окръг Блейн.",
		state_security_badge = "Идентификационна карта на агенти от Държавната сигурност",
		state_security_badge_description = "Идентификационна карта за агенти от Държавната сигурност.",
		doj_badge = "Значка на Департамента по правосъдие",
		doj_badge_description = "Значка за служителите на Департамента по правосъдие.",
		doc_badge = "Значка на Департамента по корекции",
		doc_badge_description = "Значка за служителите на Департамента по корекции.",

		radio_chop_shop = "Радиостанция на автомобил за разрушаване",
		radio_chop_shop_description = "Ползва се за получаване на информация от невидимите хора, които управляват автомобилен център за разрушаване.",

		binoculars = "Бинокъл",
		binoculars_description = "Необходим аксесоар за всеки стрелец, който се крие в Лос Сантос!",
		photo_camera = "Фотоапарат",
		photo_camera_description = "Брендовата фотокамера, разработена от Nikon & Igna, е най-новият професионален модел на пазара. С помощта на своята напреднала обективна система (70-300mm f/4.5-5.6E) можете да заснемете дори най-фините детайли, включително малки предмети на земята.",

		remote_camera = "Дистанционно устройство за наблюдение",
		remote_camera_description = "Устройство за наблюдение, което може да бъде поставено на всяко място и да бъде гледано от дистанция.",
		remote_monitor = "Дистанционен монитор",
		remote_monitor_description = "Преносим монитор, който може да се използва за гледане на дистанционни камери.",

		handcuffs = "Наръчници",
		handcuffs_description = "За пълно преживяване на ERP.",
		bolt_cutter = "Отрупващи превръзки",
		bolt_cutter_description = "ERP-то не беше толкова забавно, както се очакваше...",
		drill = "Бормашина",
		drill_description = "Залагам, че много хора тук имат нужда от това... имайки предвид, че изглежда са с неуредени винтове.",
		umbrella = "Парасолка",
		umbrella_description = "Вдъхнете вътрешния си Попинс.",
		watch = "Часовник",
		watch_description = "Няма време за предпазливост.",
		compass = "Компас",
		compass_description = "43.3068 N 0.7668 З",
		map = "Карта",
		map_description = "Показва ви къде отивате и къде сте били. Или може би бяхте на друго място?",
		glass_breaker = "Специален инструмент за разбиване на стъкла в авариен случай",
		glass_breaker_description = "Използва се за разбиване на автомобилни стъкла в случай на авария.",

		picture = "Снимка",
		picture_description = "Съберете всички спомени за вас и вашите приятели. (Размер: 1x1)",
		printed_card = "Отпечатана карта",
		printed_card_description = "Малка отпечатана карта, можете би бизнес карта? (Размер: 9x5)",
		printed_document = "Отпечатан документ",
		printed_document_description = "Отпечатан документ, може би писмо? (Размер: 21x28)",
		paper = "Фото хартия",
		paper_description = "Празен лист хартия за печатане на снимки. (Размер: 1x1)",
		card_paper = "Картичка от хартия",
		card_paper_description = "Празен лист хартия за печатане на визитни картички. (Размер: 9x5)",
		document_paper = "Документна хартия",
		document_paper_description = "Празен лист хартия за печат на документи. (Размер: 21х28)",
		printer = "Принтер",
		printer_description = "Само принтер, без факс.",

		brochure = "Брошура",
		brochure_description = "Помощна брошура, която ще ви помогне да започнете в града.",

		basic_repair_kit = "Основен комплект за ремонт",
		basic_repair_kit_description = "Прави нещата да работят, но едва-едва.",
		advanced_repair_kit = "Разширен комплект за ремонт",
		advanced_repair_kit_description = "Използва се за поправяне на счупени души.",
		basic_lockpick = "Основен бракониер",
		basic_lockpick_description = "Използва се за отключване на катинари",
		advanced_lockpick = "Разширен бракониер",
		advanced_lockpick_description = "Крий децата си, крий жената си",
		cleaning_kit = "Комплект за почистване",
		cleaning_kit_description = "Перфектен за почистване на автомобила ви или кръвните петна, които сте оставили да изсъхнат в задната част на багажника ви.",
		scratch_remover = "Препарат за премахване на драскотини",
		scratch_remover_description = "Използва се за премахване на бучки и драскотини от превозни средства.",
		motor_oil = "Моторно масло",
		motor_oil_description = "Използва се за поддържане на двигателя на работещо ниво.",

		multi_tool = "Мултифункционален инструмент",
		multi_tool_description = "Инструмент, който може да се използва за различни видове задачи.",

		microphone_bug = "Микрофон за прослушване",
		microphone_bug_description = "Използва се за нелегално проследяване на разговори.",
		vehicle_tracker = "Тракер за превозни средства",
		vehicle_tracker_description = "Този тракер е точно това, от което Майкъл се нуждае, той вече  седем години започва да подозира, че съпругата му, Аманда, го изневерява с треньора по тенис, когото той ѝ назначи.",
		device_scanner = "Скенер за устройства",
		device_scanner_description = "Използва се за сканиране на близките изкушения.",
		radio_decryptor = "Декриптор на радио",
		radio_decryptor_description = "Декриптира радиочестоти, ако е свързан с радио.",

		paper_bag = "Хартиена чанта",
		paper_bag_description = "Перфектна за съхранение на пазарска храна или може би човешка глава, жива или мъртва.",
		burger_shot_delivery = "Малко от Бъргер Шот",
		burger_shot_delivery_description = "Изключителна комбинация от всички сокоизточни месни чудеса, които сервират.",
		bean_machine_delivery = "Доставка от Bean Machine",
		bean_machine_delivery_description = "Чанта, пълна с вкусни лакомства от малък кафене на горния край на града.",
		kissaki_delivery = "Kissaki Махмурлия",
		kissaki_delivery_description = "Вкусна колекция от суши и други японски изкушения.",

		ear_defenders = "Защита за уши",
		ear_defenders_description = "Използва се, за да предпазите ушите си от силни шумове.",

		clothing_bag = "Чанта за Одежда",
		clothing_bag_description = "Никога не се притеснявайте за модни аварии! Чантата за одежда ви позволява да съхранявате любимия си тоалет и моментално да го обличате където и да отидете. Тази чанта е с цялата магия на фея Кръстница, само без бибиди-бобиди-бу.",

		magnifying_glass = "Увеличително стъкло",
		magnifying_glass_description = "Увеличително стъкло за всички нужди на детектива. Може би ще намерите четирисъчлен клевер в тревата или малка жабка в калта?",

		clover = "Четирисъчлен клевер",
		clover_description = "Рядък четирисъчлен клевер за късмет. Можете да го намерите в тревата, ако достатъчно добре погледнете.",
		small_frog = "Малка жабка",
		small_frog_description = "Просто малка жабка. Погледнете го, толкова е сладък!",
		seashell = "Ракушка",
		seashell_description = "Ракушка от плажа. Можете да чувате океана, ако го поставите до ухото си.",

		keys = "Ключове",
		keys_description = "Двойка ключове за някои врати някъде.",

		raw_diamond = "Суров диамант",
		raw_diamond_description = "Диамант в своята естествена форма, свеж от мината.",
		raw_morganite = "Суров морганит",
		raw_morganite_description = "Морганит в своята естествена форма, свеж от мината.",
		raw_ruby = "Суров рубин",
		raw_ruby_description = "Рубин в своята естествена форма, свеж от мината.",
		raw_sapphire = "Суров сапфир",
		raw_sapphire_description = "Сапфир в своята естествена форма, свеж от мината.",
		raw_emerald = "Суров емералд",
		raw_emerald_description = "Емералд в своя естествен вид, прясно изкаран от мината.",

		ruby_dust = "Тъкан от рубин",
		ruby_dust_description = "Тъкан от рубин.",
		sapphire_dust = "Тъкан от сапфир",
		sapphire_dust_description = "Тъкан от сапфир.",

		morganite = "Морганит",
		morganite_description = "Изрязан и полиран морганит.",
		ruby = "Рубин",
		ruby_description = "Изрязан и полиран рубин.",
		sapphire = "Сапфир",
		sapphire_description = "Изрязан и полиран сапфир.",
		emerald = "Емералд",
		emerald_description = "Изрязан и полиран емералд.",

		ring = "Пръстен",
		ring_description = "Просто празен пръстен.",

		morganite_ring = "Морганитов пръстен",
		morganite_ring_description = "Красив пръстен с голям морганит в средата. Перфектен за сватби, най-добри приятели или пълни непознати.",
		ruby_ring = "Рубинен пръстен",
		ruby_ring_description = "Красив пръстен с голям рубин в средата. Перфектен за сватби, най-добри приятели или пълни непознати.",
		sapphire_ring = "Сапфиров пръстен",
		sapphire_ring_description = "Красив пръстен с голям сапфир в средата. Перфектен за сватби, най-добри приятели или пълни непознати.",
		emerald_ring = "Изумруден пръстен",
		emerald_ring_description = "Красив пръстен с голям изумруд в средата. Перфектен за сватби, най-добри приятели или напълно непознати хора.",
		diamond_ring = "Диамантен пръстен",
		diamond_ring_description = "Красив пръстен с голям диамант в средата. Перфектен за сватби, най-добри приятели или напълно непознати хора.",

		gemstone_scanner = "Скенер на скъпоценни камъни",
		gemstone_scanner_description = "Полезен за сканиране на скъпоценни камъни.",

		extended_clip = "Удължен пълнител",
		extended_clip_description = "По-малко зареждане.",
		grip = "Дръжка",
		grip_description = "Дръжка за пипане uwu.",
		sight = "Холографски прицел",
		sight_description = "Как да поправите лоша цел.",
		scope = "Скоп",
		scope_description = "Така можете да получите бонус за разстояние.",
		suppressor = "Подавател",
		suppressor_description = "Bang bang се превръща в pew pew.",
		flashlight = "Светлинен фенер",
		flashlight_description = "Види в тъмнина тип бийт.",
		extended_pistol_clip = "Разширен пълнител (пистолет)",
		extended_pistol_clip_description = "По-малко презареждане.",
		extended_smg_clip = "Разширен пълнител (SMG)",
		extended_smg_clip_description = "По-малко презареждане.",
		extended_shotgun_clip = "Удължено патронно оръжие (Пушка)",
		extended_shotgun_clip_description = "По-малко презареждане.",
		drum = "Барабанен пълнител",
		drum_description = "Вече никога не презареждайте.",
		pistol_sight = "Прицел за пистолет",
		pistol_sight_description = "Как да поправите лошата си цел.",

		aluminium_plate = "Алуминиева плоча",
		aluminium_plate_description = "Внимание: Не предпазва от куршуми... наркоман.",
		aluminium_rod = "Алуминиева пръчка",
		aluminium_rod_description = "Опитайте да не бият с тази главата на приятелите си.",
		copper_nugget = "Меден късче",
		copper_nugget_description = "Малко късче от тази сладка, златисто-кафява смес.",
		copper_wire = "Медна жица",
		copper_wire_description = "Универсална жица, която може да се използва за почти всичко електронно.",
		lens = "Леща",
		lens_description = "Използва се в очила и микроскопи, ти, тъпанар.",
		polymer_resin = "Полимерна смола",
		polymer_resin_description = "Не се пуши, но все пак е готино.",
		screws = "Винтове",
		screws_description = "Какво правите? Завивате ли?",
		spring = "Пролет",
		spring_description = "Не знам защо, но хората харесват да ги почистват?",

		grenade_shell = "Гранатовата обвивка",
		grenade_shell_description = "Обвивка за граната.",
		grenade_pin = "Гранатовият щифт",
		grenade_pin_description = "Щифт за граната.",

		paint = "Боя",
		paint_description = "Полезно за огради и къщи, просто не започвайте да я дишате.",
		paint_brush = "Четка за боя",
		paint_brush_description = "Полезно за боядисване.",

		skin_patriotic = "Патриотична кожа",
		skin_patriotic_description = "За всички вас, кръвиноеки американци там.",
		skin_brushstroke = "Кожа с изчерпан възел",
		skin_brushstroke_description = "За всички любители на изкуството.",
		skin_skull = "Кожа с череп",
		skin_skull_description = "За всички поклонници на едги стила.",
		skin_leopard = "Кожа с леопард",
		skin_leopard_description = "За всички любители на животните.",
		skin_zebra = "Кожа с зебра",
		skin_zebra_description = "За всички любители на животните.",
		skin_geometric = "Геометрична кожа",
		skin_geometric_description = "За всички математикали и физикали.",

		refillable_bottle = "Пълнима бутилка",
		refillable_bottle_description = "Застрашаване на костенурките наистина и заистина.",

		capri_sun = "Каприсън",
		capri_sun_description = "Вкусна наслада от детството ви.",

		gumball = "Жувка",
		gumball_description = "Жувка, какво друго искате да кажа?",

		chorus_fruit = "Плод на корацията",
		chorus_fruit_description = "Плод, който може да ви телепортира до случайна локация.",

		water = "Вода",
		water_description = "Опасност! Дихидроген монооксидът е безцветен и без миризма. Случайно вдишване на ДМО може да бъде фатално. Продължително излагане на твърдата му форма причинява сериозни наранявания на тъканите. Симптоми от поглъщане на ДМО могат да включват прекомерно изпотяване и уриниране, и може би чувство на надуване, гадене, повръщане и нарушаване на електролитния баланс на организма.",
		hamburger = "Хамбургер",
		hamburger_description = "Вкусът на Америка!",
		belgian_fries = "Белгийски фрийз",
		belgian_fries_description = "За по-добър вкус, пишете на @Giv3n#0753 само \"fritas\".",
		coke = "Кока-кола",
		coke_description = "Пабло?",
		pepsi = "Пепси",
		pepsi_description = "Кокаинът е по-добър от Кока.",
		wonder_waffle = "Чудесен гофрет",
		wonder_waffle_description = "Веган, без лактоза, без млечни продукти, без яйца, без глутен, органичен, без антибиотици, без соеви продукти, без фруктоза, без ядки, без ГМО, без захар, без мазнини и с ниско съдържание на въглехидрати",
		cheeseburger = "Чийзбургер",
		cheeseburger_description = "тлъст, замазан, гумест, двоен делукс, влажен двоен, замазан двойката, доста добър, голям, замазан, студен и замазан, обикновен двоен, голям ударен, най-соковит, кралица размер, делукс, доста добър, двойка, замазан, обикновен, тройка, гумест, сочен, греховен, среден, влажен, тлъст, голям, безплатен",
		donut = "Поничка",
		donut_description = "Защо има дупка в средата, бро",
		green_apple = "Зелено ябълко",
		green_apple_description = "Подобно на Red Bull, но в играта няма обекти, които да съответстват на кената на Red Bull.",
		sandwich = "Хамбургер",
		sandwich_description = "Вкусен хамбургер с шунка и сирене.",
		vegan_sandwich = "Вегански хамбургер",
		vegan_sandwich_description = "Да, това буквално е само лист салата и няколко домата между две филии целозърнест хляб. (Защо би ял това, не знам)",
		taco = "Тако",
		taco_description = "Специалитет на Ел Брайън.",
		smores = "С'морс",
		smores_description = "да",
		tic_tac = "Тик Так",
		tic_tac_description = "Окси? Не, полицай, просто ям тик таци!",
		pizza_slice = "Филия пица",
		pizza_slice_description = "Малък фрагмент от За за теб.",
		hot_dog = "Хот-дог",
		hot_dog_description = "Прегърни този глизи, като че ли е последният ти.",
		nachos = "Начос",
		nachos_description = "Начоси достатъчно добри за енкарнасия!",
		vanilla_ice_cream = "Ванилов сладолед",
		vanilla_ice_cream_description = "За обикновените кифли без вкус в живота.",
		chocolate_ice_cream = "Шоколадов сладолед",
		chocolate_ice_cream_description = "Уважителен вкус, не твърде непознат.",
		vanilla_milkshake = "Ванилов млечен шейк",
		vanilla_milkshake_description = "Класически млечен шейк, отлично се комбинира с бургер и картофки!",
		chocolate_milkshake = "Шоколадов млечен шейк",
		chocolate_milkshake_description = "Чудесно изглеждащ шейк, просто се надявайте, че ЦРУ не ви успява преди да го изпиете...",

		burrito = "Бурито",
		burrito_description = "Бурито е ястие от мексиканската и тексанската кухня, което се състои от пшеничен тортила, останали съставки.",
		tostada = "Тостада",
		tostada_description = "Тостада е царевична тортила, която се пържи или се изпича.",
		quesadilla = "Кесадия",
		quesadilla_description = "Кесадия е мексиканско ястие и тип тортила, състоящо се от тортила, пълнена предимно със сирене, а понякога и с меса, боб и подправки и след това се пече на плескавица.",
		pineapple_cake = "Ананасово кексче",
		pineapple_cake_description = "Ананасовото кексче е десерт, който се консумира в Тайван. Типичното тайванско ананасово кексче се пълни с дебел слой ананасово сладко, което е много сладко и кисело.",

		dog_food = "Кучешка храна",
		dog_food_description = "Кучешката храна е храна, специално формулирана и предназначена за консумация от кучета и други свързани с тях.",
		cat_food = "Кучешка храна",
		cat_food_description = "Кучешката храна е храна, предназначена за консумация от котки. Котките имат специфични изисквания за хранителните си вещества.",
		dog_treats = "Подаръци за куче",
		dog_treats_description = "Вкусни лакомства за твоето любимо куче.",
		cat_treats = "Подаръци за котки",
		cat_treats_description = "Вкусни лакомства за твоата домашна котка.",

		burger_buns = "Бургер брекери",
		burger_buns_description = "Постави малко месо между тези злодеи.",
		cheese = "Сирене",
		cheese_description = "Представи си да не понасяш лактозата, губко.",
		lettuce = "Салата",
		lettuce_description = "Оната зелена нещо, което не продават по улиците.",
		patty = "Бургер Патешко",
		patty_description = "Един ден малкият мъж ще открие секретната формула за това месо, до тогава продължавайте да го обръщате, готваче.",
		potato = "Картоф",
		potato_description = "Единствената нещо от Русия, което не е AK или поръчана булка.",
		raw_fries = "Сурови Фризи",
		raw_fries_description = "По същество просто картоф, но някой не се е постарал достатъчно, за да го превърне в нещо.",
		raw_patty = "Сурово Патешко",
		raw_patty_description = "90% Истинско месо, другите 10% се загубиха при превода на опаковката.",

		apple = "Ябълка",
		apple_description = "Дръж злите доктори на отсъствие!",
		banana = "Банан",
		banana_description = "съмнително",
		cherry = "Череша",
		cherry_description = "На върха (ако е вашето предпочитание).",
		kiwi = "Киви",
		kiwi_description = "Плода, не животното. (Не се бъркай с A-32)",
		mango = "Манго",
		mango_description = "Моля, не стреляй! Просто остави мангото...",
		orange = "Портокал",
		orange_description = "Радваш се, че не казах банан.",
		peach = "Праскова",
		peach_description = "Не е задник.",
		pineapple = "Ананас",
		pineapple_description = "Оловен оловен ананасов пен.",
		pomegranate = "На резане",
		pomegranate_description = "Просто бъдете доволни, че го написахме правилно.",
		strawberry = "Ягода",
		strawberry_description = "Обикновено се намира на полета... завинаги.",
		watermelon = "Арбуз",
		watermelon_description = "Дали е вода или пък е диня? Никога може да не разберем.",

		banana_peel = "Кора от банан",
		banana_peel_description = "Доста плъзгава, внимавайте когато стъпвате върху нея.",

		beer = "Бира",
		beer_description = "Ядлива вода.",
		vodka = "Водка",
		vodka_description = "Руски стил, сука еба.",
		tequila = "Текила",
		tequila_description = "Не се притеснявайте, нищо не е задушено в напитката ви. ( ͡° ͜ʖ ͡°)",
		whiskey = "Уиски",
		whiskey_description = "Само за най-изисканите алкохолици.",
		cider = "Сидър",
		cider_description = "Зряло ябълково сокче.",
		rum = "Ръм",
		rum_description = "Време е да прегледаме \"Пиратите от Карибския морски басейн\" отново!",
		absinthe = "Абсент",
		absinthe_description = "Предупреждение: Съдържа алкохол. Нека децата пият само умерено количество.",
		wine = "Вино",
		wine_description = "Гроздов сок.",

		moonshine = "Мънишайн",
		moonshine_description = "Най-добрият начин да се опиеш, без да знае правителството.",
		yeast_packet = "Пакет мая",
		yeast_packet_description = "Пликче мая, използвана за правене на алкохол.",

		kimchi = "Кимчи",
		kimchi_description = "Пикантна корейска предястие от бързалици.",
		fish_sauce = "Сос от риба",
		fish_sauce_description = "Приправка от риба, която е била оставена да ферментира.",

		pumpkin = "Тиква",
		pumpkin_description = "Голям портокалов зеленчук, който се използва за Хелоуин.",
		cabbage = "Зеле",
		cabbage_description = "Идеално за приготвяне на домашен кимчи.",

		smoothie = "Смути",
		smoothie_description = "Перфектната комбинация от плодове, зеленчуци и електролити, която лекува дори най-лошите геймърски махмурлуци.",
		blender = "Блендер",
		blender_description = "Най-добрият блендер за смути: защото добрата и изгодна закуска е ключът към победата (и вкусният смути никога не вреди).",

		cocoa_beans = "Какаови бобове",
		cocoa_beans_description = "Малки бобчета, използвани за производство на шоколад.",
		cocoa_powder = "Какаов прах",
		cocoa_powder_description = "Прах, направен от какаови зърна.",
		hot_chocolate = "Горещ шоколад",
		hot_chocolate_description = "Топъл напитка, направена от какаов прах и мляко.",

		jack_o_lantern = "Джак О' Лантърн",
		jack_o_lantern_description = "Тиква с изрязано лице.",

		cigarette = "Цигара",
		cigarette_description = "Ако не пушите, сте плъх, брат.",
		cigarette_pack = "Пакет цигари",
		cigarette_pack_description = "За вашето тате, който има пристрастие към цигарите (надявам се да се върне след като си тръгне да ги купи).",

		cocaine_bag = "Кокаинова чанта",
		cocaine_bag_description = "По-малки парчета от колумбийска история.",
		cocaine_brick = "Кокаинова тухла",
		cocaine_brick_description = "Един част от колумбийска история.",
		joint = "Joint",
		joint_description = "420 blaze it dawg",
		oxy = "Окси",
		oxy_description = "Имаш ли някакви наркотици? Помага при болки в гърба.",
		antibiotics = "Антибиотици",
		antibiotics_description = "Ти помагат да се отървеш от инфекции и паразити.",
		pain_killers = "Болкоуспокоителни",
		pain_killers_description = "Това е върхово време за продажба, ленто, имам нужда от наркотици.",
		weed_seeds = "Семена за плевел",
		weed_seeds_description = "Расте плевел, братко",
		weed_1q = "Плевел 1кв.",
		weed_1q_description = "420, братко",
		weed_1oz = "Плевел 1унция",
		weed_1oz_description = "1680, братко",

		oxy_prescription = "Окси Рецепта",
		oxy_prescription_description = "Сомнителна рецепта за окси.",

		generic_prescription = "Обща Рецепта",
		generic_prescription_description = "Рецепта за лекарство. Трябва да е добра за повторно напълване.",

		brownies = "Брауни",
		brownies_description = "Карамелни, пухкави и с двойно количество шоколад, с леко допълнение, за да се замислиш за живота.",

		ejector_seat = "Седалка за изкачване",
		ejector_seat_description = "Избутващо кресло, братле!",
		tuner_chip = "Чип за настройване",
		tuner_chip_description = "Аз съм скоростта.",

		chip = "Чип",
		chip_description = "Стилен хакерски чип.",
		decryption_key_red = "Червен ключ за декриптиране",
		decryption_key_red_description = "ЗНАЕТЕ ЛИ? Червената мафия наистина са просто няколко кучета.",
		decryption_key_green = "Зелен ключ за декриптиране",
		decryption_key_green_description = "ЗНАЕТЕ ЛИ? Кокаинът първоначално бил зелен.",
		decryption_key_blue = "Син ключ за декриптиране",
		decryption_key_blue_description = "ЗНАЕТЕ ЛИ? Съществува птица със сини крачета? Референция: https://en.wikipedia.org/wiki/Blue-footed_booby",

		pager = "Звънец",
		pager_description = "Звънец. Изглежда, че има само един контакт и предплатена карта, позволяваща само няколко съобщения.",

		ballistic_shield = "Балистичен щит",
		ballistic_shield_description = "Този щит трябва да се използва, когато се отправите в бандовите територии на RP.",

		pet_porg = "Приятел Порг",
		pet_porg_description = "Очарователен приятел Порг, който ще си седне на рамото ви и ще ви зарадва. Симпатично и пухкаво, това малко същество ще ви накара да се усмихнете, където и да отидете.",
		pet_duck = "Квакащо веселаче",
		pet_duck_description = "Със своите весели квакания и пухкави пера, тази патица е перфектният партньор за всяко приключение. Тя ще се настани щастливо на врата ти, готова да изследва света с теб.",
		pet_cat = "Прегръдничка на рамото",
		pet_cat_description = "Това пухкаво котенце е винаги готово за сън, а какво по-добро място за почивка, отколкото на рамото ти? То ще се настани щастливо и ще бъде уютно, докато ти си на работа.",
		pet_cat_grey = "Мръсният Гизмо",
		pet_cat_grey_description = "Този малък, сив котарак е експерт в леността. Той седи доволно на рамото ти, почти без да се движи, освен когато си прави мързеливо разтърсване.",
		pet_chicken = "Пернат Приятел",
		pet_chicken_description = "Тази очарователна малка пилешка ще се разхожда щастливо около рамото ви, меките й пухчета и любопитния й характер я правят перфектният приятел за всяко приключение.",
		pet_shiba = "Екипа от Лапи",
		pet_shiba_description = "С игривата си личност и мека козина, тази малка шиба кученце е перфектният спътник за всяко приключение. То ще ви следва с удоволствие навсякъде, махащият му опашка и весело лайкане добавят допълнително настроение на вашето пътешествие.",
		pet_mouse = "Пухкаво приятелче",
		pet_mouse_description = "Тази кръгла и пухкава малка шиншилка е перфектният спътник за всяко приключение. Меката и усмихната й личност я правят идеален компаньон, който ще се настани на рамото ти, докато преминаваш през деня си.",
		pet_raccoon = "Раскал като енчо",
		pet_raccoon_description = "Представяме ви Раскал, пухкавата енчо, която винаги е готова за приключение. С по-пълната си фигура и озорничава личност, тя с удоволствие ще седне на рамото ти и ще ти помогне в търсенето на съкровища. Готов ли си да се присъединиш към мисията си?",
		pet_pingu = "Пингу",
		pet_pingu_description = "Този очарователен малък пингвин е перфектният спътник за всяко приключение. С меката си козина и игрив характер, той ще се настани на вашето рамо с удоволствие, докато продължавате своите занимания през деня.",
		pet_banana_cat = "Бананово коте",
		pet_banana_cat_description = "Вашият плодов фелин в приятел! Банановото котенце се настанива на вашето рамо, добавяйки доза игрив чар към вашия ден. То е перфектната аксесоарна доза игрив чар към вашия ден. То е перфектната аксесоарна доза игрив чар към вашия ден. То е перфектната аксесоарна доза игрив чар към вашия ден. То е перфектната аксесоарна доза игрив чар към вашия ден. То е перфектната допълнителна играчка за вашия усмихнат всекидневен живот.",
		pet_snowman = "\"Замръзналият\" Снежкомъж",
		pet_snowman_description = "Забавлявайте се с вашата собствена презрамена снежка! Този малък, студен приятел придава зимно настроение на вашият стил, което го прави идеален за заснежени приключения и разпръскване на замръзнало настроение.",

		hotwheels_mcqueen = "Светкавичен Маккуин",
		hotwheels_mcqueen_description = "Скорост, аз съм Скорост, плува като Кадилак, жилне като Биймер. КАЧОУ КАЧОУ КАЧОУ",
		hotwheels_towmater = "Тоу Мейтър",
		hotwheels_towmater_description = "Казвам се Мейтър, като домат, но без Тъ.",

		boxing_gloves = "Боксови ръкавици",
		boxing_gloves_description = "Превръща те в Роки, но вероятно няма да получиш продължение...",
		leash = "Повод",
		leash_description = "\"Без значение колко слаб, без значение колко силен, на повод се покорявате всички.\" - Тикон Кокс",

		shrooms = "Гъби",
		shrooms_description = "Някой каза да сложим тези на пица, но сега пицата се слага сама на мен... изчакай, кой съм аз?",

		lean = "Лийн",
		lean_description = "Пиянчване със сизърп, сип, сипане, сип.",

		grimace_shake = "Гримасно разклащане",
		grimace_shake_description = "Луд? Една гледа луд бях. Те ме затвориха в стая. Резбарна стая. Резбарна стая с плъхове. И плъховете ме правят луд. Луд? Една гледа луд бях. Те ме затвориха в стая. Резбарна стая. Резбарна стая с плъхове. И плъховете ме правят луд. Луд? Една гледа луд бях. Те ме затвориха в стая. Резбарна стая. Резбарна стая с плъхове. И плъховете ме правят луд. Луд? Една гледа луд бях. Те ме затвориха в стая. Резбарна стая. Резбарна стая с плъхове. И плъховете ме правят луд. Луд? Една гледа луд бях.....",

		jolly_ranchers = "Жоли Ранчъри",
		jolly_ranchers_description = "Насладете се на сладките и киселите вкусове на Жоли Ранчъри, класическите твърди бонбони, изпълнени с плодова сладост.",
		jolly_rancher_watermelon = "Жоли Ранчър с пъпеш",
		jolly_rancher_watermelon_description = "Изпитайте освежаващия вкус на пъпеш с тези прекрасни твърди бонбони Жоли Ранчър.",
		jolly_rancher_raspberry = "Жоли Ранчър с малина",
		jolly_rancher_raspberry_description = "Насладете се на изящната комбинация от сладък и кисел вкус на малина в тези твърди бонбони Жоли Ранчър.",
		jolly_rancher_apple = "Ябълката Jolly Rancher",
		jolly_rancher_apple_description = "Насладете се на свежия и киселинен вкус на ябълката с тези вкусни твърди конфети Jolly Rancher.",
		jolly_rancher_cherry = "Вишневата Jolly Rancher",
		jolly_rancher_cherry_description = "Разкошете се в смелия и ярък вкус на вишнето с тези неустоими твърди конфети Jolly Rancher.",
		jolly_rancher_grape = "Гроздовата Jolly Rancher",
		jolly_rancher_grape_description = "Преживейте сочния и замамния вкус на гроздето с тези водни конфети Jolly Rancher.",

		bucket = "Съд",
		bucket_description = "Може да се използва като сродник на каска.",
		fertilizer = "Тор",
		fertilizer_description = "За по-зелен свят.",

		aluminium_powder = "Прах от алуминий",
		aluminium_powder_description = "Универсален прах, който се използва широко в индустриални и химически приложения. Когато се смеси с определени съставки, може да се получат високореактивни термични реакции, създавайки интензивна топлина и светлина.",
		iron_oxide = "Прах от желязен оксид",
		iron_oxide_description = "Често използван прах, съставен от желязни и кислородни молекули, използван в различни индустриални процеси. Когато се смеси с определени вещества, може да участва в изключително екзотермични реакции, освобождавайки топлина и енергия.",
		steel_filings = "Стоманени опили",
		steel_filings_description = "Колекция от малки стоманени отпадъци, произведени по време на обработката на различни метални компоненти. Обикновено се използва при изработката на файлове.",

		gold_bar = "Златна пръчка",
		gold_bar_description = "Използва се за поправка и изработка.",

		ancient_ring = "Древен пръстен",
		ancient_ring_description = "Почернелият златен пръстен, със своите сложни изрисувания изтрити от времето и морските вълни, прошепва за любов и лоялност от отминал епоха. Някога символ на вечна връзка, сега мами с привлекателната си сила на нечетени истории и загубени цивилизации.",
		ancient_coin = "Древна монета",
		ancient_coin_description = "Тази монета носи отметките на древна търговия, нейната златна повърхност е обезцветена от солта и пясъка на морето, като държи теглото на вековете в своя дизайн. Гравираният върху нея символ говори за обхвата на империята и текучата ръка на историята, която предава богатството от длан на длан.",

		aluminium = "Суров алуминий",
		aluminium_description = "Използва се за поправка и изработка.",
		glass = "Сурово стъкло",
		glass_description = "Използва се за поправка и изработка.",
		rubber = "Необработена гума",
		rubber_description = "Използва се за поправка и изработка.",
		scrap_metal = "Стар метал",
		scrap_metal_description = "Използва се за поправка и изработка.",
		steel = "Сурова стомана",
		steel_description = "Използва се за поправка и изработка.",

		purified_aluminium = "Пречистен алуминий",
		purified_aluminium_description = "Използва се за професионални ремонти.",
		tempered_glass = "Закалено стъкло",
		tempered_glass_description = "Използва се за професионални ремонти.",
		vulcanized_rubber = "Вулканизирана гума",
		vulcanized_rubber_description = "Използва се за професионални ремонти.",
		processed_metal = "Обработен метал",
		processed_metal_description = "Използва се за професионални ремонти.",
		refined_steel = "Пречистена стомана",
		refined_steel_description = "Използва се за професионални ремонти.",

		power_saw = "Електрическа пила",
		power_saw_description = "Използва се за отрязване на неща от други неща.",
		steel_file = "Стоманен файл",
		steel_file_description = "Използва се за шлифоване на неща. Но не данъчните ви декларации.",

		thermite = "Термит",
		thermite_description = "Силно волатилен прах, не го вдишвайте.",
		fake_plate = "Фалшив номер",
		fake_plate_description = "Хехе, мръсните копове няма да ме хванат.",
		evidence_bag_empty = "Празна чанта за доказателства",
		evidence_bag_empty_description = "Можеш ли да подобриш това?",
		evidence_bag = "Чанта за доказателства",
		evidence_bag_description = "Запечатано престъпление в чанта за по-късно използване.",
		fingerprint_evidence = "Доказателство от пръстови отпечатъци",
		fingerprint_evidence_description = "Помага ти да хванеш тези престъпници и противници.",

		ammo_box = "Голяма кутия за боеприпаси",
		ammo_box_description = "Идеална, когато ви трябва да стреляте много. Съдържа 60 заряда от всеки вид боеприпаси.",

		stungun_ammo = "Електрически картидж за тазер",
		stungun_ammo_description = "По-малко от смъртоносно.",
		pistol_ammo = "Боеприпаси за пистолет",
		pistol_ammo_description = "Перфектни за по-нефорсирано използване. Подходящи за почти всички ръчни пистолети.",
		sub_ammo = "Боеприпаси за подкарабини",
		sub_ammo_description = "Търсите начин да изпразните пълнители срещу вродената група? Това е достъпно средство, което предлага точно това. За пълен ефект се препоръчва подкарабината.",
		rifle_ammo = "Патрони за пушка",
		rifle_ammo_description = "Това е за всички жестоки обирджии на банки, които искат да избият някои полицаи по пътя.",
		sniper_ammo = "Патрони за снайпер",
		sniper_ammo_description = "Затрийте вашата инициатива!",
		shotgun_ammo = "Патрони за пушка",
		shotgun_ammo_description = "Хората мислят, че в тях има пистолетно барут! Клоуни... те са пълни с любов и радост.",

		gunpowder = "Пистолетен барут",
		gunpowder_description = "Порошна смес, използвана за производство на куршуми.",
		projectile = "Проектил",
		projectile_description = "Проектил, използван за производство на куршуми. ",
		casing = "Обвивка",
		casing_description = "Обвивка, използвана за изработка на куршуми.",

		silver_watches = "Сребърни часовници",
		silver_watches_description = "Внимавайте!",
		necklaces = "Огърлици",
		necklaces_description = "Добавете още блясък към тоалетът си!",
		gold_watches = "Златни часовници",
		gold_watches_description = "И... откъде конкретно ги взехте?",
		diamonds = "Диаманти",
		diamonds_description = "Трябва ви 24, за да направите пълен сет броня. Препоръчвам да вземете 27, за да можете да вземете и брашно.",

		savings_bond_200 = "$200 Ценна книжка за спестяване",
		savings_bond_200_description = "Ценна книжка за спестяване на стойност $200, която представлява вашата ангажираност към финансова сигурност. Тази книжка може да бъде обменяна в участващи банки, като ви осигурява насърчение за спестяване и ви приближава до финансовите ви цели.",
		savings_bond_500 = "$500 Ценна книжка за спестяване",
		savings_bond_500_description = "Ценна книжка за спестяване на стойност $500, която представлява съществена инвестиция във вашето бъдеще. Когато настъпи моментът, можете да я обмените в банка и да отключите нейната пълна стойност, правейки значителна крачка към вашите финансови амбиции.",
		savings_bond_1000 = "Облигация за спестяване от $1,000",
		savings_bond_1000_description = "Облигация за спестяване от $1,000 - свидетелство за вашето посвещение за изграждане на богатство. Пазете тази облигация на сигурно място, докато не сте готови да я обезпечите в банка, където ще ви осигури съществено финансово подсилване.",
		savings_bond_2000 = "Облигация за спестяване от $2,000",
		savings_bond_2000_description = "Облигация за спестяване от $2,000 - значително инвестиране във вашето финансово бъдеще. Задръжте тази облигация докато настъпи правилното време и след това я обменете в банка, за да отключите пълната ѝ стойност, което ще ви помогне да постигнете вашите финансови мечти.",

		weather_spell_snow = "Магическо заклинание за време (сняг)",
		weather_spell_snow_description = "Това предмет ще ви позволи временно да контролирате времето и да направите сняг! Той е с еднократна употреба, така че го използвайте с внимание. Ако използвате два магически предмета за времето едновременно, вторият просто ще се постави в опашката.",
		weather_spell_rain = "Магически предмет за времето (Дъжд)",
		weather_spell_rain_description = "Този предмет ще ви позволи временно да контролирате времето и да направите дъжд! Той е с еднократна употреба, така че го използвайте с внимание. Ако използвате два магически предмета за времето едновременно, вторият просто ще се постави в опашката.",
		weather_spell_thunder = "Магия за времето (Гръмотевици)",
		weather_spell_thunder_description = "Използването на този предмет ще ви позволи да временно контролирате времето и да предизвикате гръмотевична буря! Това е предмет за еднократна употреба, затова използвайте го с внимание. Ако използвате две магии за времето едновременно, втората просто ще се определя в опашката.",

		zombie_pill = "Хапче за зомбита",
		zombie_pill_description = "Странно хапче, което прави още по-страни неща... Поглъщайте го на свой риск. Може би е мъдро да имате оръжие, защото сънищата могат да се превърнат в насилствени.",

		acid = "Киселина",
		acid_description = "Постоянно ви прави наркотично. Няма избягване от това.",

		rose = "Роза",
		rose_description = "Не знам, спойлер и предполагам.",

		teddy_bear = "Плюшено мече",
		teddy_bear_description = "Приятел, който наистина ще те слуша.",

		self_driving_chip = "Чип за самоудовлетворение",
		self_driving_chip_description = "Мъртви елени навсякъде... смешно нали.",

		ticket_50 = "Билет за лотария на стойност $50",
		ticket_50_description = "Хвърлете малко в казанчето.",
		ticket_250 = "Билет за лотария на стойност $250",
		ticket_250_description = "Вече се забавляваме, поемете това рисковано предизвикателство.",
		ticket_500 = "Билет за лотария от $500",
		ticket_500_description = "Възможността за цялата ти седмична заплата!",

		avocado = "Авокадо",
		avocado_description = "Малък, зелен, булбест състав, прекрасен за приготвяне на дип.",
		avocado_smoothie = "Авокадо смутито",
		avocado_smoothie_description = "Здравословен зелен сок, пренебрегвайки късчетата.",

		raspberry = "Малина",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		antenna = "Антена",
		antenna_description = "Хвани всички честоти.",
		battery_pack = "Батерийна батерия",
		battery_pack_description = "Захранва всичките ви електронни устройства.",
		cpu = "ЦПУ",
		cpu_description = "Сърцето на всеки компютър.",
		knob = "Копче",
		knob_description = "Завъртете го, обърнете го.",
		pcb_board = "Платка с изолатори",
		pcb_board_description = "За прототипиране на вашето следващо изобретение.",
		screen = "Екран",
		screen_description = "Вижте това, което правите.",
		sd_card = "SD карта",
		sd_card_description = "За всички вашите нужди от съхранение.",
		wires = "Кабели",
		wires_description = "Държат всичко заедно.",

		note = "Бележка",
		note_description = "Някаква бележка, незнам човек.",

		pigeon_milk = "Гълъбово мляко",
		pigeon_milk_description = "\"Трябваше да пием гълъбово мляко, това нещо ще те свали насам-натам\"\nМляко, извлечено от Ведър с любов.",

		milk = "Мляко",
		milk_description = "Обикновено краве мляко, извлечено с любов.",

		almond_milk = "Бадемово мляко",
		almond_milk_description = "Как сакат манджите да си млякат алмонджиите??????",

		bandana = "Бандана",
		bandana_description = "Цяла група се започва. (Спечелят Блъдс)",

		battering_ram = "Куларама",
		battering_ram_description = "Вземете ония врати и ги притискайте!",

		trading_card = "Търговска карта",
		trading_card_description = "Колекционирана търговска карта, трябва да ги получим всичките!",

		trading_card_pack = "Пакет с търговски карти",
		trading_card_pack_description = "Пакет със случайни търговски карти, да видим какви страхотни карти има.",

		boombox = "Бумбокс",
		boombox_description = "Свирете музика и бъдете неблагоприлични навсякъде и по всяко време!",

		microphone_stand = "Стойка за микрофон",
		microphone_stand_description = "Увеличете обхвата на гласа си със Стойката за микрофон. Нека вашето послание бъде чут широко и далече!",

		lighter = "Запалка",
		lighter_description = "някои хора просто искат да виждат горещините на света",

		nitro_tank = "Танк с нитро",
		nitro_tank_description = "Идеален за когато имате нужда от скорост.",

		empty_nitro_tank = "Празен резервоар за нитро",
		empty_nitro_tank_description = "Приблизително толкова полезен, колкото празна консерва с фасул.",

		sheet_metal = "Листов метал",
		sheet_metal_description = "Идеален за подобряване на вашия 2x2.",

		valve = "Вентил",
		valve_description = "Half Life 3 Кога?",

		empty_tank = "Празен резервоар",
		empty_tank_description = "Вече не съдържа пропан или аксесоари за пропан.",

		pepper_spray = "Перцов спрей",
		pepper_spray_description = "МОИТЕ ОЧИ!",

		jail_card = "Карта за излизане от затвора",
		jail_card_description = "Излез от затвора без проблем!",

		vape = "Гик Бар",
		vape_description = "Опитвате се да изглеждате готини? Досадили сте вече да сте пи*ка? Дръпнете си една, брей!",

		acetone = "Ацетон",
		acetone_description = "Идеален за отстраняване на боя или хапане, като Купер.",

		bleach = "Избелване",
		bleach_description = "Не пийте това.",

		ammonia = "Амоняк",
		ammonia_description = "Смесете го с избелване за магическо изненада.",

		lithium_batteries = "Литиеви батерии",
		lithium_batteries_description = "Не се разрешават на търговски самолети, освен ако не искате да експлодирате.",

		meth_bag = "Чанта за метамфетамин",
		meth_bag_description = "Прясно нарязана \"Пикантна на Купър\" кристална метамфетамин. Един от най-чистите кристали, които са запалили езерото Аламо.",

		meth_table = "Маса за мет",
		meth_table_description = "Ха-ха смешна референция към \"Второ измерение\" за готвене на мет.",

		campfire = "Костер",
		campfire_description = "Може да бъде поставен навсякъде по света. Идеален за къмпинг, лов и риболов! Това не може да се повдигне отново.",
		tent = "Къмпинг шатра",
		tent_description = "Може да бъде поставена навсякъде по света. Идеална за къмпинг, лов и риболов!",
		cloth_tent = "Тъканена шатра",
		cloth_tent_description = "Може да бъде поставен навсякъде по света. Идеален за къмпинг, лов и риболов!",
		canvas_tent = "Платнен Шатър",
		canvas_tent_description = "Може да бъде поставен навсякъде по света. Идеален за къмпинг, лов и риболов!",
		plastic_chair = "Пластмасова Маса",
		plastic_chair_description = "Може да бъде поставена навсякъде по света. Идеална за къмпинг, лов и риболов!",
		fishing_chair = "Рибарска Маса",
		fishing_chair_description = "Може да бъде поставена навсякъде по света. Идеална за къмпинг, лов и риболов!",
		yoga_mat = "Йога мат",
		yoga_mat_description = "Може да бъде поставен навсякъде в света. Идеален за къмпинг, лов и риболов!",
		cooler_box = "Кутия за охлаждане",
		cooler_box_description = "Може да бъде поставена навсякъде в света. Идеална за къмпинг, лов и риболов!",
		parasol = "Паразол",
		parasol_description = "Може да бъде поставен навсякъде в света. Идеален за къмпинг, лов и риболов!",
		parasol_table = "Паразолна маса",
		parasol_table_description = "Може да бъде поставена навсякъде в света. Идеална за къмпинг, лов и риболов!",
		table = "Маса",
		table_description = "Може да бъде поставена навсякъде по света. Идеална за къмпинг, лов и риболов!",
		towel = "Кърпа",
		towel_description = "Може да бъде поставена навсякъде по света. Идеална за къмпинг, лов и риболов!",
		disposable_grill = "Еднократен грил",
		disposable_grill_description = "Може да бъде поставен навсякъде по света. Идеален за къмпинг, лов и риболов! Това не може да бъде събрано отново.",
		grill = "Грил",
		grill_description = "Може да бъде поставен навсякъде по света. Идеален за къмпинг, лов и риболов!",
		police_barrier = "Полицейска бариера",
		police_barrier_description = "Може да бъде поставена навсякъде в света.",
		dummy = "Треньор",
		dummy_description = "Може да бъде поставен навсякъде в света.",
		target = "Цел",
		target_description = "Може да бъде поставена навсякъде в света.",
		large_target = "Голяма Цел",
		large_target_description = "Може да бъде поставена навсякъде в света.",
		cone = "Конус",
		cone_description = "Може да бъде поставен навсякъде в света.",
		spike_strips = "Шипове",
		spike_strips_description = "Може да бъдат поставени навсякъде в света.",
		spike_strips_large = "Големи шипове",
		spike_strips_large_description = "Могат да бъдат поставени навсякъде в света.",
		floodlight = "Прожектор",
		floodlight_description = "Може да бъде поставен навсякъде в света.",
		left_diversion_sign = "Знак за лява пренасочка",
		left_diversion_sign_description = "Може да бъде поставен навсякъде в света.",
		right_diversion_sign = "Знак за дясна пренасочка",
		right_diversion_sign_description = "Може да бъде поставен навсякъде в света.",
		stop_sign = "Знак за стоп",
		stop_sign_description = "Може да бъде поставен навсякъде в света.",
		bear_trap = "Мечка ловушка",
		bear_trap_description = "Може да се постави навсякъде в света.",
		barrier = "Бариера",
		barrier_description = "Вашата стандартна строителна бариера.",
		traffic_barrier = "Пътна бариера",
		traffic_barrier_description = "Бариера, която да осигури на пътното движение.",
		small_barrier = "Малка бариера",
		small_barrier_description = "Малка и незначителна бариера.",
		traffic_barrel = "Пътна бъчва",
		traffic_barrel_description = "Изглежда лесно удряема, но не правете го... освен ако?",
		pedestrian_barrier = "Пешеходна бариера",
		pedestrian_barrier_description = "Чудесно е да ги имате, освен ако не става въпрос за концерт на Травис Скот...",
		wheel_clamp = "Привързване на колело",
		wheel_clamp_description = "Тук няма да избягат коли! Привързването на колело е сериозно и надеждно средство за осигуряване на превозни средства и слагане на край на неоторизираното им движение. Този мощен и устойчив инструмент е беззвучен изпълнител, който гарантира спазването на правилата за паркиране.",

		bandit_1 = "Обирник 1",
		bandit_1_description = "Може да се поставя навсякъде в света.",
		bandit_2 = "Обирник 2",
		bandit_2_description = "Може да се поставя навсякъде в света.",
		hostage_1 = "Заложник 1",
		hostage_1_description = "Може да бъде поставен навсякъде в света.",
		hostage_2 = "Заложник 2",
		hostage_2_description = "Може да бъде поставен навсякъде в света.",

		director_chair = "Режисьорски стол",
		director_chair_description = "Може да бъде поставен навсякъде в света. Удобно сядане, където и да сте.",
		beach_chair = "Плажен стол",
		beach_chair_description = "Може да бъде поставен навсякъде в света. Удобно сядане, където и да сте.",
		green_fishing_chair = "Зелен рибарски стол",
		green_fishing_chair_description = "Може да бъде поставен навсякъде в света. Удобно сядане, където и да сте.",
		blue_fishing_chair = "Син столове за риболов",
		blue_fishing_chair_description = "Може да се сложи навсякъде в света. Удобно сядане по време на разходка.",

		tire_wall = "Стена от гуми",
		tire_wall_description = "Когато ви е необходимо покритие, но няма.",

		claymore = "Клеймор",
		claymore_description = "Най-силната противопехотна мина.",

		tv_stand = "ТВ стойка",
		tv_stand_description = "Използвайте я, за да поставите телевизор навсякъде искате.",
		tv_remote = "Дистанционно за ТВ",
		tv_remote_description = "Универсално дистанционно (батерии на квантови не са включени).",

		magic_ball = "Магическа топка 8-ка",
		magic_ball_description = "Попитайте я въпрос, разклатете я и я обърнете. Отговорът на вашия въпрос се появява магически в прозореца! Толкова лесно е, че няма да повярвате!",
		fortune_cookie = "Бисквитка с предсказание",
		fortune_cookie_description = "Вкусна бисквитка с предсказание вътре. Разбийте я и вижте какво бъдеще ви очаква!",
		fortune_paper = "Листчето с предсказание",
		fortune_paper_description = "Малко парче хартия с написано предсказание.",

		firework_rocket = "Ракета за фойерверк",
		firework_rocket_description = "Проста ракета за фойерверки. Подходяща за Четвърти юли.",
		firework_battery = "Батерия за фойерверки",
		firework_battery_description = "Батерия за фойерверки. Изстрелва 4 ракети едновременно.",

		pole = "Жълт стълб",
		pole_description = "Идеален за спиране на всеки на място.",

		hiking_backpack = "Раница за туризъм",
		hiking_backpack_description = "Пригответе се за приключения на открито с тази стилна раница за туризъм. Добавя допир на устойчивост на вашия вид, въпреки че е чисто козметичен. Въплъщавайте духа на изследването и показвайте своята привързаност към природата, където и да сте!",
		green_hiking_backpack = "Зелен раница за хайкинг",
		green_hiking_backpack_description = "Подгответе се за открита приключения с тази стилна раница за хайкинг. Тя придава допълнителен див шарм на вашата облекло, въпреки че е изцяло козметична. Опознавайте духа на изследоването и показвайте своята страст към природата навсякъде, където отивате!",
		blue_hiking_backpack = "Синя раница за хайкинг",
		blue_hiking_backpack_description = "Подгответе се за открита приключения с тази стилна раница за хайкинг. Тя придава допълнителен див шарм на вашата облекло, въпреки че е изцяло козметична. Опознавайте духа на изследоването и показвайте своята страст към природата навсякъде, където отивате!",

		gasoline_bottle = "Бутилка с бензин",
		gasoline_bottle_description = "За бързо зареждане на автомобила ви или... ум... на вас самите?",

		radio_jammer = "Модулатор на радиосигнал",
		radio_jammer_description = "Идеален за блокиране на всякакви входящи и изходящи радиосигнали.",

		winner_trophy = "Трофей за победител",
		winner_trophy_description = "Вие сте най-добрият!",

		treasure_map = "Карта на съкровището",
		treasure_map_description = "Избледнела и похабена карта, която обещава неизчерпаемо богатство за онези, които могат да разшифроват криптичните й показания. Х отбелязва мястото, но пътуването до съкровището може да е опасно и пълно с предизвикателства.",
		treasure_map_piece = "Фрагмент от съкровищна карта",
		treasure_map_piece_description = "Издрънкан фрагмент от по-голяма съкровищна карта, може би изгубена или умишлено скрита. Тя носи част от мистерията, пъзел, който чака да бъде решен. Съберете всичките части, сглобете картата и открийте тайните на дълго изгубеното съкровище. Внимавайте за съперници и неочаквани препятствия по пътя!",

		flag = "Знаме",
		flag_description = "Пазете го добре!",

		black_dildo = "Черен дилдо",
		black_dildo_description = "Ще получим това признание по един или друг начин.",
		pink_dildo = "Розово дилдо",
		pink_dildo_description = "Ръчно изработено, изрязано и тествано от Бъгси Мидълман.",

		bean_coffee = "Кафе от зърна",
		bean_coffee_description = "Всъщност просто вода от зърна.",
		cappuccino = "Капучино",
		cappuccino_description = "Еспресо с мляко от гърди, имам предвид мляко от крави...",
		espresso = "Еспресо",
		espresso_description = "Достатъчно енергия, за да захранва вашата къща, всичко в една малка чаша.",
		cream_cookie = "Сладоледен бисквит",
		cream_cookie_description = "Кремообразен, точно както най-много ви харесва.",
		cheesecake = "Чийзкейк",
		cheesecake_description = "Не се бъркайте с торта от сирена.",
		chocolate_cake = "Шоколадова торта",
		chocolate_cake_description = "Вкусна торта от най-добрите какаови зърна.",
		cupcake = "Кефал",
		cupcake_description = "Пухкава торта с магическа кремова пълнеж.",
		pink_lemonade = "Розово лимонада",
		pink_lemonade_description = "Съвсем не обикновена лимонада боядисана в розово, за да можем да ви зареждаме два пъти повече...",

		irish_coffee = "Ирландско кафе",
		irish_coffee_description = "Свежо приготвено кафе, заличено с оригинално ирландско уиски.",
		guinness_beer = "Гинес",
		guinness_beer_description = "Една пинта от най-доброто ирландско пиво в света.",
		jameson_whiskey = "Джеймисън",
		jameson_whiskey_description = "Една бутилка от най-добрата ирландска уиски в света.",
		tayto_chips = "Чипсове Тайто",
		tayto_chips_description = "Не \"кристалчета\", а \"чипсчета\".",

		chip_10 = "Чип $10",
		chip_10_description = "Игрален чип. Може да се използва за хазартни игри. Артикулът може да се обмени за пари в казиното.",
		chip_50 = "Чип $50",
		chip_50_description = "Игрален чип. Може да се използва за хазартни игри. Артикулът може да се обмени за пари в казиното.",
		chip_100 = "Чип $100",
		chip_100_description = "Игрален чип. Може да се използва за хазартни игри. Артикулът може да се обмени за пари в казиното.",
		chip_500 = "Чип $500",
		chip_500_description = "Игрален чип. Може да се използва за хазартни игри. Артикулът може да се обмени за пари в казиното.",
		chip_1000 = "$1000 чип",
		chip_1000_description = "Игрален чип. Може да се използва за хазартни игри. Може да бъде обменен на пари в казиното.",
		chip_5000 = "$5000 чип",
		chip_5000_description = "Игрален чип. Може да се използва за хазартни игри. Може да бъде обменен на пари в казиното.",
		chip_10000 = "$10000 чип",
		chip_10000_description = "Игрален чип. Може да се използва за хазартни игри. Може да бъде обменен на пари в казиното.",

		grubs = "Червеи",
		grubs_description = "Подходящи за риболов.",
		leeches = "Пияви",
		leeches_description = "Идеални за риболов.",
		earthworms = "Червеи за риболов",
		earthworms_description = "Идеални за риболов.",
		fishing_rod = "Въдица за риболов",
		fishing_rod_description = "Идеална за риболов.",
		raw_meat = "Сурово месо",
		raw_meat_description = "Свеж къс месо.",
		cooked_meat = "Приготвено месо",
		cooked_meat_description = "Месо, което е било току що готвено.",
		burnt_meat = "Изгоряло месо",
		burnt_meat_description = "Месо, което е изгоряло.",
		leather = "Кожа",
		leather_description = "Красива шкура, свежа от елен.",
		wood = "Дърво",
		wood_description = "Част от дърво, свежо от дърво.",
		charcoal = "Дървена въглища",
		charcoal_description = "По-добри от нормалните въглища.",

		beef_jerky = "Говеждо Джърки",
		beef_jerky_description = "Няколко хубави парчета говеждо джърки.",
		oreos = "Орео бисквитки 'Рожден Ден'",
		oreos_description = "Някои вкусни бисквитки с намек от рожден ден.",
		nerds_chunks = "Топчета Нърдс",
		nerds_chunks_description = "Една торбичка с гумени топчета Нърдс, вкусни!",
		reeses_pieces = "Рийсъс Пицес",
		reeses_pieces_description = "Перфектната закуска, когато имате малко глад, но не достатъчно за цялото ядене.",
		kettle_chips = "Чипсове Kettle (Honey-BBQ)",
		kettle_chips_description = "Най-добрите чипсове в света.",
		cheetos = "Читос",
		cheetos_description = "Най-добрата закуска за вашите гейминг сесии.",
		peanuts = "Солени Фъстъци",
		peanuts_description = "Кутия с фъстъци - перфектна за хапване.",
		olives = "Маслини",
		olives_description = "Малка купа маслини, перфектна закуска за парти.",

		rice = "Ориз",
		rice_description = "Пухкави зърна.",
		nori = "Нори",
		nori_description = "Това е морски водорасли, но елегантни.",
		soy_sauce = "Соев сос",
		soy_sauce_description = "Соевият сос е силно ароматизиран приправка с богат вкус на умами, която е идеална за мариноване, подправки и сос за потапяне и е с ниско съдържание на калории и високо съдържание на протеини.",
		eggs = "Яйца",
		eggs_description = "Яйцата са многофункционални и хранителни, идеални са за омлети, кишове и печива.",
		lime = "Лимон",
		lime_description = "Лимонът има киселинен вкус и е богат на витамин С, добър е за напитки, маринати и салатни дресинги.",
		coconut = "Кокос",
		coconut_description = "Кокосът е сладък и кремообразен, допълва всякакви десерти, карита и смутита. Ммм.",
		sugar = "Захар",
		sugar_description = "Това е кокаин, но не е нелегален и ви дава диабет.",

		golf_ball = "Голф топка",
		golf_ball_description = "Използва се за голф.",
		golf_ball_yellow = "Жълта голф топка",
		golf_ball_yellow_description = "Използва се за голф.",
		golf_ball_orange = "Оранжева голф топка",
		golf_ball_orange_description = "Използва се за голф.",
		golf_ball_pink = "Розова голф топка",
		golf_ball_pink_description = "Използва се за голф.",

		gas_mask = "Газова маска",
		gas_mask_description = "Ще ви спаси от всички видове газ, дори пързалянията на баби.",
		nv_goggles = "Нощни видеоочила",
		nv_goggles_description = "Ще ви помогнат да виждате в тъмното.",
		thermal_goggles = "Термални видеоочила",
		thermal_goggles_description = "Ще ви помогнат да виждате през стени (Никакви наистина, XD).",

		green_rolls = "Зелени рула",
		green_rolls_description = "За тези от нас, които имат нужда от повече от средното количество.",
		rolling_paper = "Ролираща хартия",
		rolling_paper_description = "Бърза хартия, с която да навиете и изпушите болката си.",

		arena_pill = "Арена хапче",
		arena_pill_description = "Странна хапчета, които правят още по-странични неща... Глътнете на ваш риск. Все пак, може би е добра идея да носите оръжие, за да се предпазите от насилствени сънища.",

		shovel = "Лопата",
		shovel_description = "Издръжлив инструмент за копане, предназначен за откриване на скрити богатства и разкриване на тайни във всяка среда, което го прави ценна актив за страстните ловци на съкровища.",

		electric_fuse = "Електрически предпазител",
		electric_fuse_description = "Електрическият предпазител е необходим предмет за затворени помещения. Трябва да бъде поставен в кутията с предпазители, за да се подава захранване на ключалката от карта.",
		keycard_green = "Зелена карта за ключ",
		keycard_green_description = "Използва се за отваряне на складове, пълни с медицински материали. Собственост на Лос Сантос Флика Банк.",
		keycard_blue = "Син ключов картон",
		keycard_blue_description = "Използва се за отключване на складове, пълни с технически материали. Собственост на банката в Лос Сантос Филика.",
		keycard_red = "Червен ключов картон",
		keycard_red_description = "Използва се за отключване на оръжейна стая. Собственост на банката в Лос Сантос Филика.",

		magazine = "Списание",
		magazine_description = "Списание.",

		bank_rockfish = "Банков рокфиш",
		black_and_yellow_rockfish = "Черно и жълто рокфиш",
		black_rockfish = "Черен рокфиш",
		blackgill_rockfish = "Черногуш рокфиш",
		blackspotted_rockfish = "Черно-точков рокфиш",
		blue_rockfish = "Син камбанар",
		bocaccio = "Бокашио",
		bronzespotted_rockfish = "Бронзов пискюлест камбанар",
		brown_rockfish = "Кафяв камбанар",
		cabezon = "Кабезон",
		calico_rockfish = "Калико камбанар",
		california_scorpionfish = "Калифорнийска скорпионна риба",
		canary_rockfish_variant_1 = "Канарска камбанар (Вариант 1)",
		canary_rockfish_variant_2 = "Канарска камбанар (Вариант 2)",
		chilipepper_rockfish = "Чилия пиперест камбанар",
		china_rockfish = "Китайски камбанар",
		copper_rockfish_variant_1 = "Меден камбанар (Вариант 1)",
		copper_rockfish_variant_2 = "Медена риба за камъни (Вариант 2)",
		cowcod = "Ковкод",
		darkblotched_rockfish = "Мръсна риба за камъни",
		deacon_rockfish = "Поп рокфиш",
		dusky_rockfish_dark_version = "Мъхеста риба за камъни (тъмна версия)",
		dusky_rockfish_light_version = "Мъхеста риба за камъни (светла версия)",
		flag_rockfish = "Отбелязан рокфиш",
		gopher_rockfish = "Мравка рокфиш",
		grass_rockfish_dark_version = "Тревиста риба за камъни (тъмна версия)",
		grass_rockfish_light_version = "Тревиста риба за камъни (светла версия)",
		greenblotched_rockfish = "Зелена риба за камъни",
		greenspotted_rockfish = "Зеленоглав рокфиш",
		greenstriped_rockfish = "Зеленолентест рокфиш",
		halfbanded_rockfish = "Рокфиш с полубанди",
		honeycomb_rockfish = "Лаврак с пчелна пита",
		kelp_greenling_female = "Морски снежанка (женско)",
		kelp_greenling_male = "Морски снежанка (мъжко)",
		kelp_rockfish = "Морски рокфиш",
		lingcod = "Лингкод",
		olive_rockfish = "Маслинен рокфиш",
		pacific_ocean_perch = "Тихоокеански риба-перче",
		pacific_sand_sole = "Тихоокеанска пясъчна ослица",
		pacific_sanddab = "Тихоокеанска пясъчна рибка",
		quillback_rockfish_variant_1 = "Рокфиш с перяща се глава (вариант 1)",
		quillback_rockfish_variant_2 = "Килиав заднолистен рибар (Вариант 2)",
		redbanded_rockfish = "Рибар с червени ленти",
		rock_sole = "Скална платика",
		rosy_rockfish = "Розов рибар",
		rougheye_rockfish = "Рибар с груби очи",
		shortraker_rockfish = "късопайников рибар",
		silvergray_rockfish = "Сребърно-сив рибар",
		speckled_rockfish = "Петнат рибар",
		squarespot_rockfish = "Петън рибар с правоъгълни петна",
		starry_flounder = "Звездчеста платика",
		starry_rockfish = "Звездест рибар",
		tiger_rockfish_dark_version = "Тигров рибар (Тъмен вариант)",
		tiger_rockfish_pink_version = "Тигров бялогръб риба (розова версия)",
		treefish = "Дръвник",
		vermilion_rockfish = "Цигулкова риба",
		widow_rockfish = "Вдовица риба",
		yelloweye_rockfish_adult = "Жълтоглава риба (възрастна)",
		yelloweye_rockfish_juvenile = "Жълтоглава риба (младежка)",
		yellowtail_rockfish = "Жълтокод риба",

		bank_rockfish_description = "Банковите риби са овални риби с малка глава и шипове. Те са бледо червени или червено-кафяви, често с ясна розово-оранжева зона вдълж латералната линия и черни петна по тялото и върха на гръбното перо.",
		black_and_yellow_rockfish_description = "Sebastes chrysomelas, известна също като черно-жълтият рокфиш, е вид морски риба от семейство Sebastidae. Той се намира в каменисти райони в Тихия океан край Калифорния и Баха Калифорния.",
		black_rockfish_description = "Черноят рокфиш, също известен като черният сибряков, черната баса, черният рок-код, морска баса, черната сврака и Тихоокеанска оброст, е вид морска риба от морско семейство Scorpaenidae. ",
		blackgill_rockfish_description = "Понякога се улавя край бреговете на Вашингтон от търговски рибари, използващи брадвични и легена мрежи. Някога често улавяна риба край бреговете на Калифорния.<br><br>По-малки версии могат да се намерят край брега, но по-старите Черни пъстрокини ще се придвижат към дълбоките води.",
		blackspotted_rockfish_description = "Blackspotted пъстрокин (Sebastes melanostictus) е вид морска риба от семейство Скорпении (Scorpaenidae). Намира се в северния Тихи океан.",
		blue_rockfish_description = "Синият рокфиш или синята морска пъстърва е вид морска риба, принадлежаща към подсемейство Себъстинае, рокфишовете, част от семейство Скорпеонидае. Намира се в източния част на Тихия океан, населяващ северна Баха Калифорния до централна Орегон.<br><br>Среща се само в устието на реките, а не директно в реките.",
		bocaccio_description = "Бокачо рокфишът е вид морска риба, принадлежаща към подсемейство Себъстинае, рокфишчетата, част от семейство Скорпеонидае. Намира се в източната част на Тихия океан.<br><br>Известен също като \"червен снепер\".",
		bronzespotted_rockfish_description = "Себестес гили, бронзовоспотена треска, е вид риба, принадлежащ на подсемейство Себастине, трескови, част от семейство Скорпиени. Намира се в източната част на Централно-тихоокеанския океан.",
		brown_rockfish_description = "Кафява треска, чието други имена включват кафява морска пъстърва, шоколадов бас, кафяв бас и кафяв бомбардировач, е вид морска окрасена риба, принадлежаща на подсемейство Себастине, трескови, част от семейство Скорпиени. Намира се в североизточната част на Тихия океан.",
		cabezon_description = "Кейбезонът е голям вид от скорпиони, срещащ се в Тихоокеанския бряг на Северна Америка. Въпреки че родовото име се превежда буквално като \"скорпионов риба\", истинските скорпионови риби принадлежат към сродното семейство Scorpaenidae.",
		calico_rockfish_description = "Sebastes dallii, калифорнийската камбала, е вид морска риба от семейство Scorpaenidae. Тя се среща в Източния централен Тихи океан. <br> <br> Мъжките калики достигат полова зрялост на седем години, докато женските достигат полова зрялост на девет години.",
		california_scorpionfish_description = "Скорпена гутата е вид риба от семейство скорпионни риби, известен с общото име калифорнийска скорпена. Тя е ендемична за източния Тихи океан, където се среща по крайбрежието на Калифорния и Баха Калифорния.",
		canary_rockfish_variant_1_description = "Канарска скална риба, известна също като оранжева скална риба, е вид морска риба от семейство скорпионни риби (Scorpaenidae), подсемейство Sebastinae. Тя е ендемична за водите на Тихия океан от западна Северна Америка.",
		canary_rockfish_variant_2_description = "Канарската риба-скалистка, известна още като оранжевата риба-скалистка, е вид морска риба с лъчести перки, принадлежаща към подсемейство Себастини, скалистите риби, част от семейство Скорпаениди. Тя е естествено срещана във водите на Тихия океан от западното източното крайбрежие на Северна Америка.",
		chilipepper_rockfish_description = "Себастес гуди, още известна като чили риба-скалистка и чилипепър, е вид морска риба с лъчести перки, принадлежаща към подсемейство Себастини, скалистите риби, част от семейство Скорпаениди. Този вид главно живее край брега на западното източното крайбрежие на Северна Америка от Баха Калифорния до Ванкувър.",
		china_rockfish_description = "Китайският морски скорпион, жълтияск светлокрак или жълти петна корифена е вид морска риба, принадлежаща към подсемейство Себастинае, морските скорпиони, част от семейство Скорпиениди. Той е ендемичен за водите на Тихия океан край западното Северна Америка.",
		copper_rockfish_variant_1_description = "Медният морски скорпион, известен също като медна морска пъстърва, е вид морска риба от подсемейство Себастинае, морските скорпиони, част от семейство Скорпиениди. Той се среща в източния Тихи океан.<br><br>Те никога няма да се срещнат в обикновените океани, тъй като те живеят само близо до повърхността или в дълбините.",
		copper_rockfish_variant_2_description = "Медената пъстърва, известна също като меден морската пъстърва, е вид морска риба, принадлежаща към подсемейство Sebastinae, скалистите риби, част от семейство Scorpaenidae. Тя се намира в източния Тихи океан.<br><br>Тя никога няма да се види в обикновени океани, тъй като се задържа само близо до повърхността или на дъното.",
		cowcod_description = "Sebastes levis, крава пъстърва или крава пъстърва, е вид морска риба, принадлежаща към подсемейство Sebastinae, скалистите риби, част от семейство Scorpaenidae. Тя се намира в източния Тихоокеански океан.<br><br>Разнообразието в размерите им създава конкурентна конкурентоспособност.",
		darkblotched_rockfish_description = "Тъмнокафява пухкавоперка, наричана още Чернокафява пухкавоперка, риба с черно уста и петна или черни петна, е риба с дълго, тъмно тяло.",
		deacon_rockfish_description = "Sebastes diaconus, известна още като пухкавоперка дякон, е вид морска риба, принадлежаща към подсемейство Sebastinae, пухкавоперки, част от семейство Scorpaenidae. Тя се среща в източния Тихи океан.<br><br>Мъжките винаги ще живеят по-дълго от женските.",
		dusky_rockfish_dark_version_description = "Sebastes ciliatus е вид пухкавоперка, известна също като тъмнокафява пухкавоперка. Обикновено се среща в Северния Тихи океан.",
		dusky_rockfish_light_version_description = "Sebastes ciliatus е вид рокфиш, известен също като тъмни рокфиш. Обикновено се среща в Северния Тихи Океан.",
		flag_rockfish_description = "Sebastes rubrivinctus, известен също като флагов рокфиш, испански флаг, червена ивица или берберпол, е вид морска риба от подсемейство Себастинае, т.е. рокфиши, част от семейство Скофениди. Среща се в Източния Тихи Океан.",
		gopher_rockfish_description = "Гофър рокфиш, известен още като „гофър морски прасец“, е вид морска риба от подсемейство Себастинае, т.е. рокфиши, част от семейство Скофениди. Среща се в Източния Тихи Океан, основно край Калифорния.",
		grass_rockfish_dark_version_description = "Гъска риба на камък тъмна версия е вид морска риба от семейство Scorpaenidae, наричана още Sebastes rastrelliger. Този вид е основно разпространен във водите на източния Тихи океан.<br><br>Най-често се лови от риболовци за свободно време с помощта на въдица и влакно.",
		grass_rockfish_light_version_description = "Гъска риба на камък светла версия е вид морска риба от семейство Scorpaenidae, наричана още Sebastes rastrelliger. Този вид е основно разпространен във водите на източния Тихи океан.<br><br>Най-често се лови от риболовци за свободно време с помощта на въдица и влакно.",
		greenblotched_rockfish_description = "Зелените петнисти скалисти риби са долни видове, които се намират като отделни особи или в малки групи в скални структури на дълбочини между 55 м (180 фута) и 490 м (1,610 фута). Те достигат максимална дължина от 54 см (21 инча), като женските са по-големи от мъжките. <br><br>Зелените петнисти, Зелени петни и Зелените ивици споделят същите характеристики и поведение.",
		greenspotted_rockfish_description = "Зелената петниста скалиста риба (Sebastes chlorostictus) е вид морски риби, принадлежащ към подсемейство Sebastinae - скално риби, част от семейство Scorpaenidae. Намира се в Източния Тихи океан. <br><br>Зелените петнисти, Зелените петни и Зелените ивици споделят същите характеристики и поведение.",
		greenstriped_rockfish_description = "Себастес елонгатус, зеленолентов рокфиш, ивицест рокфиш, клубнолентов рокфиш, царски платени, рейна или серена, е вид морска риба от семейство Скорпеенови, подсемейство Себастини, от род Себастес. Намира се в североизточния Тихи океан. <br> <br> Зеленото петно, спотираното петно и зеленолентовото петно споделят едни и същи характеристики и поведение.",
		halfbanded_rockfish_description = "Себастес семичинктус, полуопашат рокфиш, е вид морска риба от семейство Скорпеенови, подсемейство Себастини, от род Себастес. Намира се в Източния Тихи океан.",
		honeycomb_rockfish_description = "Медена пчелна скарида има компактно корпусче с ширина, която е 35% до 39% от стандартната дължина. Те са покрити с шипове. Имат кафева, кафява или червено-кафява окраска с 4 до 6 бели петна произволно разположени над страничната им линия.",
		kelp_greenling_female_description = "Една женска келпово зълтолико е пъстра на цялото тяло с малки червеникаво-кафяви до златисти петна на сива до кафява основа. Плавниците са главно на жълто-оранжево. Мъжките обикновено са оливковосиви до кафяви, с неравномерни сини петна по предната половина до две трети от телата им.<br><br>Най-често се срещат във води, по-малко дълбоки от 328 фута.",
		kelp_greenling_male_description = "Мъжката морска риба келп грийнлинг е кафяво-оливкова до сива, с неравномерно разположени сини петна, обрамени от черно по гърба и главата й. И двата пола имат късички (цири) над всяко око. Тази вид достига до 60 см дължина.<br><br>Най-често се среща във води с дълбочина до 100 метра.",
		kelp_rockfish_description = "Sebastes atrovirens, келп шейтанов риба, е вид морска риба от семейство камбанкови. Тя е естествено разпространена в Тихия океан въд американското крайбрежие на Калифорния и Мексико.",
		lingcod_description = "Лингу като хищници могат да достигнат тегло над 80 паунда (35 кг) и дължина от 60 инча (150 см). Те се характеризират с голямо уста с 18 остри зъби. Цветът им е променлив, обикновено с тъмно кафяви или медно-кестеняви петна, подредени в купчини.",
		olive_rockfish_description = "Маслиновият скален окун, Acanthoclinus fuscus, е с дълги перки от семейство Plesiopidae. Намира се само в интеррамперната зона на Нова Зеландия и в скални басейни при отлив. Рибата достига дължина до 30 см.",
		pacific_ocean_perch_description = "Тихоокеанският пергаментен окун, известен също като Тихоокеанския бялокот или Тихоокеанският шкамбар, е риба, която се среща в Северния Тихи океан: от южна Калифорния около Тихоокеанския прелом до северен Хоншу, Япония, включително Берингово море.",
		pacific_sand_sole_description = "Тихоокеанската пясъчна сома, известна просто като пясъчна сома, е вид плоска риба, която обитава североизточните води на Тихия океан, където живее на пясъчно дъно. Единственият вид в рода Psettichthys, той се среща от Беринговото море до Северна Калифорния.",
		pacific_sanddab_description = "Тихоокеанският махмурлук е вид риба с плоско тяло. Той е най-общият вид махмурлук и споделя местообитание с дългорибия махмурлук и покътделения махмурлук. Той е средноголяма риба с светло кафяв цвят, прошарен с тъмно кафяво или черно, понякога с бели или оранжеви петна.",
		quillback_rockfish_variant_1_description = "Калъфката е риба, известна също като морска прасеца, която принадлежи към подсемейство Себастинае, родовете риби Рокфиш. Този вид преимуществено обитава солени рифове. Средният възрастен едри хваща 2–7 паунда и може да достигне дължина от 1 м.<br><br>Около Калифорния, те живеят 15 години. Около Канада, те живеят поне 95 години. Доказва, че Калифорния > САЩ.",
		quillback_rockfish_variant_2_description = "Кинтьезникът рокфиш, известен още като моряшката костурарка, е вид морска риба от подсемейство Sebastinae, рокфишовете, част от семейство Scorpaenidae. Този вид главно обитава солени води и корали. Средният възрастен е в тегло от 2 до 7 паунда и може да достигне 1 метър дължина.<br><br>Тези риби живеят до 15 години около Калифорния. В Канада, те достигат поне 95 години. Което доказва, че Калифорния > САЩ.",
		redbanded_rockfish_description = "Червената рокфиш, известна също като престъпник, бандит, флагов рокфиш, испанско трикольорно, Холивуд, е вид морска риба от подсемейство Sebastinae, рокфишовете, част от семейство Scorpaenidae. Тя се среща в северния Тихи океан.",
		rock_sole_description = "Рок сърма (Lepidopsetta bilineata) е плосък риба от семейство Pleuronectidae. Тя е дънна риба, която живее на пясъчно и камъклево дъно на дълбочина до 575 метра (1,886 фута), но най-често се намира на дълбочина между 0 и 183 метра (0 и 600 фута).",
		rosy_rockfish_description = "Sebastes rosaceus, розовата камена риба, е вид морска риба от подсемейство Sebastinae, каменници, от семейство Scorpaenidae. Тя се среща в Източния Тихи океан.",
		rougheye_rockfish_description = "Rougheye rockfish е вид роклинка от род Sebastes. Известен е още като черногърба роклинка или чернавче има максимална дължина от около 97 см и тегло, според рекордите, от 14 lb 12 oz.",
		shortraker_rockfish_description = "Като възрастни, shortraker rockfish се явява един от най-големите видове роклинки. Под водата те са светлорозови, розо-оранжеви или червени с петна и плавници. Всички плавници имат някакава черност, а гръбната влакна може да бъде с бели върхове. Устата е червена и може да има черни петна.<br><br>Shortraker rockfish са сред най-дълголетните морски видове на Земята, като са регистрирани на възраст до 157 години.",
		silvergray_rockfish_description = "Сребърно-сивата страшница е тънък вид страшница с намалени тръни на главата. Те имат мрачни устни и долен челюст , която е дълга и изпъква отвъд горната челюст. Имат изразителен симфизален възел на върха на долната челюст.",
		speckled_rockfish_description = "Sebastes ovalis, пегавата страшница, е вид морска риба от семейство SCorpaeNIDAE. Тя се намира в дълбоки скалисти райони на Източния Тихи океан.",
		squarespot_rockfish_description = "Себастес хопкинс (Squarespot rockfish) е вид морска риба от подсемейство Себастини, част от семейство Скорпенови. Този вид се среща в Източния Тихи океан.",
		starry_flounder_description = "Звезден паламуд (Starry flounder), известен също като равник, е обикновен плосък риболоп, намерен около маргиналите на Северния Тихи океан.",
		starry_rockfish_description = "Звезден скорпен (Starry rockfish), известна също като петнарка, петнаста скорпена, китайска риба и червена скорпена е вид морска риба от подсемейство Себастини, част от семейство Скорпенови. Среща се в източната част на Тихия океан.",
		tiger_rockfish_dark_version_description = "Тигровият скалист рибар, наречен също тигров скален окун, бандажиран скален окун и черно-бандажиран скален окун, е вид морски рибар с лъчести перки, принадлежащ към подсемейство Себастиани, кичести риби, част от семейство Скорпаениди. Той е естествено срещащ се във водите на Тихия океан от западна Северна Америка.",
		tiger_rockfish_pink_version_description = "Тигровият скалист рибар, наречен също тигров скален окун, бандажиран скален окун и черно-бандажиран скален окун, е вид морски рибар с лъчести перки, принадлежащ към подсемейство Себастиани, кичести риби, част от семейство Скорпаениди. Той е естествено срещащ се във водите на Тихия океан от западна Северна Америка.",
		treefish_description = "Treefish-ът е вид морска риба, принадлежащ към подсемейство Sebastinae, скални риби, част от семейство Scorpaenidae. Среща се в източния Тихи океан.",
		vermilion_rockfish_description = "Sebastes miniatus, вермилният рокфиш, вермилният сипърч, червената шамарка, червеният рокод и да оп. Вид морска риба, която принадлежи към подсемейство Sebastinae, скални риби, част от семейство Scorpaenidae.",
		widow_rockfish_description = "Widow rockfish-ът, или кафявият бомбардировач, е вид морска риба, принадлежащ към подсемейство Sebastinae, скални риби, част от семейство Scorpaenidae. Среща се в североизточния Тихи океан.",
		yelloweye_rockfish_adult_description = "Топешката риба е вид морска риба, която принадлежи към подсемейство Себастинае — устоите и златооките риби, от семейство Scorpaenidae. и един от най-големите представители на род Sebastes. Името му идва от неговия цвят.",
		yelloweye_rockfish_juvenile_description = "Топешката риба е вид морска риба, която принадлежи към подсемейство Себастинае — устоите и златооките риби, от семейство Scorpaenidae. и един от най-големите представители на род Sebastes. Името му идва от неговия цвят.",
		yellowtail_rockfish_description = "Sebastes flavidus, жълти рокфиш или жълтопеперудов чекмеджия е вид морска риба, принадлежащ към подсемейство Sebastinae, рокфишовете, част от семейство Scorpaenidae. Този вид живее основно край брега на западна Северна Америка от Калифорния до Аляска.<br><br>Ларвите и младите риби живеят близо до повърхността, докато възрастните риби се задържат в по-дълбока вода върху скалисти рифове.",

		weapon_dagger = "Античен конен нож",
		weapon_bat = "Бейзболна бухалка",
		weapon_bottle = "Счупена бутилка",
		weapon_crowbar = "Лом",
		weapon_unarmed = "Юмруци",
		weapon_flashlight = "Фенерче",
		weapon_golfclub = "Голф клуб",
		weapon_hammer = "Чук",
		weapon_hatchet = "Брадва",
		weapon_knuckle = "Метални щипки",
		weapon_knife = "Нож",
		weapon_machete = "Мачете",
		weapon_switchblade = "Запалка с нож",
		weapon_nightstick = "Полицейска дула",
		weapon_wrench = "Тресчоткa",
		weapon_battleaxe = "Бойна секира",
		weapon_poolcue = "Шибинга",
		weapon_stone_hatchet = "Каменна брадва",
		weapon_candycane = "Конфетна пръчка",

		weapon_pistol = "Пистолет",
		weapon_pistol_mk2 = "Пистолет Mk II",
		weapon_combatpistol = "Бойен пистолет",
		weapon_appistol = "Пистолет AP",
		weapon_stungun = "Електрошоков пистолет",
		weapon_pistol50 = "Пистолет .50",
		weapon_snspistol = "SNS пистолет",
		weapon_snspistol_mk2 = "SNS пистолет Mk II",
		weapon_heavypistol = "Тежък пистолет",
		weapon_vintagepistol = "Старинен пистолет",
		weapon_flaregun = "Ракетни пистолет",
		weapon_marksmanpistol = "Пистолет стрелец",
		weapon_revolver = "Тежък револвер",
		weapon_revolver_mk2 = "Тежък револвер Mk II",
		weapon_doubleaction = "Револвер с двойно действие",
		weapon_raypistol = "Уп-н-Атомайзър",
		weapon_ceramicpistol = "Керамичен пистолет",
		weapon_navyrevolver = "Морски револвер",
		weapon_gadgetpistol = "Пистолет Перико",
		weapon_stungun_mp = "Токов пистолет (MP)",
		weapon_pistolxm3 = "Пистолет WM 29",
		weapon_tecpistol = "Тактически пистолет",

		weapon_microsmg = "Микро SMG",
		weapon_smg = "SMG",
		weapon_smg_mk2 = "SMG Mk II",
		weapon_assaultsmg = "Штурмов SMG",
		weapon_combatpdw = "Бойно PDW",
		weapon_machinepistol = "Пистолет-пушка",
		weapon_minismg = "Мини SMG",
		weapon_raycarbine = "Адски бич",

		weapon_pumpshotgun = "Помпено руже",
		weapon_pumpshotgun_mk2 = "Помпено руже MK II",
		weapon_sawnoffshotgun = "Режещо руже",
		weapon_assaultshotgun = "Нападателно руже",
		weapon_bullpupshotgun = "Булпъп руже",
		weapon_musket = "Мушкет",
		weapon_heavyshotgun = "Тежко руже",
		weapon_dbshotgun = "Двуцевно руже",
		weapon_autoshotgun = "Автоматично руже",
		weapon_combatshotgun = "Бойно руже",

		weapon_assaultrifle = "Штурмова рпушка",
		weapon_assaultrifle_mk2 = "Штурмова пушка MK II",
		weapon_carbinerifle = "Карабинна пушка",
		weapon_carbinerifle_mk2 = "Карабина Марк II",
		weapon_advancedrifle = "Напреднало ружје",
		weapon_specialcarbine = "Специјална карабина",
		weapon_specialcarbine_mk2 = "Специјална карабина Марк II",
		weapon_bullpuprifle = "Булпап ружје",
		weapon_bullpuprifle_mk2 = "Булпап ружје Марк II",
		weapon_compactrifle = "Компактно ружје",
		weapon_militaryrifle = "Военско ружје",
		weapon_heavyrifle = "Тешко ружје",
		weapon_tacticalrifle = "Службено ружје",

		weapon_mg = "MG",
		weapon_combatmg = "Борбено MG",
		weapon_combatmg_mk2 = "Борбено MG Марк II",
		weapon_gusenberg = "Гусенберг Суипър",

		weapon_sniperrifle = "Снайперска пушка",
		weapon_heavysniper = "Тежка снайперска пушка",
		weapon_heavysniper_mk2 = "Тежка снайперска пушка Mk II",
		weapon_marksmanrifle = "Марксманска пушка",
		weapon_marksmanrifle_mk2 = "Марксманска пушка Mk II",
		weapon_precisionrifle = "Прецизна пушка",

		weapon_rpg = "РПГ",
		weapon_grenadelauncher = "Гранатомет",
		weapon_grenadelauncher_smoke = "Гранатомет за димни гранати",
		weapon_minigun = "Минигън",
		weapon_firework = "Пускова за фойерверки",
		weapon_railgun = "Рейлган",
		weapon_hominglauncher = "Пусков установъчен лаунчер",
		weapon_compactlauncher = "Мини граната",
		weapon_rayminigun = "Вдовицичко оръжие",
		weapon_emplauncher = "Мини ЕМП лаунчер",
		weapon_stinger = "РПГ",
		weapon_railgunxm3 = "Коил райлгън",

		weapon_grenade = "Граната",
		weapon_bzgas = "BZ Газ",
		weapon_molotov = "Коктейл Молотов",
		weapon_stickybomb = "Лепкава бомба",
		weapon_proxmine = "Приближителна мина",
		weapon_snowball = "Снежни топки",
		weapon_pipebomb = "Снежни топки",
		weapon_ball = "Бейзбол",
		weapon_smokegrenade = "Димна граната", -- ЗАБЕЛЕЖКА: В превода е наречена "Сълзотворен газ",
		weapon_flare = "Сигнална граната",
		weapon_acidpackage = "Киселинен пакет",

		weapon_petrolcan = "Оловен кан",
		gadget_parachute = "Парашут",
		weapon_fireextinguisher = "Огнегасител",
		weapon_hazardcan = "Опасен оловен кан",
		weapon_fertilizercan = "Торов кан",

		red_parachute = "Червен парашут",
		blue_parachute = "Син парашут",
		black_parachute = "Черен парашут",

		weapon_dagger_description = "Вече носите пиратската мода от известно време, но нямате оръжие, което да допълни визията ви? Вземете тази кинжал с защитена дръжка.",
		weapon_bat_description = "Алуминиева бейзболна бита с кожена дръжка. Лека, но с мощна сила за всички вас, които целят добре.",
		weapon_bottle_description = "Не е умно и не е красиво, но повечето пъти и главната заплаха въоръжен с нож. Когато всичко останало не е успешно, това прясно се справя с работата.",
		weapon_crowbar_description = "Инструмент за разбиване, изкован от висококачествена, закалена стомана, за да получите допълнително плъзгане, необходимо за завършване на работата.",
		weapon_unarmed_description = "Когато всичко останало не успее, сгъни се и работи с това, което имаш.",
		weapon_flashlight_description = "Усилете страха си от мрака с тази късодействаща, батериената източник на светлина. Удобна за нараняване с пряк удар.",
		weapon_golfclub_description = "Стандартна дължина, среден зъб на голф с противохлъзгаща се гумена дръжка за смъртоносна игра в близък обхват.",
		weapon_hammer_description = "Робустен, универсален чук с дървена дръжка и закривена кука, този стар класик продължава да бие конкуренцията.",
		weapon_hatchet_description = "Раздробете приятелите си с този лесен за употреба и лесен за скриване секач.",
		weapon_knuckle_description = "Перфектно за изтегляне на златни зъби или като подарък на партньора с трофей, който има всичко.",
		weapon_knife_description = "Този нож с двукосо острие от въглеродна стомана с 7\" (18 см) острие е с ребрест гръб, който осигурява по-добри възможности за проникване и пробождане.",
		weapon_machete_description = "Търговията с оръжията на Западна Африка в Америка не е само за даване. Открийте отново простия живот с този дъждовен брадвичест нож.",
		weapon_switchblade_description = "От джоба директно в дълбочините на другия сектор само за една секунда: сгъваемите ножове никога няма да излязат от мода.",
		weapon_nightstick_description = "24-инчово поликарбонатно дърпало за нощник.",
		weapon_wrench_description = "Вечната любимка на оцеляващите при апокалипсиса и насилствена бащите в света, изглежда също е и някакъв вид инструмент.",
		weapon_battleaxe_description = "Ако е достатъчно добра за средновековни пешки, съвременни погранични полицаи и настойчиви футболни майки, значи е достатъчно добра и за теб.",
		weapon_poolcue_description = "Ах, няма звук толкова удовлетворяващ като треската от перфектно разранване, особено когато става дума за гръбначния стълб на противник.",
		weapon_stone_hatchet_description = "2.5 милиона години на изследователска и развойна работа и ние все още сме тук.",
		weapon_candycane_description = "Празнична сладка бастунка. Малко лепкава.",

		weapon_pistol_description = "Стандартен пистолет. Бойно пистолет калибър .45 с пътека за 12 патрона, която може да се удължи до 16.",
		weapon_pistol_mk2_description = "Баланс, простота, прецизност: нищо не поддържа мира толкова добре, колкото удължената цев в устата на другия.",
		weapon_combatpistol_description = "Компактен, лек полуавтоматичен пистолет, проектиран за полицейска и лична защита. С 12-заряден пътека и опция за разширяване до 16 патрона.",
		weapon_appistol_description = "Високопроникащ пълнозаряден пистолет. Разполага с 18 патрона в пълнителя с възможност за удължаване до 36 патрона.",
		weapon_stungun_description = "Забавление с електричество за цялото семейство!",
		weapon_pistol50_description = "Никога не стреляйте по голямокалибрен човек с малокалибрена куршум.",
		weapon_snspistol_description = "Като презервативи или лак за коса, това пасва в джоба ви за вечер на града. Цената на бутилка в клуб, това е на половина от точността на шампанско пробка и два пъти по-смъртоносна.",
		weapon_snspistol_mk2_description = "Най-добрата пистолетица за чантата: ако искате да направите Събота вечер навъсена, това е вашата билет за успех.",
		weapon_heavypistol_description = "Шампионът в света на пистолетите с резервна магазина и полуавтоматична функция. Осигурява точност и сериозно натоварване на подкрепящите мускули при всяко изстрелване.",
		weapon_vintagepistol_description = "Това, от което наистина се нуждаете, е по-разпознаваем пистолет. Изпъкнете от тълпата при обира с този гравиран пистолет.",
		weapon_flaregun_description = "Използва се за сигнализиране на бедствие или пиян възторг. Внимание: насочването директно към хора може да доведе до спонтанна комбустия. Част от Ограбвания.",
		weapon_marksmanpistol_description = "Не е за онези, които не обичат риска. Оползотворете всява цел, тъй като ще презареждате толкова пъти, колкото стреляте.",
		weapon_revolver_description = "Пистолет с достатъчна мощност, за да смазе бясна носорога и достатъчно тежък, за да го избиете на смърт, ако нямате патроните.",
		weapon_revolver_mk2_description = "Ако можете да го подигравате, това е най-близкото, което ще стигнете до изстрел с товарен влак.",
		weapon_doubleaction_description = "Защото понякога възмездието е най-добре да се сервира шест пъти, бързо един след друг, точно между очите.",
		weapon_raypistol_description = "Специално оръжие на Републиканските Космически Рейнджъри, свежо от галактическата война срещу социализма: без патрони, без пълнител, само безмилостни енергийни импулси един след друг.",
		weapon_ceramicpistol_description = "Не е керамика като тази на баба ти. Въпреки че тази пистолет-чантичка е достатъчно малка, за да се събере в чантата й и няма да задейства метални детектори.",
		weapon_navyrevolver_description = "Истинско музейно произведение. Искаш да знаеш как Западът беше печелил - бавни скорости на презареждане и масивна кървопролитност.",
		weapon_gadgetpistol_description = "Смъртоносен изстрел. Не бъди прекрасен. Няма да претърпиш никакви драскотини по титаниевата нитридна повърхност.",
		weapon_stungun_mp_description = "Заряди удоволствие за цялото семейство!",
		weapon_pistolxm3_description = "Компактен, лек пистолет, който стреля с 9мм патрони. Много ефективен за близки срещи.",
		weapon_tecpistol_description = "Напълно автоматичен пистолет с голям капацитет на пълнителя и висока скорост на огън. Държи 33 патрона 9мм.",

		weapon_microsmg_description = "Комбинира компактен дизайн с висока скорост на огън от около 700-900 патрона в минута.",
		weapon_smg_description = "Това се смята за добър универсален пистолет-пушка. Лек и с точен прицел, с капацитет на пълнителя от 30 патрона.",
		weapon_smg_mk2_description = "Лек и компактен, със скорост на огън, с която да умрете много кърваво: превръщайте всяко затворено пространство в смъртоносна кутия с едно щракване на добре намаслена спускова система.",
		weapon_assaultsmg_description = "Висококапацитетен пистолет-пушка, който е и компактен и лек. Побира до 30 куршума в едно списание.",
		weapon_combatpdw_description = "Кой каза, че личното оръжие не може да е подобаващо за войсков персонал? Благодарение на нашите лобисти, не Конгресът. С интегрален потисниятел.",
		weapon_machinepistol_description = "Този напълно автоматичен пистолет е тромбата за вашия двигател с две V8 басови големи: нито едно парти на колелото не звучи напълно правилно без него.",
		weapon_minismg_description = "越来越受欢迎，因为营销团队超越特种部队单位，开始关心低收入地区的小家伙们。",
		weapon_raycarbine_description = "共和党太空突击队特殊武器。如果你想把一个小绿人变成小绿泥，这是唯一的美国方式。",

		weapon_pumpshotgun_description = "标准霰弹枪，适合近身战斗。高抛射子弹的扩散弥补了其在远距离的准确性较低。",
		weapon_pumpshotgun_mk2_description = "只有一件东西可以比泵动更剧烈：小心，后坐力几乎和射击一样致命。",
		weapon_sawnoffshotgun_description = "Тази еднократна, скъсана пушка се компенсира за ниската си обхват и капацитет на боеприпаси с разрушителна ефективност в близък бой.",
		weapon_assaultshotgun_description = "Пълно автоматична пушка с 8-зарядно пълнител и висока скорост на огън.",
		weapon_bullpupshotgun_description = "Възстановява бавния си пъмпащ ритъм на огъня си с обхвата и разпръсването си. Разрушава всичко в пътя си на снарядите.",
		weapon_musket_description = "Снабдени само с мушкети и чувството за превъзходство, британците завладяха половината света. Притежавайте оръжието, което построи Империята.",
		weapon_heavyshotgun_description = "Оръжието, което трябва да залегне в ръката ви, когато искате направо да разгърмите стаята. Най-добре се използва на повърхности, лесни за почистване само.",
		weapon_dbshotgun_description = "Правете едно нещо, направете го добре. Кой има нужда от висока скорост на огън, когато вашият първи изстрел превръща другия във финна мъгла?",
		weapon_autoshotgun_description = "Колко ефективни инструменти за контрол на безпорядъци можете да приберете в джоба си? Ок, два. Но това е другият.",
		weapon_combatshotgun_description = "Има само една полуавтоматична пушка със скорост на огън, която докарва пожарната в Лос Сантос до краен сигнал, и ти я гледаш.",

		weapon_assaultrifle_description = "Тази стандартна атакуваща пушка разполага с голямо капацитетно списание и далечна точност.",
		weapon_assaultrifle_mk2_description = "Определената редакция на класическото оръжие: всичко, което се изисква, е малко работа и външен вид, който може да убива по всяко време.",
		weapon_carbinerifle_description = "Комбинирайки далечна точност с голямо капацитетно списание, Карбиновата пушка може да се разчита да улучва.",
		weapon_carbinerifle_mk2_description = "Това е ръчна, изкусна огнева мощ: не можете да доставите градушка от куршуми с повече любов и грижа, дори да ги вкарате с ръка.",
		weapon_advancedrifle_description = "Най-лекият и компактен от всички асаултни рпушки, без да жертват прецизността и скоростта на стрелба.",
		weapon_specialcarbine_description = "Комбинирайки прецизност, маневреност, огнева мощ и нисък отдача, това е изключително универсална асаултна рпушка за всяка бойна ситуация.",
		weapon_specialcarbine_mk2_description = "Майсторът на всички професии е направил сериозно подобрение: поклонете се пред майстора.",
		weapon_bullpuprifle_description = "Най-новият китайски внос, завладяващ Америка с бурята си, тази рпушка е известна със своя балансирано поведение. Лека и много управляема при автоматична стрелба.",
		weapon_bullpuprifle_mk2_description = "Толкова точно, толкова изискано, че не е толкова порой пушки, колкото е симфония.",
		weapon_compactrifle_description = "На половин размер, същата мощност, двойно отблъскване: няма по-опасен начин да кажете \"Компенсирам нещо\".",
		weapon_militaryrifle_description = "Тази изключително мощна атакуваща пушка е създадена за изключително квалифицирани и изключително умели военнослужещи. Да, можете да я купите.",
		weapon_heavyrifle_description = "По-тежкото означава по-добро, нали?! Ами, давай да вярваме в това.",
		weapon_tacticalrifle_description = "Това трябва да притежава оборудване за полиция, военни служители и всеки, който е заключен в битка насмърт с полицията или военни служители.",

		weapon_mg_description = "Генерална машина с цел за различни цели, която комбинира здрав дизайн с надеждна производителност. Дълга дистанция и проникваща сила. Много ефективно срещу големи групи.",
		weapon_combatmg_description = "Лека, компактна машина с цел, която комбинира отлична маневреност с висока скорост на огън и разрушително въздействие.",
		weapon_combatmg_mk2_description = "Никога няма да имате прекалено много от добро нещо: в крайна сметка, ако първият изстрел е важен, то следващите сто или повече трябва да се считат за двойно важни.",
		weapon_gusenberg_description = "Завършете вашия вид с оръжие от времето на забраната. Изглежда страхотно се простира от прозореца на Рузвелт или в комбинация с панталон с набиране.",

		weapon_sniperrifle_description = "Стандартна снайперска пушка. Идеална за ситуации, които изискват прецизност на дълги разстояния. Ограниченията включват бавна скорост на презареждане и много ниска скорост на стрелба.",
		weapon_heavysniper_description = "Разполага с пробивни куршуми за голямо повреждане. Идва с лазерен прицел като стандарт.",
		weapon_heavysniper_mk2_description = "На далече, все пак винаги близо: ако търсите сигурна основа за най-дългия относно разстояние, то това е той.",
		weapon_marksmanrifle_description = "Без значение дали сте близо или на разстояние, този оръжие ще свърши работата. Многофункционален инструмент за професионалистите.",
		weapon_marksmanrifle_mk2_description = "Познат в военните кръгове като \"Разрушител\", този комплект модове ще унищожи както целта, така и вието ви, по този ред.",
		weapon_precisionrifle_description = "Пушка за перфекционисти. Защо да се доволите с попадение точно между очите, когато можете да проникнете през супериорния фронтален гир?",

		weapon_rpg_description = "Преносимо противотанково оръжие с ракетен барабан, което изстрелва взривни глави. Много ефективно в противодействие срещу превозни средства или големи групи нападатели.",
		weapon_grenadelauncher_description = "Малък, лек гренадер с полуавтоматична функционалност. Побира до 10 заряда.",
		weapon_grenadelauncher_smoke_description = "\"На теб секретен пържолен гранат, на теб пържолен гранат, на теб пържолен гранат!\" - Опра",
		weapon_minigun_description = "Разрушителен 6-луночен пушкомитрач със стил гатлинг. Много висока скорост на огън (2000 до 6000 изстрела в минута).",
		weapon_firework_description = "Върнете блясъка входница с този фойерверк лаунчър, гарантирано ще впечатли публиката.",
		weapon_railgun_description = "Всичко, което трябва да знаете е - магнити и той прави ужасни неща на нещата, на които е насочен.",
		weapon_hominglauncher_description = "Инфрачервен лаунчър със самонавеждащи ракети. За всички вашите движещи се цели.",
		weapon_compactlauncher_description = "Фокусните групи, използващи обичайната модел, предложиха, че е твърде точна и беше неудобно да се използва с едната ръка на газта. Лесно поправяне.",
		weapon_rayminigun_description = "Специално за републиканските космически рейнджъри. НАПРЕД, КАЖЕТЕ ЧЕ КОМПЕНСИРАМ ЗА НЕЩО. ПРЕПИСВАМ ВИ.",
		weapon_emplauncher_description = "Стреляте срещу дронове и хеликоптери, за да ги направите сънливи.",
		weapon_stinger_description = "Подвижен ракетен лансираща система за земя-въздух, предназначена за сваляне на въздушни превозни средства на противника.",
		weapon_railgunxm3_description = "Всичко, което трябва да знаете е - магнити, и прави ужасни неща на нещата, на които е насочено.",

		weapon_grenade_description = "Стандартна фрагментационна граната. Издърпайте щипката, хвърлете я и след това открийте капак. Идеална за унищожаване на сгрупирани нападатели.",
		weapon_bzgas_description = "Ползвайте това, за да озадачите хора, които не харесвате.",
		weapon_molotov_description = "Неелегантно, но изключително ефективно запалително оръжие. Няма щастлива часова с този коктейл.",
		weapon_stickybomb_description = "Пластмасова взривна заря, оборудвана с дистанционно запалително устройство. Може да бъде хвърлена и след това взривена или да бъде поставена на превозно средство и после взривена.",
		weapon_proxmine_description = "Оставете подарък на вашите приятели с тези мина, активиращи се при движение. Кратко забавяне след активацията.",
		weapon_snowball_description = "Бъдете нащрек и готови да съберете вашия отбор за приятелски бой със сняговалки, но бъдете предупредени, тези ледени зайчета могат да нанесат удар.",
		weapon_pipebomb_description = "Не забравяйте, че не се счита за ИЕД, когато го купувате от магазин и го използвате в страна от първия свят.",
		weapon_ball_description = "Подписан от Бейб Рут, напълно оригинален.",
		weapon_smokegrenade_description = "Граната със сълзотворен газ, особено ефективна за обездвижване на няколко нападателя. Предпазващият ефект може да е смъртоносен при продължително излагане.",
		weapon_flare_description = "Хвърли за въздушно снабдяване.",
		weapon_acidpackage_description = "Пакет с киселина. Използвайте го за да направите бъркотия.",

		weapon_petrolcan_description = "Оставя след себе си пътека от бензин, който може да се запали.<br><br>Оставащ бензин: ${petrolAmount}%.",
		gadget_parachute_description = "Този спортен параплан от найлон има дизайн с въздушно крило, за увеличение на контрола върху посоката и скоростта.",
		weapon_fireextinguisher_description = "Огнетушител, наричан и \"машинка за дим\".",
		weapon_hazardcan_description = "Като газов кан, но безполезен.",
		weapon_fertilizercan_description = "Стандартна кутия с говно, няма по-добра за вашите реколти.",

		red_parachute_description = "Като обикновен парашут, но в червено.",
		blue_parachute_description = "Като обикновен парашут, но в синьо.",
		black_parachute_description = "Като обикновен парашут, но в черно.",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "Оръжие за лов на големи животни",
		weapon_addon_huntingrifle_description = "Вашата основна пушка за ловни цели.",

		weapon_addon_vfcombatpistol = "VF Комбат Пистолет",
		weapon_addon_vfcombatpistol_description = "Усмихнете се и изчакайте светкавицата.",

		weapon_addon_dp9 = "D&P 9 Пистолет",
		weapon_addon_dp9_description = "12 възможности да хванете Дъб.",

		weapon_addon_dutypistol = "SIG Sauer P226",
		weapon_addon_dutypistol_description = "Оригиналната безжична система за домашна защита.",

		weapon_addon_gardonepistol = "Gardone Пистолет",
		weapon_addon_gardonepistol_description = "Когато се съмнявате, изпразнете пълнителя.",

		weapon_addon_endurancepistol = "Пистолет Издражливост",
		weapon_addon_endurancepistol_description = "Виаграта за пистолети",

		weapon_addon_sentinelshotgun = "Пистолет-кубиран шотгън",
		weapon_addon_sentinelshotgun_description = "Уред за еднопосочно убийство.",

		weapon_addon_sentinelbbshotgun = "Пистолет-кубиран с лампички",
		weapon_addon_sentinelbbshotgun_description = "Забавление с торбички.",

		weapon_addon_stungun = "Електрически пистолет",
		weapon_addon_stungun_description = "Забавление отрязване за цялото семейство!",

		weapon_addon_mp9 = "B&T MP9",
		weapon_addon_mp9_description = "Малък и бърз, нещо като човекът, който го държи...",

		weapon_addon_rc4 = "Remington R4-C",
		weapon_addon_rc4_description = "Бърз и гневен, перфектният партньор, който да имате в отряда си. Само ако червенокосата не го държи.",

		weapon_addon_pp19 = "PP-19 Витяз",
		weapon_addon_pp19_description = "Връхният руски ум, перфектен за всякакъв вид \"рейд\".",

		weapon_addon_m9a3 = "Beretta M9A3",
		weapon_addon_m9a3_description = "Всичко, от което се нуждаете, за да свършите грязните си дела на евтино.",

		weapon_addon_357mag = "357 Магнум",
		weapon_addon_357mag_description = "От спиране на трафика до зомбита, този револвер е най-добрият приятел на шерифа.",

		weapon_addon_m870 = "Ремингтън M870",
		weapon_addon_m870_description = "Идеален спортен и ловен пушмет, макар че да убиваш даниелите не е наистина спорт... нали?",

		weapon_addon_rpk16 = "RPK-16",
		weapon_addon_rpk16_description = "Най-перфектната автоматична пушка, която някога е съществувала, само не забравяйте тренировъчният костюм.",

		weapon_addon_tacknife = "Най-съвършеното тактическо ножче",
		weapon_addon_tacknife_description = "Най-накрая достигнахте ниво 100. Колонелът ще бъде горд.",

		weapon_addon_reaper = "Жетвар",
		weapon_addon_reaper_description = "Мачете, но по-елегантно.",

		weapon_addon_berserker = "Берсърк",
		weapon_addon_berserker_description = "Готино секира.",

		weapon_addon_stidvc = "STI DVC 2011",
		weapon_addon_stidvc_description = "Бъдещето е сега, старче, само в по-малък калибър...",

		weapon_addon_g36c = "Heckler & Koch G36C",
		weapon_addon_g36c_description = "Размерите на пистолет-пушка и мощта на 5.56 мм NATO патрона. Разработена за специални тактически операции от полицейски и военни спецнази.",

		weapon_addon_vandal = "RGX Вандал",
		weapon_addon_vandal_description = "Valorant пог.",

		weapon_addon_ak74 = "AK-74",
		weapon_addon_ak74_description = "Оставайте се вързани или се хлопайте по дланите.",

		weapon_addon_p320b = "P320",
		weapon_addon_p320b_description = "Вече не сме в Лондон, брато.",

		weapon_addon_mk18 = "MK18",
		weapon_addon_mk18_description = "\"Подготвен да стреляш или да получиш насреща\" - Джордж Вашингтон (вероятно)",

		weapon_addon_glock = "Glock 17",
		weapon_addon_glock_description = "Най-популярният пистолет в света.",

		weapon_addon_colt = "Колт 1851 Нейви",
		weapon_addon_colt_description = "Оригиналният револвер, който го започна всичко.",

		weapon_addon_hk433 = "H&K 433",
		weapon_addon_hk433_description = "H&K 433 е германски автомат разработен от Heckler & Koch през 2009 година.",

		weapon_addon_m6ic = "LWRC M6IC",
		weapon_addon_m6ic_description = "Перфектната пушка за перфектната личност, просто не забравяйте траксуита си.",

		weapon_addon_hk416 = "H&K 416",
		weapon_addon_hk416_description = "H&K 416, Ферарито на огнестрелните оръжия - елегантен, мощен и гарантирано привличащ погледи. Това е като да имаш личен треньор за пръста на базука, предлага резултати, които ще направят враговете ви ревниви. Поздравете новия си най-добър приятел (НОВБП)!",

		weapon_addon_680 = "Ремингтон 680",
		weapon_addon_680_description = "Ремингтон 680 е помпено дробове, разработено от Remington Arms през 1950 година.",

		weapon_addon_honey = "Хъни Баджър",
		weapon_addon_honey_description = "Хъни Баджър е лично защитно оръжие, често използвано в потисната си конфигурация и базирано на AR-15. Отворено е с патрони от калибъра .300 AAC Блекаут и първоначално е произведено от Advanced Armament Corporation (AAC).",

		weapon_addon_glock18c = "Глок 18C",
		weapon_addon_glock18c_description = "Представяме ви Glock 18C: почти джобна пистолета! Има пълна автоматична огнева сила и достатъчно отдача, за да направи деня в стрелбището ви приключение. Без значение дали защитавате убежището си или просто искате да си привличате вниманието на стрелбището, Glock 18C е вашето решение."
	},

	invisibility = {
		invisibility_on = "Включена невидимост.",
		invisibility_off = "Изкл. невидимост.",

		toggled_invisibility = "Успешно се превключи невидимостта на ${displayName}.",
		failed_invisibility = "Неуспешно превключване на невидимостта на ${displayName}.",

		invisibility_logs_title = "Превключена невидимост",
		invisibility_on_logs_details = "${consoleName} включи своята невидимост.",
		invisibility_off_logs_details = "${consoleName} изключи своята невидимост.",
		invisibility_other_logs_details = "${consoleName} превключи невидимостта на ${targetConsoleName}."
	},

	isolation = {
		failed_isolate = "Неуспешно изолиране на играч.",
		isolate_success_on = "Успешно изолиране на ${consoleName}.",
		isolate_success_off = "Успешно прекъсване на изолацията на ${consoleName}.",

		isolated_logs_title = "Изолация на играч",
		isolated_off_logs_details = "${consoleName} изключи изолацията на ${targetName}.",
		isolated_on_logs_details = "${consoleName} включи изолацията на ${targetName}.",
		isolated = "Вие сте изолирани."
	},

	items = {
		move_to_repair = "Движете се тук, за да поправите превозното средство.",
		repairing_vehicle = "Поправяне на превозното средство",
		fix_visual_damage = "Оправяне на визуални щети",
		using_first_aid_kit = "Използване на първа помощ",
		using_bandages = "Използване на бандажи",
		using_ifak = "Използване на IFAK",
		move_to_wash = "Преместете се тук, за да измият превозното средство",
		vehicle_too_clean = "Превозното средство е прекалено чисто, за да се измие.",
		move_to_put_fake_plate = "Преместете се тук, за да сложите фалшив номер на табелата.",
		failed_lockpicking = "Неуспешно отключване",
		lockpicking_succeeded = "Успешно отключване.",
		hotwiring_vehicle = "Прехвърляне на превозното средство",
		lockpick_broke = "Счупено е уреда за отключване",
		failed_hotwire = "Неуспешно прехвърляне на превозното средство, може би опитайте с по-добри инструменти?",
		unpacking_green_rolls = "Разопаковане на зелени ролки",
		you_do_not_have_enough_rolling_paper = "Нямате достатъчно ролки за започване.",
		rolling_joint = "Завиване на джойнт",
		rolling_joints = "Завиване на джойнтове",
		changing_license_plate = "Смяна на номерната табела",
		equipping_parachute = "Екипиране на ${itemName}",
		lockpicking_vehicle = "Отключване на превозно средство",
		illegal_weather_name = "Опит за използване на магически заклин с невалидно име за време.",
		equipping_body_armor = "Екипиране на бронежилетка",
		illegal_burger_shot_delivery_item_id = "Опит за използване на невалиден идентификатор за доставка от 'Burger Shot'.",
		illegal_lighter_item_id = "Опит за използване на запалка с невалиден идентификатор на предмет.",
		unable_to_use_lighter_in_vehicle = "Не можете да използвате запалка в превозно средство.",
		not_possible_in_a_vehicle = "Това действие не е възможно в превозно средство.",
		just_used_bandage = "Току-що използвахте аптечка, изчакайте малко, преди да използвате друга.",
		drank_gasoline_death = "Отравяне с бензин",
		drank_bleach_death = "Отравяне с избелващ препарат",
		finished_joint = "Димяхте последното си джойнтче.",

		using_cuffs = "Използване на ръкопожеляване",
		you_moved_too_fast = "Движихте се прекалено бързо.",

		failed_burger_shot_delivery = "Неуспех при отваряне на доставката от Бъргер Шот.",
		failed_bean_machine_delivery = "Неуспех при отваряне на доставката от Бийн Машин.",
		failed_kissaki_delivery = "Неуспех при отваряне на доставката от Кисаки.",

		burger_shot_delivery_empty = "Тази доставка от Бъргер Шот изглежда празна.",
		bean_machine_delivery_empty = "Тази доставка от Бийн Машин изглежда празна.",
		kissaki_delivery_empty = "Тази доставка от Кисаки изглежда празна.",

		logs_used_weather_spell_title = "Използване на Магия за Време",
		logs_used_weather_spell_details = "${consoleName} използва магията за време `${itemName}`.",

		you_have_used_jail_card = "Използвахте карта 'излез от затвора'!",
		you_are_not_in_jail = "Вие не сте в затвора.",

		stored_map_location = "Успешно актуализирахте местоположението на картата.",
		failed_location_map = "Неуспешно актуализиране на местоположението на картата.",
		updated_waypoint = "Зададен нов пътеводител до местоположението на картата.",

		cleared_map = "Изчистено записаното местоположение на картата.",
		failed_clear_map = "Неуспешно изчистване на записаното местоположение на картата.",
		clear_map_invalid_slot = "Невалиден слот за инвентар."
	},

	jackpot = {
		press_to_deposit = "Натиснете ~INPUT_REPLAY_SHOWHOTKEY~, за да депозирате предмети в Онлайн Джакпот.",
		can_only_withdraw_at_casino = "Можете да изтеглите само в Казиното.",

		took_jackpot_fees = "Взеха такси от джакпота. Извадени са ${removedTotalItems} предмети на стойност $${removedTotalWorth} от ${inventories} инвентара.",

		jackpot = "Джакпот",
		inventory = "Инвентар",
		history = "История",
		bet = "Залог",
		your_chance = "Шанс: ${chance}%",
		pot = "Пот: $${pot}",
		items = "Предмети: ${items}",
		time = "Време: ${time}с",
		chatters = "Съобщения: ${chatters}",
		send_a_message = "Изпращане на съобщение...",
		bet_placed = "${name} е заложил ${count} предмета(и) на стойност $${worth}.",
		bet_item = "${amount}x ${name} (Лева ${worth})",
		value = "Стойност: Лева ${value}",
		total_items = "Общо предмети: ${totalItems}",
		withdraw = "Изтегли (Лева ${amount})",
		transfer = "Прехвърли (Лева ${amount})",
		quick_sell = "Бърза продажба (Лева ${worth})",
		storage_fee_warning = "Всеки ден в 6 часа по гринуичко време, предмети със стойност >= 5% от общата стойност на вашите инвентари ще бъдат премахнати като 'такса за съхранение'.",
		item_with_worth = "${label} (Лева ${worth})",
		select_all = "Избери всички",
		deselect_all = "Премахни всички",
		bet_with_amount = "Събитие (Лева ${amount})",
		close = "Затвори",
		no_items_in_inventory = "Изглежда нямате предмети във вашето виртуално инвентарно помещение.",
		deposit_at_casino = "Можете да депозирате предмети в казиното.",
		sort = "Сортирай",
		player_won_pot = "${name} спечели $${amount} с ${chance}% шанс преди ${timeAgo}.",
		the_ticket_was = "Билетът беше ${ticket}.",
		recent_pots_will_show_here = "Скорошните печалби ще се показват тук.",
		server_id = "Идентификационният номер на сървъра, към който искате да прехвърлите...",
		transfer_items_to_anoter_person = "Прехвърлете предмети на друг човек."
	},

	jail = {
		press_to_leave_jail = "Натиснете ~INPUT_CONTEXT~ за напускане на затвора.",

		menu_title = "Меню Затвор",
		check_remaining_time = "Провери оставащото време",
		leave_city = "Напусни Града",
		leave_jail = "Напусни Затвора",
		close_menu = "Затвори Менюто",

		sentence_reduced = "Твоето присъда е намалена с ${amount} месеца, ти имаш ${remaining} месеца останали.",
		sentence_over = "Твоята присъда приключи.",
		remaining_time = "Оставащо време: ${remaining} месеца.",
		jailed = "Ти си бил затворен за ${amount} месеца.",

		mission_help_1 = "Натисни ~INPUT_CONTEXT~ за да почистиш пода.",
		mission_help_2 = "Натисни ~INPUT_CONTEXT~ за да ядеш нещо.",
		mission_help_3 = "Натиснете ~INPUT_CONTEXT~ за да тренирате.",

		mission_1 = "Почистване на пода.",
		mission_2 = "Ядене на сандвич.",
		mission_3 = "Трениране.",

		mission_blip = "Задача в затвора"
	},

	kiosks = {
		read_catalog = "Натиснете ~g~${InteractionKey} ~w~за четене на каталога."
	},

	lag = {
		fake_lag_invalid_fps = "Невалидни fps.",
		fake_lag_clamp = "Ограничаване на fps до по-малко от ${fps}.",
		fake_lag_disabled = "Фалшивата лаг е деактивирана."
	},

	lean = {
		press_to_sell_lean = "Натиснете ~INPUT_CONTEXT~ за продажба на Lean.",
		local_not_interested = "Местният не изглежда заинтересован в момента.",
		not_interested = "Тази застраховка не изглежда заинтересована от вашето накланяне.",
		selling_lean = "Продавам Lean.",

		no_lean = "Нямате никакъв Lean.",
		no_jolly_ranchers = "Нямате никакви Jolly Ranchers.",
		press_to_mix_lean = "[${SeatEjectKey}] Смесете Lean с Jolly Ranchers",
		mix_menu = "Смесване на Lean",
		mix_with = "Смесете с ${flavor}",
		close_menu = "Затваряне на Менюто",
		mix_failed = "Неуспешно смесване на Lean с Jolly Ranchers.",

		mixed_with = "Смесено с ${flavor}",
		mixed_with_label = "Lean (${flavor})",
		mixing = "Смесване на Lean",

		sold_lean_logs_title = "Продадено Lean",
		sold_lean_logs_details = "${consoleName} продаде 1x Lean за $${reward}."
	},

	leashes = {
		press_to_use_leash = "[${InteractionKey}] Използване на въже",
		putting_leash_on = "Слагане на въже",
		press_to_take_leash_off = "[${InteractionKey}] Сваляне на въже",
		takeing_leash_off = "Сваляне на въже."
	},

	letterboxes = {
		press_to_access = "Натисни ~g~${SeatEjectKey} ~w~за достъп до ${type}",
		letterbox_broken = "Пощенската кутия е счупена.",

		type_letterbox = "пощенска кутия",
		type_newsdisp = "автомат за новини",
		type_postbox = "кутия за писма"
	},

	locate = {
		invalid_filter_value = "Невалидна стойност на филтъра.",
		locate_failed = "Неуспешно откриване на обект, отговарящ на `${filter}`.",
		something_went_wrong = "Неуспешно откриване на елемент.",
		locate_success = "Успешно открит елемент съответстващ на `${filter}` на позиция (${x}, ${y}, ${z}) (инстанция = ${instance}).",

		locate_entity_no_permissions = "Опит за откриване на елемент без подходящи разрешения.",

		locate_entity_logs_title = "Открит Елемент",
		locate_entity_logs_details = "${consoleName} опитва да открие елемент от тип `${filterType}` със стойност `${filterValue}`."
	},

	login = {
		exit_city = "Излизане от града.",
		press_to_exit_city = "Натиснете ~g~${InteractionKey} ~w~, за да излезете от града.",
		bad_words_in_character_creation = "Опит за създаване на герой със съмнителна дума в името или историята: \"${badWords}\"",
		disallowed_words_in_character_name = "Опит за създаване на герой със съмнително име: \"${characterName}\"",
		disallowed_birthday_ban = "Опит за създаване на герой със съмнителна рожденна дата: \"${birthday}\"",

		inventory_help_text = "Натиснете клавиш ~INPUT_REPLAY_SHOWHOTKEY~, за да отворите инвентара си.",

		welcome_to = "Добре дошли в",
		press = "Натиснете",
		enter = "ВЪВЕДЕТЕ",
		to_join = "да се присъедините",
		in_game_time = "Текущото време в града е",
		am = "AM",
		pm = "PM",
		changelogs = "Промени в играта",
		fetching_character_data = "Изтегляне на данни за героя...",
		yes = "Да",
		no = "Не",
		exit_game = "Изход от играта",
		are_you_sure_you_want_to_exit = "Сигурни ли сте, че искате да напуснете играта?",
		exiting_game = "Излизане от играта...",
		delete_character = "Изтриване",
		select_character = "Изберете",
		new_character = "Нов герой",
		empty_slot = "Свободно място",
		male = "Мъж",
		female = "Жена",
		name = "Име",
		dob = "Дата на раждане",
		born = "Роден${dob}",
		gender = "Пол",
		cash = "Пари",
		bank = "Банка",
		story = "История",
		loading_character = "Зареждане на героя...",
		deleting_character = "Изтриване на героя...",
		create_character = "Създай герой",
		first_name = "Име",
		last_name = "Фамилия",
		date_of_birth = "Дата на раждане",
		character_backstory = "Житейска история на героя",
		cancel = "Отказ",
		complete = "Завършване",
		creating_character = "Създаване на героя...",
		are_you_sure_you_want_to_delete = "Сигурни ли сте, че искате да изтриете този герой? Това действие не може да бъде отменено.",
		stop_download = "Спри Изтеглянето",
		start_download = "Започни Изтеглянето",
		slow_download = "Бавно Изтегляне",
		regular_download = "Нормално Изтегляне",
		purchases = "Покупки",
		pledges = "Обръщения",
		packages = "Пакети",
		points = "Точки",
		appreciated_tier = "Подкрепена категория",
		respected_tier = "Уважавана категория",
		heroic_tier = "Хероична категория",
		legendary_tier = "Легендарна категория",
		god_tier = "Божествен Ранг",
		custom_plate = "Персонализиран Номер на Регистрационна Табела",
		custom_character_id = "Персонализиран Идентификационен Номер на Герой",
		custom_phone_number = "Персонализиран Номер на Телефон",
		reskin = "Смяна на визия",
		webstore = "Магазин",
		none = "Няма",
		queue_pin = "PIN: ${queuePIN}",
		copied = "Копирано!",
		back = "Назад",
		copy_license = "Номер на лиценз",
		copy_license_success = "Копирано!",
		cache_assets = "Кеширане на ресурси",
		download_assets = "Искате ли да изтеглите и кеширате повечето ресурси на сървъра? Това може да доведе до няколко неща:",
		cache_assets_less_lag = "Потенциално по-малко спазове на скоростта, по-малко загубени кадри и по-малко скачане на пинг по време на играта. Особено ако използвате по-старо оборудване или по-бавна връзка.",
		cache_assets_crashes = "Това може да причини сриване на играта по време на процеса. Ако това се случи, използвайте опцията 'бавно изтегляне'.",
		cache_assets_restart = "Когато завършите, препоръчваме ви да рестартирате играта, тъй като това може да причини лаг за останалата част от сесията.",
		cache_assets_disk = "Това ще отнеме малко място на диска, затова се уверете, че има свободно пространство. След актуализация най-добре е да изчистите стария си кеш, за да освободите пространство.",
		vehicles = "Превозни средства",
		objects = "Обекти",
		peds = "NPC-та",
		clothing = "Облекла",
		main_menu = "Главно меню",
		gta_settings = "Настройки на GTA",
		discord = "Дискорд",
		framework = "Рамка",
		rules = "Правила на сървъра",
		notice = "Известие",
		language = "Език",
		support_the_server = "Подкрепете сървъра",
		battle_royale = "Битка на виртуален остров",
		arena = "Арена",
		queue = "Опашка",
		queue_position_with_priority = "🐌 Вие сте ${queuePosition}/${queueTotal} в опашката с приоритет ${queuePriorityName}. 🕐${queueTime}",
		queue_position_without_priority = "🐌 Вие сте ${queuePosition}/${queueTotal} в опашката. 🕐${queueTime}",
		live_on_twitch = "Скучаете ли? Проверете тези стриймъри!",
		live = "На живо",
		you_are_through = "Вие сте влязъл!",
		join_server = "Присъединете се към сървъра",
		tired_of_queueing = "Наситени сте от чакане в опашката? Подкрепете ни за предимство в опашката!",
		joining_battle_royale = "Присъединяване към Battle Royale",
		joining_arena = "Присъединяване към Арена",
		refresh = "Обнови",
		refreshing = "Обновява се...",

		avoid_repeating_letters = "Опитайте да избягвате повторящи се букви в първото и/или фамилно име.",
		backstory_empty = "Не може да оставите историята си празна.",

		missing_character_creation_data = "Липсващи данни за създаване на герой.",
		invalid_first_name = "Липсващо или невалидно първо име (от 2 до 100 знака).",
		invalid_last_name = "Липсваща или невалидна фамилия (от 2 до 100 знака).",
		invalid_date_of_birth = "Липсваща или невалидна дата на раждане.",
		weird_date_of_birth = "Моля, изберете разумен дата на раждане.",
		invalid_backstory = "Липсваща или невалидна история (максимум 5,000 знака).",
		backstory_too_short = "Вашата история е твърде кратка (минимум ${backstory} знака).",

		invalid_date = "Невалидна дата на раждане.",
		date_not_future = "Вашата дата на раждане не може да бъде в бъдещето.",
		date_too_old = "Вашата дата на раждане не може да бъде по-стара от 100 години.",

		bad_words = "Има неподходящи думи във вашето име на героя или историята.",
		disallowed_name = "Във вашето име на героя има някои неразрешени думи.",
		disallowed_birthday = "Вашата дата на раждане не е разрешена.",
		numbers_not_allowed = "Числата не са разрешени в името на героя.",
		something_went_wrong = "Нещо се обърка при опит за създаване на героя ви.",
		character_slot_occupied = "Този слот за герой вече е зает.",
		name_already_taken = "Това име вече е заето.",
		illegal_character_slot = "Не можете да създадете герой в този слот.",
		character_already_loaded = "Вече имате зареден герой.",

		new_citizen = "Нов гражданин",
		los_santos_police_dept = "Полицейски отдел Лос Сантос",

		welcome_msg_title = "Добре дошли в ${communityName}!",
		welcome_msg = "Вие сте получили няколко предмета, които ще ви помогнат да започнете. Можете да използвате предметите във вашата панел с горещи клавиши, като използвате клавишите 1-5. \n\nНатиснете **${InventoryKey}** за да отворите инвентара или натиснете **1** за да прочетете вашето брошюра.",

		press_to_go_back_to_menu = "Натиснете ~g~${InteractionKey}~w~, за да се върнете към менюто.",
		go_back_to_menu = "Върни се към менюто.",

		developer = "Разработчик",
		super_admin = "Супер админ",
		staff = "Персонал",
		reconnect = "Прекъсни връзката",
		christmas = "Коледа",
		casino = "Казино",
		random = "Случаен",
		beginner = "Начинаещ",
		custom = "Персонализиран",

		job_low = "Ниско заплащана работа",
		job_medium = "Средно заплащана работа",
		job_high = "Високо заплащана работа",

		appreciated_tier = "Подкрепена категория",
		respected_tier = "Уважавана категория",
		heroic_tier = "Хероична категория",
		legendary_tier = "Легендарна категория",
		godlike_tier = "Богоподобно равнище",

		buddy_passed_through = "${playerName} използва Buddy Pass, за да те претиска през!",

		queuer_not_found = "Оторизираната опция не е намерена.",
		queuer_skipped_queue = "Оторизираната опция прескача опашката.",

		slots_set_to = "Броят на слотовете на сървъра бе настроен на `${slots}`.",
		slots_already_set_to = "Броят на слотовете на сървъра вече е настроен на `${slots}`.",

		death = "Смърт",
		normal = "Нормално",
		one_life = "Един живот",
		one_life_information = "Избирането на тази опция ще направи вашия герой да има само един живот. Ако умрете без да бъдете откаран до болницата, ще загубите героя.",
		one_life_are_you_sure = "Сигурни ли сте, че искате това?",

		screenshots = "Снимки на екрана",
		start_screenshotting = "Започни снимката на екрана",
		what_is_this_title = "Какво е това",
		what_is_this_text_part_1 = "В много функции във фреймуъркът ни ни харесва да използваме качествени портрети на персонажите на хората.",
		what_is_this_text_part_2 = "Начинът, по който постигахме това досега, беше чрез поддържане на един клиент онлайн 24/7, който да поема 'работи' и да създава портрети, когато се поискаше. Това беше много чувствително на проблеми и не скалираше добре.",
		help_out_title = "Помогни",
		help_out_text_part_1 = "За да го направим по-мащабируем и надежден, портретите вече се създават от желаещите клиенти.",
		help_out_text_part_2 = "Ако искате да помогнете (ако например отидете в режим бездействие), бихме оценили много, ако отидете тук и щракнете върху „Започнете снимането“. Това ще избледни играта ви и ще ви постави в режим на готовност за създаване на изображения.",
		help_out_text_part_3 = " Винаги можете да щракнете върху „прекрати снимането“.",
		reward_title = "Награда",
		reward_text_part_1 = "Тези, които помагат, ще бъдат наградени ",
		reward_text_part_2 = " ОП точки за всяка създадена снимка, и ",
		reward_text_part_3 = " ОП точки за всяка час, в който сте на протежение.",

		expired = "Изтекло",
		upgrade = "Надстройка",
		upgrade_pledge = "Надстройка на обета",
		upgrade_pledge_information = "Можете да надградите обета си до по-висок клас по всяко време. Надграждането на обета няма да нулира оставащото време.",
		upgrading_following_pledge = "Подобряване на обещание",
		available_upgrades = "Налични подобрения",
		cost_points = "${cost} точки",
		buy = "Купи",
		confirm_pledge_upgrade = "Потвърждение на подобрение на обещание",
		confirm_pledge_upgrade_text = "Сигурни ли сте, че искате да подобрите обещанието си от ${pledgeLabel} на ${pledgeUpgradeLabel} за ${cost} OP точки?",
		upgrading_pledge = "Обновяване на обещание...",

		exiting_login_ui = "Излизане (UI за вход)"
	},

	logs = {
		logs_failed = "Неуспешно зареждане на регистрационната справка.",

		close = "Затвори"
	},

	loot = {
		press_to_pick_up = "Натиснете ~INPUT_CONTEXT~, за да вземете ${itemLabel}."
	},

	lottery = {
		lottery_announcement = "Обявяване за теглене на лотария",
		lottery_about_to_roll = "След 5 минути ще бъде изтеглен победител за днешната лотария. Общият награден фонд в момента е ${totalPot}, като вие сте поставили ${betAmount}. Вашият шанс за печалба е ${odds}%.",
		current_lottery_pot = "Общата сума в топката в момента е ${totalPot}, където сте поставили ${betAmount}. Вашите шансове за печалба са ${odds}%.",
		drew_a_lottery_winner = "Изтеглен e печелившият на лотарията.",
		roll_lottery_no_permission = "Играчът опита да изтегли лотарията, но няма разрешение да го направи.",
		winner_has_been_picked = "${fullName} спечели топката на лотарията от ${totalPot}! Той постави ${betAmount} и неговите шансове за печалба бяха ${odds}%.",
		claimed_lottery_winnings = "Взе всички печалби от лотарията.",
		no_lottery_winnings = "Нямате неполучени печалби от лотарията.",
		internal_server_error = "Възникна вътрешна грешка на сървъра.",
		use_disabled_animal = "Не можете да използвате лотарията като NPC животно.",

		lottery_log_title = "Печалба от лотария",
		lottery_log_description = "${fullName} (#${characterId}) спечели лотарийния пул от $${totalPot}. Те заложиха $${betAmount}."
	},

	lucky_wheel = {
		hold_to_spin_lucky_wheel = "Натиснете и задръжте ~INPUT_CONTEXT~, за да завъртите късметлийското колело. Цената е ${cost} валутни точки. Безплатно завъртане след ${time}.",
		hold_to_spin_lucky_wheel_free_one_left = "Натиснете и задръжте ~INPUT_CONTEXT~, за да завъртите късметлийското колело. Имате 1 безплатно завъртане останало днес.",
		hold_to_spin_lucky_wheel_free_multiple_left = "Задръжте ~INPUT_CONTEXT~ , за да завъртите Късметлийското колело. Имате ${spins} безплатни завъртания останали за днес.",
		continue_holding_to_spin_lucky_wheel = "Продължете да задържате ~INPUT_CONTEXT~ , за да завъртите Късметлийското колело.",
		lucky_wheel_is_occupied = "Късметлийското колело е заето в момента. Моля, изчакайте.",
		not_enough_op_points = "Нуждаете се от ${cost} ОР точки, за да завъртите Късметлийското колело. Имате ${points} ОР точки.",
		used_op_points = "Използвахте ${cost} ОР точки. Сега имате останали ${points} ОР точки.",
		casino_company_name = "Казино и хотел Даймънд",
		vehicle_won_tweet = "Някой само сега се забогатя от късметлийското колело и си осигури много рядкия ${modelDisplayName}! Кой е щастливият победител? Отидете сега и грабнете наградата си.",
		vehicle_is_not_in_cdimage = "Това превозно средство не се намира в играта.",
		podium_vehicle_set_to = "Престолното превозно средство е настроено на `${modelLabel}`.",

		logs_lucky_wheel_reward_title = "Награда от Късметлийското Колело",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} завъртя колелото и спечели превозно средство.",
		logs_lucky_wheel_reward_vehicle_given_details = "${consoleName} получи успешно превозно средство с име на модел `${modelName}`.",
		logs_lucky_wheel_reward_money_details = "${consoleName} завъртя колелото и спечели $${amount}.",
		logs_lucky_wheel_reward_chips_details = "${consoleName} е завъртял колелото и спечели ${amount} чипове.",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} е завъртял колелото и спечели бижута с име `${itemName}`.",
		logs_lucky_wheel_reward_item_details = "${consoleName} е завъртял колелото и спечели предмет с име `${itemName}`.",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} е завъртял колелото и спечели една седмица с приоритет в опашката."
	},

	magazines = {
		issue_id = "Проблем №${issueId}",
		releases_updated = "Актуализирани версии.",
		no_release_changes = "Няма промени в версиите."
	},

	magnifying_glass = {
		searching = "Търси се по земята",

		too_fast = "Движиш се твърде бързо.",
		failed_search = "Неуспешно търсене по земята.",
		found_nothing = "Не открихте нищо тук.",
		already_searched = "Това място изглежда е вече търсено.",
		found_item = "Открихте ${item}.",

		press_to_sell_items = "Натиснете ~INPUT_CONTEXT~, за да продадете предмети.",
		no_items_to_sell = "Нямате никакви предмети за продажба.",
		menu_title = "Рядки предмети",
		exit_shop = "Изход от магазина",
		failed_sell = "Неуспешна продажба на артикула.",

		found_item_logs_title = "Открит артикул на земята",
		found_item_logs_details = "${consoleName} откри артикул ${item} на земята (${ground}).",
		sold_item_logs_title = "Продаден рядък артикул",
		sold_item_logs_details = "${consoleName} продаде ${item} за $${price}."
	},

	mdt = {
		mdt_title = "Мобилна Данни Терминал",
		loading_reports = "Зареждане на докладите...",
		failed_report_load = "Неуспешно зареждане на докладите.",
		no_reports = "Няма доклади.",
		loading = "Зареждане...",

		title_placeholder = "Заглавие",
		body_placeholder = "Моят доклад..."
	},

	mechanics = {
		move_here_check = "Местете се тук, за да проверите за ъпгрейди",
		checking_upgrades = "Проверяване на ъпгрейди за превозното средство",
		upgrades_list = "${armor}, ${engine}, ${brakes}, ${transmission} и ${turbo}.",

		has_no_turbo = "няма инсталиран турбо",
		has_turbo = "има инсталирано турбо",

		armor_0 = "Без броня",
		armor_1 = "Броня с ъпгрейд 20%",
		armor_2 = "Броня с ъпгрейд 40%",
		armor_3 = "Броня с ъпгрейд 60%",
		armor_4 = "Броня с ъпгрейд 80%",
		armor_5 = "Броня с ъпгрейд 100%",

		brakes_0 = "Стандартни спирачки",
		brakes_1 = "Спирачки за градска употреба",
		brakes_2 = "Спортни спирачки",
		brakes_3 = "Състезателни спирачки",

		transmission_0 = "Стандартна трансмисия",
		transmission_1 = "Улична трансмисия",
		transmission_2 = "Спортна трансмисия",
		transmission_3 = "Състезателна трансмисия",

		engine_0 = "Стандартен двигател",
		engine_1 = "Двигател с EMS ниво 2",
		engine_2 = "Двигател с EMS ниво 3",
		engine_3 = "Двигател с EMS ниво 4",
		engine_4 = "Двигател с EMS ниво 5",

		no_nearby_vehicle = "Няма близък превозно средство.",
		already_checking_upgrades = "Вече проверявате модификации на превозното средство.",
		engine_is_running = "Двигателят на превозното средство работи."
	},

	meow = {
		feed = "[${InteractionKey}] Храни",
		pet = "[${InteractionKey}] Гали",
		brush = "[${InteractionKey}] Четка",
		catnip = "[${InteractionKey}] Дай Катнит",
		treat = "[${InteractionKey}] Дай Лакомство",
		check_up = "[${InteractionKey}] Провери",
		chill = "[${InteractionKey}] Релаксирай",
		meditate = "[${InteractionKey}] Медитирай",
		salute = "[${InteractionKey}] Поздрави",
		stretch = "[${InteractionKey}] Разтягай се",

		feed_active = "Хранясе на Максуел",
		pet_active = "Глезене на Максуел",
		brush_active = "Четкане на Максуел",
		catnip_active = "Даване на Катнит на Максуел",
		treat_active = "Даване на гозба на Максуел",
		check_up_active = "Проверка на Максуел",
		chill_active = "Релакс с Максуел",
		meditate_active = "Медитация с Максуел",
		salute_active = "Поклонение на Максуел",
		stretch_active = "Разтягане с Максуел",

		maxwell_appeared = "Максуел се появи близо до вас.",
		maxwell_shot = "Максуел естрелян"
	},

	meth = {
		press_to_sell_meth = "Натиснете ~INPUT_CONTEXT~, за да продадете Мет.",
		local_not_interested = "Местният не изглежда заинтересован в момента.",
		selling_meth = "Продажба на Мет.",

		sold_meth_logs_title = "Продадено метамфетамин",
		sold_meth_logs_details = "${consoleName} продаде 1x плик с метамфетамин за $${reward}."
	},

	microphone_stand = {
		active = "~g~Активно"
	},

	mining = {
		drill_scan_stone = "[${InteractionKey}] Пробив на камък, [${SeatEjectKey}] Сканиране на камък",
		scan_stone = "[${SeatEjectKey}] Сканиране на камък",
		drill_stone = "[${InteractionKey}] Пробиване на камък",
		scanning_stone = "Сканиране",
		drilling = "Пробиване",
		failed_drill_stone = "Неуспешно пробиване на камък.",
		drill_no_drops = "Не открихте скъпоценни камъни в този камък.",
		drill_drops = "Открихте някои скъпоценни камъни в този камък.",
		used_drill = "Вашият бормашина се повреди.",
		still_shook = "Още сте разстроени от последната експлозия и не открихте скъпоценни камъни в този камък.",

		kill_label = "Експлозия при добив",

		recharging_scanner = "Зареждане на скенера ${percentage}%",
		scanning = "Сканиране ${percentage}%",

		refine_gemstones = "[${InteractionKey}] Пречисти скъпоценни камъни",
		refinery = "Рафинерска маса",
		exit_refinery = "Изход от рафинерията",
		no_gemstones = "Нямате сурови скъпоценни камъни.",
		refining = "Пречистване на 1x ${gemstone}",
		refine_success = "Успешно пречистени 1x ${gemstone}.",
		failed_refine = "Неуспешно пречистване на скъпоценен камък.",

		craft_rings = "[${InteractionKey}] Изработка на пръстени",
		no_crafting_items = "Нямате достатъчно материали за изработване на нещо тук.",
		crafting = "Изработка на 1x ${item}",
		crafting_table = "Маса за изработка",
		crafting_success = "Изработихте 1 бр. ${gemstone}.",
		failed_crafting = "Неуспешно изработване на предмета.",
		exit_crafting = "Изход от масата за изработка",

		engrave_ring = "[${InteractionKey}] Гравиране на пръстени",
		no_engrave_items = "Нямате никакви пръстени.",
		exit_engraving = "Изход от гравиращата маса",
		engraving_table = "Гравираща маса",
		engraving = "Гравиране на ${itemName}",
		engrave_message = "Гравиране на съобщение (максимум 100 знака)",
		engrave_success = "Успешно гравирано съобщение на ${itemName}.",
		failed_engrave = "Неуспешно гравиране на съобщението.",

		no_sellable_items = "Нямате нищо, което можете да продадете тук.",
		exit_shop = "Изход от магазина",
		shop = "Магазин за скъпоценни камъни",
		sell_gemstones = "[${InteractionKey}] Продаване на скъпоценни камъни",
		local_price = "Цена на място: $${price}",

		sold_gemstone = "Продаден 1x ${gemstone} за $${price}.",
		failed_sell_gemstone = "Неуспешно продаване на скъпоценен камък.",
		failed_sell_no_item = "Нямате елемента, който се опитвате да продадете.",
		failed_sell_cap = "Търговецът не иска да купува повече от този елемент от вас.",

		mining_sold_item_title = "Продадени камъни",
		mining_sold_item_details = "${consoleName} продаде 1x ${itemName} за $${price}.",

		mining_crafted_item_title = "Произведено изделие",
		mining_crafted_item_details = "${consoleName} произведе 1 бр. ${itemName}.",

		mining_refined_item_title = "Опънат камък",
		mining_refined_item_details = "${consoleName} опъна 1 бр. ${itemName}.",

		mining_mined_title = "Добит камък",
		mining_mined_details = "${consoleName} доби ${output}.",
		mining_mined_details_nothing = "${consoleName} доби скъпоценен камък, но нищо не намери.",

		mining_exploded_title = "Експлозия при добив",
		mining_exploded_details = "${consoleName} се взриви, докато се опитваше да добие камък.",

		instability_0 = "Този скъпоценен камък е стабилен.",
		instability_1 = "Този скъпоценен камък е леко нестабилен.",
		instability_2 = "Този скъпоценен камък е нестабилен.",
		instability_3 = "Този скъпоценен камък е много нестабилен.",

		exhausted = "Чувствате се изтощен от прекарването на толкова много време в мината.",
		very_exhausted = "Чувствате се много изтощен от прекарването на толкова много време в мината."
	},

	miscellaneous = {
		language_unavailable = "Езикът `${languageCode}` все още не е достъпен. Ако желаете да създадете превод за този език, можете да се присъедините към OP-FW разработчицкото discord сървър, за повече информация на ${frameworkDiscord}!",
		same_language = "Вече имате избран език ${languageCode}.",
		language_set = "Вашият предпочитан език е актуализиран на ${languageCode}.",
		current_language = "Текущ език",
		available_language_codes = "Налични езикови кодове",
		ping_pong = "Понг!",
		ping_response = "${ping}мс (време за обратно извикване: ${callbackTime}мс)",
		ooc_first_time = "Виждаме, че още не сте използвали командата /ooc! Преди да ви позволим да я използвате, искаме да ви дадем малко предупреждение. Командата /ooc трябва да се използва само в незабавни ситуации, и всички неотложни въпроси или съобщения трябва да бъдат насочени към нашия дискорд сървър на ${communityDiscord}. Това е всичко! За да започнете да използвате командата /ooc, напишете /ooc_on. Можете отново да я изключите с /ooc_off.",
		ooc_not_logged_in = "Не сте влезли в профила си.",
		ooc_timed_out = "В момента не можете да ползвате OOC чата. Моля, изчакайте.",
		ooc_muted_no_reason = "Вие сте заглушени в глобалния OOC чат без посочена причина.",
		ooc_muted = "Вие сте заглушени в глобалния OOC чат с причина: `${reason}`.",
		global_ooc_title = "OOC ${playerDescriptor}",
		local_ooc_title = "ЛОКАЛЕН OOC ${playerDescriptor}",
		ooc_is_disabled = "Изключили сте глобалния OOC чат.",
		ooc_enabled = "Глобалният OOC чат е активиран.",
		ooc_already_enabled = "Глобалното OOC е вече активирано.",
		ooc_disabled = "Глобалното OOC вече е деактивирано.",
		ooc_already_disabled = "Глобалното OOC вече е деактивирано.",
		ooc_local_logs_title = "Локално OOC съобщение",
		ooc_local_logs_details = "${consoleName} изпрати следното съобщение в локалния OOC чат: `${oocMessage}`.",
		ooc_global_logs_title = "Глобално OOC съобщение",
		ooc_global_logs_details = "${consoleName} изпрати следното съобщение в глобалния OOC чат: `${oocMessage}`.",
		bad_ooc_message = "Опитване да се публикува потенциално лошо съобщение в OOC чата: \"${oocMessage}\"",
		bad_ped_message = "Опит за създаване на може би лошо съобщение за пешеходец: \"${pedMessage}\"",
		bad_twitter_post = "Опит за създаване на може би лош пост в Twitter: \"${twitterPost}\"",
		bad_phone_message = "Опит за създаване на може би лошо съобщение в телефона: \"${message}\"",
		user_not_found = "Не успяхме да открием потребител със сървър идентификатор `${serverId}`.",
		player_already_muted = "${consoleName} вече е заглушен/а.",
		player_has_been_muted_no_reason = "${consoleName} сега е заглушен/а без посочена причина.",
		player_has_been_muted = "${consoleName} е заглушен с причина: `${reason}`.",
		player_not_muted = "${consoleName} не е заглушен.",
		player_has_been_unmuted = "${consoleName} е разблокиран.",
		ooc_clear_chat_title = "Чатът е изчистен",
		ooc_clear_chat_details = "${consoleName} изчисти чата за всички.",
		muted_player = "Заглушен Играч",
		muted_player_no_reason_details = "${consoleName} заглуши ${targetConsoleName} без посочена причина.",
		muted_player_details = "${consoleName} заглуши ${targetConsoleName} с причина `${muteReason}`.",
		player_muted = "Играч Безмълвен",
		player_muted_no_reason_details = "${targetConsoleName} беше безмълвен от ${consoleName} без указан причина.",
		player_muted_details = "${targetConsoleName} беше безмълвен от ${consoleName} с причина `${muteReason}`.",
		muted_self = "Самозаглушен",
		muted_self_no_reason_details = "${consoleName} се самозаглуши без указана причина.",
		muted_self_details = "${consoleName} се самозаглуши с причина `${muteReason}`.",
		unmuted_self = "Отглушен",
		unmuted_self_details = "${consoleName} се отглуши.",
		unmuted_player = "Разблокиран Играч",
		unmuted_player_details = "${consoleName} разблокира ${targetConsoleName}.",
		player_unmuted = "Играчът е разблокиран",
		player_unmuted_details = "${targetConsoleName} е разблокиран от ${consoleName}.",
		ooc_cancelled_same_as_last = "Вашето OOC съобщение беше отказано, тъй като опитахте да изпратите две идентични съобщения едно след друго.",
		use_measurement_metric = "Зададохте предпочитаната система за измерване на метрична.",
		use_measurement_imperial = "Зададохте предпочитаната система за измерване на имперски.",
		use_measurement_default = "Вече ще използвате стандартната система за мерки на местността.",
		already_using_metric_measurement = "Вече сте задали метричната система като предпочитана мерна система.",
		already_using_imperial_measurement = "Вече сте задали имперската система като предпочитана мерна система.",
		already_using_default_measurement = "Вече използвате стандартната система за мерки на местността.",
		no_copyright = "Няма авторско право",
		no_copyright_warning = "Здравейте! Вие ли сте стриймър или създател на съдържание, където DMCA и авторските искове са проблем? Ако е така, препоръчваме да включите командата `${noCopyrightCommand}`, така че да можем да се възползваме от спирането на някои защитени с авторско право материали, които се показват и възпроизвеждат в играта. Тази функционалност започва да работи веднага след включването й.",
		no_copyright_enabled = "Функцията 'Няма авторски права' е активирана.",
		no_copyright_disabled = "Функцията 'Няма авторски права' е деактивирана.",
		server_tps = "TPS на сървъра",
		server_tps_response = "${tps}",
		license_copied = "Лицензът бе копиран успешно в клипборда.",
		uptime = "Достъпно време: ${uptime}",

		picture_no_url = "Липсва URL адрес.",
		picture_invalid_url = "Невалиден URL адрес, трябва да започва с https://.",
		picture_no_description = "Липсва описание.",
		picture_failed = "Неуспешно създаване на изображение.",

		auto_run_already_set_to = "Автоматичното изпълнение вече е настроено на бутон ${controlId}.",
		auto_run_already_unset = "Автоматичното движение вече е изключено.",
		auto_run_set_to = "Автоматичното движение е зададено на контрол ${controlId}.",
		auto_run_unset = "Автоматичното движение е изключено.",

		walk_forwards_success = "Успешно превключихте ходенето напред за ${displayName}.",
		walk_forwards_failed = "Грешка при опит за превключване на ходенето напред за ${displayName}.",

		info_title = "Прикачете тази информация по време на съобщения за грешки",
		info_character = "**Идентификационен номер на героя**: *${id}*",
		info_job_data = "**Данни за заетостта**: *${job}*",
		info_job_data_none = "**Данни за заетостта**: *Няма*",
		info_licenses = "**Лицензи**: *${licenses}*",
		info_licenses_none = "**Лицензи**: *Няма*",
		info_timestamp = "*Времеви маркер - ${time}*"
	},

	money = {
		invalid_amount = "Невалидна сума.",
		something_went_wrong = "Нещо се обърка.",
		not_enough_cash = "Нямате достатъчно пари.",
		not_close_enough = "Не сте достатъчно близо до играча.",
		user_not_available = "Потребителят не е наличен.",

		givecash_success = "Дадохте ${displayName} $${amount}.",

		give_cash_title = "Трансфер на пари",
		give_cash_details = "${consoleName} прехвърли $${amount} на ${targetConsoleName}."
	},

	moonshine = {
		fill_chamber = "[${InteractionKey}] Напълни камера",
		collect_moonshine = "[${InteractionKey}] Събери месечина",
		fermenting = "Гроздовата маш пълни ${percentage}%",
		filling_chamber = "Напълване на камерата",

		not_enough_items = "Нямате достатъчно предмети, за да напълните камерата.",
		something_went_wrong = "Нещо се обърка.",
		failed_fill = "Неуспех при зареждане на камерата.",
		failed_empty = "Неуспех при събиране на лунен бръмбар.",

		press_to_sell_moonshine = "Натиснете ~INPUT_CONTEXT~, за да продадете лунен бръмбар.",
		local_not_interested = "Местният не изглежда заинтересован в момента.",
		selling_moonshine = "Продаване на лунен бръмбар.",

		sold_moonshine_logs_title = "Продаден мулшайн",
		sold_moonshine_logs_details = "${consoleName} продаде 1x мулшайн за $${reward}.",

		emptied_cooker_logs_title = "Изпразнено котлонче",
		emptied_cooker_logs_details = "${consoleName} изпразни котлон за мулшайн и получи ${amount} бутилки."
	},

	nos = {
		press_to_install_nitro_tank = "Натиснете ~INPUT_CONTEXT~, за да инсталирате резервоар с нитро.",
		installing_nitro_tank = "Инсталиране на резервоар с нитро.",
		press_to_remove_nitro_tank = "Натиснете ~INPUT_CONTEXT~, за да премахнете резервоара с нитро.",
		removing_nitro_tank = "Премахване на резервоара с нитро."
	},

	notepads = {
		take_notes = "Вземете бележки...",
		press_to_open = "Натиснете ~INPUT_DETONATE~, за да отворите тази бележник.",
		notepad_busy = "Някой друг използва тази бележник.",
		dropped_notepad_title = "Бележникът е изхвърлен",
		dropped_notepad_text_title_details = "${consoleName} изхвърли бележник с текст `${text}`.",
		updated_notepad_title = "Бележникът е обновен",
		updated_notepad_text_title_details = "${consoleName} обнови бележник с текст `${text}`.",
		picked_up_notepad_title = "Бележникът е взет",
		picked_up_notepad_text_title_details = "${consoleName} взе бележник с текст `${text}`.",
		invalid_notepad_id = "невалиден идентификатор за бележник.",
		failed_notepad_info = "Неуспешно получаване на информация за бележника.",
		notepad_info = "Бележникът ${notepadId} е изхвърлен от ${droppedBy}.",
		failed_notepad_wipe = "Неуспешно изтриване на бележниците.",
		invalid_notepad_wipe_radius = "Невалиден радиус (Минимум = 1, Максимум = 100).",
		notepad_wipe_success = "Успешно изтрити ${amount} бележника.",
		sign_invalid_slot = "Невалидна позиция в инвентара.",
		signed_notepad = "Успешно подписан бележник на позиция `${slotId}`.",
		failed_sign_notepad = "Неуспешно подписване на бележник.",
		sign_already_signed = "Не можете да подпишете този бележник.",

		notepad_info_missing_permissions = "Играчът опита да получи информация за бележниците без необходимите разрешения.",
		wipe_notepads_missing_permissions = "Играчът опита да изтрие бележниците без необходимите разрешения."
	},

	notices = {
		message_too_long = "Съобщението съдържа твърде много знаци или редове!",
		invalid_notice_id = "Невалиден идентификатор на бележка.",
		successfully_removed_notice = "Бележката беше успешно премахната.",
		failed_remove_notice = "Неуспешно премахване на бележката.",

		add_notice_missing_permissions = "Играчът се опита да добави бележка без необходимите разрешения.",
		remove_notice_missing_permissions = "Играчът опита да премахне обява без необходимите разрешения."
	},

	objects = {
		saved_found_objects = "Запазени са '${foundObjectsAmount}' намерени обекти с модел '${modelName}' във файл на сървъра.",
		no_nearby_objects_with_model_found = "Не бяха намерени близки обекти с модел '${modelName}'.",
		invalid_model_name = "Моделът '${modelName}' не е валиден модел.",
		missing_model_name = "Липсва име на модел."
	},

	orbitcam = {
		enabled_orbitcam = "Включена орбитална камера.",
		disabled_orbitcam = "Изключена орбитална камера.",
		orbitcam_failed = "Неуспешно активиране на орбиталната камера. Имате ли активиран noclip или нещо подобно?",

		orbitcam_logs_title = "Орбитална камера превключена",
		orbitcam_on_logs_details = "${consoleName} включи орбиталната си камера.",
		orbitcam_off_logs_details = "${consoleName} изключи орбиталната си камера.",

		orbitcam_no_permission = "Опитахте да превключите орбиталната си камера без необходимите разрешения."
	},

	overview = {
		header_title = "OP Framework - Обобщен UI",
		select_information = "Информация",
		select_activity_points = "Активни точки",
		select_staff_points = "Точки за персонал",
		select_moderation = "Модерация",
		select_handling_overrides = "Замествания на управлението",
		select_settings = "Настройки",
		about_title = "Относно обобщението на потребителския интерфейс",

		-- eh idk if putting entire chunks of html code is the way to go but for now it is xd
		about_text = [[
			This interface is meant to serve as an OOC interaction menu, information center and a data viewer for players.
			<br><br>
			For now, the only thing it's used to is to view the "job priority" status.
			<br><br>
			In the future, it is expected that much more features will be implemented such as:
			<ul class="list">
				<li>More in-depth viewing and management of whitelisted jobs for the people controlling them.</li>
				<li>Complex player statistics.</li>
				<li>An achievement system.</li>
				<li>Possibly a better report system for staff.</li>
				<li>More features for staff they can use to easier handle and control the server.</li>
				<li>...and much more, feel free to come with suggestions!</li>
			</ul>
			<br>
			Onto the future!
		]],

		about_activity_points_title = "Относно Точките за Активност",

		about_activity_points_text = [[
			You can gain activity points by being on-duty in jobs that offer these points. Currently, only the Medical/EMS and Law Enforcement/police jobs offer this.
			<br><br>
			Every minute, a certain amount of activity points is distributed in each job among the players who are on-duty. This means that if there are 4 players on-duty as police, each player will get 25% of the activity points that minute. The amount of activity points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The activity points reset for everyone at the beginning of each week. If you had a certain amount of activity points, you will be given priority in the queue for the entire next week.
				<br><br>
				Activity points required for queue priority at this time:
				<ul class="list">
				<li>400: Low Job Priority.</li>
				<li>700: Medium Job Priority.</li>
				<li>1000: High Job Priority.</li>
			</ul>
		]],

		activity_points_this_week = "Тази седмица",
		activity_points_last_week = "Миналата седмица",
		activity_points_current = "Точки за активност: <b>${activityPoints} + ${gainAmount}/минута</b>",
		activity_points_current_no_gain = "Точки за активност: <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>Вашата текуща цел за активност е 400 точки за Нисък Приоритет на Работата, с <b>${remainingPoints} оставащи</b>!",
		activity_points_goal_medium = "<br><br>Вашият текущ цел за активност е 700 точки за Среден приоритет на работа, с <b>${remainingPoints} останали</b>!",
		activity_points_goal_high = "<br><br>Вашият текущ цел за активност е 1000 точки за Висок приоритет на работа, с <b>${remainingPoints} останали</b>!",
		activity_points_goal_none = "<br><br>В момента нямате задачи за активност.",
		activity_points_not_enough = "Миналата седмица нямаше достатъчно точки за активност, за да се квалифицирате за приоритет в опашката.",
		activity_points_last_week_low = "Впечатляващо, имахте достатъчно точки за активност миналата седмица и се квалифицирахте за Нисък приоритет на работа в опашката!",
		activity_points_last_week_medium = "Чудесно, притежаваш достатъчно точки за активност от миналата седмица, за да се квалифицираш за Среден Приоритет на работната опашка!",
		activity_points_last_week_high = "Невероятно, притежаваш достатъчно точки за активност от миналата седмица, за да се квалифицираш за Висок Приоритет на работната опашка!",

		about_staff_points_title = "Относно точките на персонала",

		about_staff_points_text = [[
			Similar to the activity points for jobs, you will gain staff points when you're in the server with your staff availability toggled on.
			<br><br>
			Every minute, a certain amount of staff points is distributed to all active staff members. This means that if there are 4 staff members active, each person will get 25% of the staff points that minute. The amount of staff points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The staff points reset for everyone at the beginning of each week. Your eight most recent weeks will be available for display in a table below.
		]],

		staff_points_this_week = "Тази седмица",
		staff_points_current = "Точки на персонала: <b>${staffPoints} + ${gainAmount}/минута</b>",
		staff_points_current_no_gain = "Точки на персонала: <b>${staffPoints}</b>",
		staff_points_table = "Таблица за точки на служителите",
		this_week = "Тази седмица",
		one_week_ago = "1 седмица преди",
		two_weeks_ago = "2 седмици преди",
		three_weeks_ago = "3 седмици преди",
		four_weeks_ago = "4 седмици преди",
		five_weeks_ago = "5 седмици преди",
		six_weeks_ago = "6 седмици преди",
		seven_weeks_ago = "7 седмици преди",
		eight_weeks_ago = "8 седмици преди",
		previous_weeks_average = "Средно от предходните седмици",

		about_detection_areas_title = "Зони за откриване",
		about_detection_areas_text = "Зоните за откриване могат да бъдат полезен инструмент за служителите, когато се опитват да идентифицират измамник, който пуска нежелани превозни средства и/или педи. За да създадете зона за откриване, използвайте `/detection_area_add`. Веднъж като създадете зона, тя ще се появи тук. Ще бъдат записани само последните 100 обекта във всяка зона.",
		detection_area_title = "Зона за откриване #${detectionAreaId}",

		about_sound_effects_title = "Звукови ефекти",
		about_sound_effects_text = "Тези полета ви позволяват да замените някои звукови ефекти. Те изискват връзка към .oog файл, за да функционират правилно. Връзката трябва да бъде https:// URL и не http://. Лесен начин за качване на файл е да го качите в Discord, след което да копирате връзката му и да я поставите в полетата тук.",
		radio_mic_click_on = "Кликане на радио микрофон (включване)",
		radio_mic_click_off = "Кликане на радио микрофон (изключване)",
		lean_cam_mode = "Режим на камерата при накланяне",
		lean_option_1 = "Задръжте, за да превключите",
		lean_option_2 = "Натиснете, за да превключите",
		lean_option_3 = "Изключено",
		clipboard_animation = "Анимация на таблото",
		sound_effect_placeholder = "URL към .oog файл...",
		sound_effect_save = "Запази",
		sound_effect_reset = "Нулиране",

		disable_tablet_animation = "Изключване на анимацията на таблета",
		staff_notifications_reports = "Известия за доклади",
		staff_notifications_staff_chat = "Известия за персонални чатове",
		staff_notifications_general = "Общи известия",
		staff_notifications_anti_cheat = "Известия за Anti-Cheat",

		december_1 = "1 декември",
		december_2 = "2 декември",
		december_3 = "3 декември",
		december_4 = "4 декември",
		december_5 = "5 декември",
		december_6 = "6 декември",
		december_7 = "7 декември",
		december_8 = "8 декември",
		december_9 = "9 декември",
		december_10 = "10 декември",
		december_11 = "11 декември",
		december_12 = "12 декември",
		december_13 = "13 декември",
		december_14 = "14 декември",
		december_15 = "15-ти декември",
		december_16 = "16-ти декември",
		december_17 = "17-ти декември",
		december_18 = "18-ти декември",
		december_19 = "19-ти декември",
		december_20 = "20-ти декември",
		december_21 = "21-ви декември",
		december_22 = "22-ри декември",
		december_23 = "23-ти декември",
		december_24 = "24-ти декември",
		hatch_closed = "ЗАТВОРЕНО",
		hatch_open = "ОТВОРЕНО",
		hatch_claim = "ИЗИСКВАНЕ",
		hatch_opened = "ИЗИСКАНО",
		hatch_waiting = "очакване",

		about_advent_calendar_title = "Относно Календара на Адвента",

		-- NOTE: this is the most aids shit ever, please ignore the HTML stuff in here
		about_advent_calendar_text = [[
			The advent calendar is a holiday feature meant to bring some more joy to the players of ${communityName} throughout the month of December!
			<br><br>
			Every day, another hatch will become available, containing money, an item, a vehicle or something else. All hatches belonging to a previous date will be available. Once a hatch has been opened, you must claim it in order to receive it. Opening and collecting will become impossible after the 25th of December.
			<br><br>
			Next hatch unlocks in ${time}.
			<br><br>
			Opening a hatch on the day it was unlocked, gives you a bonus point. If you obtain enough bonus points, you will receive a special gift on the 24th of December. (The bonus gift must be claimed before the 26th.)
			<br><br>
			<div class="bonusPoints">
				<div>Bonus Points: ${bonusPoints}/22</div>
				<div>
					<button class="button" style="${buttonStyle}" id="claimBonusButton">${buttonText}</button>
				</div>
			</div>
		]],

		unlocks_in_days_hours_minutes_seconds = "${days} дни, ${hours} часа, ${minutes} минути и ${seconds} секунди",
		unlocks_in_hours_minutes_seconds = "${hours} часа, ${minutes} минути и ${seconds} секунди",
		unlocks_in_minutes_seconds = "${minutes} минути и ${seconds} секунди",
		unlocks_in_seconds = "${seconds} секунди",
		unlocks_in_an_unknown_amount_of_time = "неизвестно време",

		unopened_hatch = "Незапечатана капачка",
		won_money = "$${amount} Кеш",
		won_vehicle = "Превозно средство (Коледно специално)",
		won_queue_priority = "Седмица с приоритет в опашката!",

		about_handling_overrides_title = "Заместяне на обработката",
		about_handling_overrides_text = "Създавайте временни заместяния на обработката за класовете за обработка динамично. Заместянията ще продължат, докато не бъдат премахнати или сървърът не се рестартира. Заместянията ще бъдат зададени за всички играчи в сървъра.",
		add_override = "Добави заместяне",
		add = "Добави",
		model_name = "Име на модела...",
		field_name = "Поле...",
		value = "Стойност...",
		current_overrides = "Текущи заместяния",

		about_explosion_events_title = "Избухване събития",
		about_explosion_events_about = "Тук се записват информацията за последните 500 събития с експлозии. Това трябва да помогне на екипа да открие модъри.",
		about_unusual_explosions = "Необичайни експлозии, които не се случват нормално.",
		explosions_by_type_title = "Експлозии по тип",
		players_causing_explosions_title = "Играчи, причиняващи експлозии",
		show_common_events_off = "Показване на общите събития: ИЗКЛ.",
		show_common_events_on = "Показване на общите събития: ВКЛ.",

		explosion_events_type = "Тип",
		explosion_events_amount = "Брой",
		explosion_events_nearby = "В близост",
		explosion_events_distance = "Разстояние",
		explosion_events_player = "Име на играча",

		illegal_weapons_title = "Изчезнали оръжия",
		illegal_weapons_about = "Тук се записват последните 500 случая на открито изчезнали оръжия от системата. Когато някой притежава изчезнало оръжие, това не означава задължително, че използва модове, тъй като моддери могат да спавнат оръжия в ръцете на други играчи и затова и други играчи ще се появят тук.",
		illegal_weapons_by_type = "Оръжия по вид",
		players_with_spawned_weapons = "Играчи със спаунато оръжие",

		ped_models_title = "Модели на играчите",
		ped_models_about = "Тук са изброени всички играчи, които не използват подразбиращ се модел на герой. Това ще помогне при откриването на играчи, които са тук само да майтапят или потенциални моддъри.",
		local_ped_models_title = "Локални модели на играчите",
		animal_ped_models_title = "Модели на животни",

		bad_screen_word_title = "Лоши думи на екрана",
		bad_screen_word_about = "Тук са изброени всички играчи, при които са открити определени думи на техния екран. Това ще помогне при откриването на потенциални моддъри.",

		damage_modifier_name = "Име на играча",
		damage_modifier_expected = "Очаквано",
		damage_modifier_actual = "Фактическо",

		bad_words_name = "Име на играча",
		bad_words_words = "Провокационни думи",

		freecam_detections_name = "Име на играча",
		freecam_detections_distance = "Максимално разстояние",

		model = "Модел",
		label = "Етикет",
		amount = "Количество",
		console_name = "Играч",
		expected = "Очаквано",
		actual = "Фактическо",
		words = "Думи",
		distance = "Разстояние",
		weapon = "Оръжие",
		type = "Тип",
		nearby = "Разположението",

		no_entries = "Няма записи"
	},

	oxy = {
		press_to_talk_to_jc = "Натиснете ~g~${InteractionKey} ~w~, за да говорите с JC.",
		tutorial_will_play_next_time = "Урокът за изкупуването на окси ще се пусне следващия път, когато стартирате задание.",
		prescription_pick_up = "Изпълнение на рецептурата: ${label}",

		pick_up_the_prescriptions = "Вземете фалшивите рецепти, отбелязани на картата.",
		redeem_them_at_the_city = "След това трябва да ги обмените в града.",
		jc_will_be_expecting_some_back = "~y~JC ~w~очаква да му върнете 6 от оксито.",
		you_have_limited_time = "Имате ограничено време. Трябва да се върнете с таблетките до ${time}.",
		press_to_hide_unimportant_blips_in_map = "Натиснете ~INPUT_SPRINT~, за да скриете несъществени маркери на картата, докато сте в менюто за пауза.",
		consider_getting_a_smart_watch = "Размислете да си купите Smart Watch, за да винаги можете да виждате GPS-а си.",

		press_to_pick_up_prescription = "Натиснете ~g~${InteractionKey} ~w~, за да вземете рецептата.",

		redeem_oxy_prescription = "Възстановяване на рецептата за Окси",
		press_to_redeem_prescription = "Натиснете ~g~${InteractionKey} ~w~, за да възстановите рецептата.",

		check_your_map_to_redeem_prescriptions = "Браво! Проверете картата, за да възстановите рецептите. Имате  ${time} оставащо.",
		go_to_jc_to_finish_run = "Браво! Отидете обратно при ~y~JC ~w~за да завършите проход. Остават ви ${time}.",

		oxy_run_started_title = "Започва Проходът с Oxy",
		oxy_run_started_details = "${consoleName} започна проход с Oxy.",

		oxy_run_ended_title = "Проходът с Oxy Завърши",
		oxy_run_ended_details = "${consoleName} завърши прохода с Oxy след ${time} и изкара $${payout}.",

		oxy_run_failed_title = "Проходът с Oxy Пропадна",
		oxy_run_failed_details = "${consoleName} пропадна в прохода с Oxy.",

		you_failed_the_run = "Пропуснахте прохода. ~y~JC ~w~няма да бъде доволен от вас за няколко време.",

		time_left = "Остават ви ${time}.",

		accidental_call_1_part_1 = "Йоо, какво ми говориш, приятел?",
		accidental_call_1_part_2 = "Добре, basically току-що правих едно нещо; ще настроим една малка работа, понеже има един човек, който разнася щурмова и този момче.",
		accidental_call_1_part_3 = "Да, аз взех номера на колата му, всичко, брат.",
		accidental_call_1_part_4 = "И basically, когато той излезе от колата, за да достави щурмовата, трябва да скочиш и да я вземеш за мен, брат.",
		accidental_call_1_part_5 = "Не, няма представа, че сме ние, брат, изпратих го в центъра, така че вероятно ще мисли, че е някаква банда или нещо такова, брат.",
		accidental_call_1_part_6 = "Вярвай ми, лесно е.",
		accidental_call_1_part_7 = "Ооо, брато, какво казваш?! Не теб, другия! Изпратил съм двама хора! Не теб обаче!",
		accidental_call_1_part_8 = "Ти си споко, брато! Грешното момче, брато... но беше някакво... различно момче, брато. Не ти обаче.",
		accidental_call_1_part_9 = "Не беше ти, брато. Разбираш ли? Беше не ти, обаче!",
		accidental_call_1_part_10 = "Ама внимавай, брато, че ако си забавляваш, със сигурност ще взема колата ти, брато.",
		accidental_call_1_part_11 = "Любов.",

		accidental_call_2_part_1 = "Йоу, какво казваш, кукло?",
		accidental_call_2_part_2 = "Да не лъжа, просто искам да ти намажа стъпалата със синап и да го излижа като хотдог и всичко такова.",
		accidental_call_2_part_3 = "Ей, кукло.",
		accidental_call_2_part_4 = "Изчакай...",
		accidental_call_2_part_5 = "О, чертовски съжалявам.",

		accidental_call_3_part_1 = "Йоу, какво казваш, майката?",
		accidental_call_3_part_2 = "Да, да, току-що завърших онази нова хип-хоп песен, която искаше, майката.",
		accidental_call_3_part_3 = "Да, става малко така..",
		accidental_call_3_part_4 = "Искам да те обичам, бебе, искам да те обичам, искам да те обичам, искам да те целуна на краката, аз искам-",
		accidental_call_3_part_5 = "Уууу, уууу.. значи, знаеш.. това не беше аз, обаче..",
		accidental_call_3_part_6 = "Добре, грешен номер, извинявай брат, извинявай..",

		accidental_call_4_part_1 = "Йоу, брат, кога ще дойдеш при мене и да играеш с мене на \"Моята Малка Пони\", братле?",
		accidental_call_4_part_2 = "Вече е много време и това, а аз имам нужда, брат ще знаеш че аз харесвам онзи искрист и-",
		accidental_call_4_part_3 = "Окей.. определено грешен номер, брат, извинявам се за това, но не чуваш нищо.",
		accidental_call_4_part_4 = "Защото ако си чул, си мъртъв, разбираш ли какво ти казвам?",

		accidental_call_5_part_1 = "Мамо, малко съм объркан в момента..",
		accidental_call_5_part_2 = "Да, някои момчета са пред вратата ми и.. не знам какво да правя мамо.",
		accidental_call_5_part_3 = "Малко се страхувам, че съм в дълбока вода, разбираш ли..",
		accidental_call_5_part_4 = "Мамо.. о, о.. ой, брат! Какво казваш?",
		accidental_call_5_part_5 = "Да, не, харесват ли ти уменията ми за актьор и това, да?",
		accidental_call_5_part_6 = "Вярвай ми обаче, да никога-никога-никога не записваш този разговор отново, братко, иначе ще умреш.",
		accidental_call_5_part_7 = "Знаеш ли какво казвам? Ще дойда при теб и ще те разкъсам по-различен начин, братко.",
		accidental_call_5_part_8 = "Разбираш ли, братко?",
		accidental_call_5_part_9 = "Вярвай ми на това, на теб да ти пък!",

		accidental_call_6_part_1 = "Ей, ей, малкия, иди тук, добре.",
		accidental_call_6_part_2 = "Тате ти е на телефона, братле, тате ти е на телефона.",
		accidental_call_6_part_3 = "Зная че не си го виждал, братле, вземи това, вземи това, вземи това, братле, вземи това, вземи това.",
		accidental_call_6_part_4 = "Здравей? Тате ли е това?",
		accidental_call_6_part_5 = "Тате?!",
		accidental_call_6_part_6 = ".. изчакай не, това не е тате, това е някой друг! Не! Защо-",
		accidental_call_6_part_7 = "Глупак си, не мога да повярвам че попадна в това, братле!",
		accidental_call_6_part_8 = "Оо Боже ми..",

		maxed_out_runs_part_1 = "Брат, знам че обичаш хляб, но трябва да оставиш и на другите момчета да получат нещо.",
		maxed_out_runs_part_2 = "Спри да правиш това, брат.",
		maxed_out_runs_part_3 = "Отиди да поговориш с някакви проблемници в Треш HQ или нещо такова, брат.",

		mission_completed_1_part_1 = "Йоу, какво става брат, ай да не лъжа, това беше супер работа, знаех че мога да разчитам на теб брат.",
		mission_completed_1_part_2 = "Ай, ако някога имаш нужда от още пари, знаеш къде да ме намериш.",
		mission_completed_1_part_3 = "Скоро ще съм натрупал, не се притеснявай за това.",

		mission_completed_2_part_1 = "Йоу, какво казваш брат?",
		mission_completed_2_part_2 = "Не мога да лъжа, тази задача беше добра наистина.",
		mission_completed_2_part_3 = "Да, вярвай ми, клиентите те обожават в момента и аз също, защото знаеш ли защо?",
		mission_completed_2_part_4 = "Ти ми донесе пари; Ти си си взе някакви пари.",
		mission_completed_2_part_5 = "Вземи ги, но се върни по-късно, защото пак се нуждая от теб, приятелю.",

		mission_completed_3_part_1 = "Йоу, какво казваш брат?",
		mission_completed_3_part_2 = "Ай, не мога да лъжа, това там... Уникално брат.",
		mission_completed_3_part_3 = "Не можешеше да го направиш по-добре, братко.",
		mission_completed_3_part_4 = "Последният човек се обърка, така че съм щастлив, че имаш теб.",
		mission_completed_3_part_5 = "Върни се по-късно, братко, вярвай ми, имам още нещо за теб.",

		mission_completed_4_part_1 = "Йооо, умееш да продаваш, нали?",
		mission_completed_4_part_2 = "Може да трябва да станеш бизнесмен тук, братко, вярвай ми.",
		mission_completed_4_part_3 = "Това, по което го продаваше на тия хора, беше лудница, брат.",
		mission_completed_4_part_4 = "Да, да, бе, е, благодаря за това.",
		mission_completed_4_part_5 = "Обаче те ценя по различен начин, затова се върни по-късно, братле, ще ти доставя хапчетата.",
		mission_completed_4_part_6 = "Имам още, о да, вярвай ми, братле.",

		mission_completed_5_part_1 = "Ъй, какво правиш тук, братле?",
		mission_completed_5_part_2 = "Ох, тои си! Що казваш, братле?",
		mission_completed_5_part_3 = "Да, ай, обожавам... ай, обичам това, братле.",
		mission_completed_5_part_4 = "'аз, защото ме разкриля с ГОЛЯМО добро! Сега имам страшно много пари, ще си купя нов як EDM автомобил, знаеш ли какво казвам, братле?",
		mission_completed_5_part_5 = "Динка Блиста, всичко това, да, е, ама върни се по-късно, наистина.",
		mission_completed_5_part_6 = "'щото имам още някакви работи за теб братле.",

		mission_completed_6_part_1 = "Йоу, трябваше да видиш лицето на Гогиншмиел по-рано брат.",
		mission_completed_6_part_2 = "Изглеждаше като дебил, не лъжа.",
		mission_completed_6_part_3 = "Не знаеше, че е зад теб?!",
		mission_completed_6_part_4 = "Но беше, благодаря, братле.",
		mission_completed_6_part_5 = "Не лъжа, ти си твърде добър в това, брат.",
		mission_completed_6_part_6 = "Върни се по-късно, имам нещо още за теб, брат.",

		mission_completed_7_part_1 = "Йо, какво казваш, брат?",
		mission_completed_7_part_2 = "Ай, не мога да лъжа, тая женска там задуши! Брат, прекрасна!",
		mission_completed_7_part_3 = "Не можеше да стане по-добре, брат.",
		mission_completed_7_part_4 = "Последният човек пращашаше, така че съм радостен, че имам теб, брат.",
		mission_completed_7_part_5 = "Върни се по-късно, брат, вярвай ми, имам още работи за теб, брат.",

		mission_completed_8_part_1 = "Ай, това е шефът, за когото говорех, брат. Да, вярвай ми, той е толкова брутален, брат.",
		mission_completed_8_part_2 = "Този човек е твърде болен.",
		mission_completed_8_part_3 = "Той винаги доставя навреме.",
		mission_completed_8_part_4 = "Клиентите обичат този човек.",
		mission_completed_8_part_5 = "Вярвай ми, той се изкачва към върха, но все пак няма да ме победиш.",
		mission_completed_8_part_6 = "Защото трябва да си наглавник, разбираш ли?",
		mission_completed_8_part_7 = "Обаче, приятелю, върни се по-късно, ще ти донеса още няколко хапчета.",

		mission_failed_1_part_1 = "Да, приятелю, не мога да лъжа, клиентът ми се обади и каза, че не си го доставил на моя човек.",
		mission_failed_1_part_2 = "Какво става, брат?",
		mission_failed_1_part_3 = "Направи голяма грешка, брат.",
		mission_failed_1_part_4 = "Изчезни от пред очите ми, братишка.",
		mission_failed_1_part_5 = "Ако ТЕБ отново те видя, това е краят за теб.",

		mission_failed_2_part_1 = "Да, в момента имаме голяма проблем.",
		mission_failed_2_part_2 = "Не мога да лъжа, закъсня ти малко, какво става обаче?",
		mission_failed_2_part_3 = "Да, брате, разбира се, клиентите ми се ядосаха!",
		mission_failed_2_part_4 = "Да не се опитваш и отново да вземаш нещо от мен, брат.",
		mission_failed_2_part_5 = "Безобразник, свърших с теб, брато.",

		mission_failed_3_part_1 = "Да, да, да, да, ей, ей..",
		mission_failed_3_part_2 = "Не мога да лъжа обаче.",
		mission_failed_3_part_3 = "Ти си първият мъж, на когото ще кажа това.",
		mission_failed_3_part_4 = "Ти си кормилен.",
		mission_failed_3_part_5 = "Знаеш ли това? Да? Ти си кормилен.",
		mission_failed_3_part_6 = "Знаеш ли защо?",
		mission_failed_3_part_7 = "'защото не достави моята стока, брато.",
		mission_failed_3_part_8 = "Счупи се, брато. Не искам да те виждам отново на мястото ми.",
		mission_failed_3_part_9 = "Наистина те издирват, кълна се в бога, брат.",
		mission_failed_3_part_10 = "Има ги въоръжени, има ги с резачка.",
		mission_failed_3_part_11 = "Събитие за теб, брат.",
		mission_failed_3_part_12 = "Да, така е... отпадни, брат.",

		mission_failed_4_part_1 = "Йоу, как си, брат?",
		mission_failed_4_part_2 = "Ами, само бърза работа сега.",
		mission_failed_4_part_3 = "Ако пак се приближиш до мен, си мъртъв.",
		mission_failed_4_part_4 = "Да, знаеш ли защо?",
		mission_failed_4_part_5 = "'защото си нямаш умления лиган, винаги триш моята работа, лиганче.",
		mission_failed_4_part_6 = "Какво става с това?",
		mission_failed_4_part_7 = "Клиентите са ядосани, идват при мен и ми викат, че аз съм лиганче, лиган.",
		mission_failed_4_part_8 = "Не мога да повярвам, че дойдох при теб.",
		mission_failed_4_part_9 = "Мислех, че ти си моят човек или нещо такова, лиган",
		mission_failed_4_part_10 = "Но не, просто си едно лиганче, затова вържи се, лиганче.",
		mission_failed_4_part_11 = "Изчезни от очите ми, лиган.",

		mission_failed_5_part_1 = "Да, не се справи много добре с последната задача..",
		mission_failed_5_part_2 = "Не мога да лъжа, просто си объркал много.",
		mission_failed_5_part_3 = "Така че никога не идвай в моя район!",
		mission_failed_5_part_4 = "'защото, кажа ти, ще те изцепя!",

		mission_failed_6_part_1 = "Хей, какво мислиш, брат?",
		mission_failed_6_part_2 = "Айде, ако пак дойдеш при мен брат.",
		mission_failed_6_part_3 = "Ще използвам рембо и ще го излекува върху главата ти!",
		mission_failed_6_part_4 = "Клето лице! Просто ме съсипа брат!",
		mission_failed_6_part_5 = "Клиентите ме звънят и ми казват колко са ядосани в момента.",
		mission_failed_6_part_6 = "Вината е напълно твоя, вината е напълно твоя..",

		mission_failed_7_part_1 = "Не идвай на мястото ми, бе брат, иди на фига.",

		mission_failed_8_part_1 = "Еей, бе брат, отърви се от мен, докато не разчистиш моите пакети, бе брат.",

		mission_failed_9_part_1 = "Еей, бе брат, отърви се от мен, докато не разчистиш моя пакет.",
		mission_failed_9_part_2 = "Не, брат, никога се не връщай при мен, докато не се свърши работата ми, бе брат.",
		mission_failed_9_part_3 = "Направи голямо счупване, махай се оттук, бе брат.",

		mission_failed_10_part_1 = "Братле, най-добре да се молиш да се върнеш у дома тази нощ, братле.",
		mission_failed_10_part_2 = "'щото аз ида за теб, братле.",
		mission_failed_10_part_3 = "Братле, да не ми качиш така пак, кълна се в Бога, братле.",

		no_pills_1_part_1 = "Йо, как е, братле? В общи линии... Една много неприятна ситуация.",
		no_pills_1_part_2 = "Щото, засега нямам нищо.",
		no_pills_1_part_3 = "Та, в общи линии, каквото ще кажа...",
		no_pills_1_part_4 = "Махай се, братле, върни се друг път.",

		no_pills_2_part_1 = "Да, кво правиш, братле? Ама, общите виждаш супер мерзаво...",
		no_pills_2_part_2 = "'защото в момента нямам нищо. Нямам никакви хапчета, брат!",
		no_pills_2_part_3 = "Да, те - те забиха! Нямам нищо, брате!",
		no_pills_2_part_4 = "Ай, обадих се на тези хора, казах .. Йо, wag1, къде са хапчетата, брат? ..",
		no_pills_2_part_5 = "Моят човек казва, че те дори не са тук, брат.",
		no_pills_2_part_6 = "Тези екипи пътуват за някакво нещо от Либърти Сити или така нещо, брате..",
		no_pills_2_part_7 = "Твърде дълго си вземат, брате.",
		no_pills_2_part_8 = "Но вярвай ми, когато имам повече, определено ще те завържа, брат.",

		no_pills_3_part_1 = "Йо, какво казваш, моят приятел?",
		no_pills_3_part_2 = "В момента нямаме пили братко, защо не си тръгваш?",
		no_pills_3_part_3 = "Преди да се навъртам, разбираш ли?",

		no_pills_4_part_1 = "Йооо, братко! Какво става?",
		no_pills_4_part_2 = "...братко, седи на бунт, тръгвай бе братко.",
		no_pills_4_part_3 = "Махай се оттук братко, готов си.",

		no_pills_5_part_1 = "Йооо, брате!",
		no_pills_5_part_2 = "Какво мислиш братко? Ей, да не кривиш, ние нямаме нищо в момента.",
		no_pills_5_part_3 = "За момента е доста трудно за теб, приятел.",
		no_pills_5_part_4 = "Но основно, върни се след малко и ще се погрижа за теб.",
		no_pills_5_part_5 = "Обичам те, брат.",

		no_pills_6_part_1 = "Брат.. Казах на двама хора преди теб, че нямам нищо в момента.",
		no_pills_6_part_2 = "Така че защо не слушате малките си момчета и да отидете да си го свършите колективно, братано?",
		no_pills_6_part_3 = "Знаеш ли какво казвам? Всичко свърши за теб, братано, зад тези улици, нахуй те, братано.",

		no_pills_7_part_1 = "Да, аз съм ГОЛЯМАТА фигура тук, знаеш ли какво казвам?",
		no_pills_7_part_2 = "Но големият такъв няма големи хапчета в момента.. тъй че са мушалничето ти трябва да си тръгне.",
		no_pills_7_part_3 = "Ти разбираш ли?",

		no_pills_8_part_1 = "Йо, йо, какво казваш?",
		no_pills_8_part_2 = "Ай, ай, ай, трябва да се скрия, брат.",
		no_pills_8_part_3 = "Да, ай, не мога да лъжа.. преди минаха някакви федерали.",
		no_pills_8_part_4 = "Нямаме хапчета в момента. Разбираш ли.",
		no_pills_8_part_5 = "Не мога в момента. Завърни се по-късно, когато се стихнат нещата, брат.",

		no_pills_9_part_1 = "Да, аз не мога да лъжа, някои проклетници по-рано се скочиха на мен и ми взеха нещата брат.",
		no_pills_9_part_2 = "Но без грижа, сега аз ги наблюдавам брат.",
		no_pills_9_part_3 = "Така че, когато вземем пормента, определено се върни и ще те помогна, аз го имам брат.",

		no_pills_10_part_1 = "Йоу, какво казваш брат?",
		no_pills_10_part_2 = "Да, в момента има някои груби типове на север или нещо брат.",
		no_pills_10_part_3 = "Те обраха онази нещо, така че ние ще отидем там заедно, ще вземем обратно и ще те помогна брат.",
		no_pills_10_part_4 = "Обичам го за това.",

		no_pills_11_part_1 = "Йоу, какво казваш? Да, в момента няма нищо брат.. няма нищо в момента.",
		no_pills_11_part_2 = "Малко е трудно за теб в момента. Няма нищо в момента.",
		no_pills_11_part_3 = "Но в основата, ще ти кажа това, което казвам на всеки..",
		no_pills_11_part_4 = "Защо не си тръгнеш, брат.. и се върнеш по-късно. Обичам.",

		no_pills_12_part_1 = "Не, нямам нищо върху мен в момента, брат.",
		no_pills_12_part_2 = "Върни се по-късно, приятелю, върни се по-късно..",

		no_pills_13_part_1 = "Брат! Заливай си го, нямам нищо брат!",
		no_pills_13_part_2 = "Нямам нищо брат! Ай, мълчи брат!",

		no_pills_14_part_1 = "Гледай брат, казах ти, нямам пили сега.",
		no_pills_14_part_2 = "Така че, ако пробваш да те чиня, иди нахуй още веднъж, моля ти се брат.",

		no_pills_15_part_1 = "Не, слушай ме брат.. вече ме раздразни.",
		no_pills_15_part_2 = "Да ти кажа честно.",
		no_pills_15_part_3 = "Така че ще те чина, мършавче, ако не се махнеш брат.",

		not_leaving_1_muffled_part_1 = "Добре, защо все още е тук, брат?",
		not_leaving_1_muffled_part_2 = "Той ли е сив?",
		not_leaving_1_muffled_part_3 = "Ай, чекни го дали е сив, брат, чекни го дали е сив.",

		not_leaving_2_part_1 = "Човек, махай се оттук, брат.",

		not_leaving_3_part_1 = "Брат, можеш ли да не си тук в момента..",
		not_leaving_3_part_2 = "Опитвам се да нещо направя. Разбираш ли ме..",
		not_leaving_3_part_3 = "Опитвам се да си поцелуна бида, брат, а ти тук ме гледаш като някаква питка, брат.",
		not_leaving_3_part_4 = "Минавай по дяволите, братче.",

		not_leaving_4_part_1 = "Ох, МОЛЯ те, братче, махай се оттук, братче.",
		not_leaving_4_part_2 = "Ах, кълна се в Бога, братче.",

		not_leaving_5_part_1 = "Братче, сега го прекаляваш, не мога да лъжа..",
		not_leaving_5_part_2 = "Направо ще дойда там и ще те направя мокър, приятелю.",
		not_leaving_5_part_3 = "Най-добре трябва да замръзнеш и да махаш братче.",

		not_leaving_6_part_1 = "Братче.. Аз съм големият бос тук, братче.",
		not_leaving_6_part_2 = "Престани да се представяш, че си щастния и махай се и го свършвай работата ми, братче.",

		not_leaving_7_part_1 = "Ой, кълна се в Господа, ако го правиш отново, ще извикам момчетата от задънчицата, брат.",
		not_leaving_7_part_2 = "Те ще ти направят нещо различно, брат.",

		not_leaving_8_muffled_part_1 = "Добре, измокри го, брат, измокри го.. той отнема твърде дълго време.",

		not_leaving_9_part_1 = "Брат, не ме принуждавай да извадя голямото чинга, брат.",
		not_leaving_9_part_2 = "Ще ти моля да спреш да стъпваш на МОЯ блок, брат.",
		not_leaving_9_part_3 = "По-добре отстъпи и свърши своята работа сега, ти се забавяш, брат.",
		not_leaving_9_part_4 = "Ти си в МОЯТА къща и МОЯТА банда, мислиш си, че си някакъв голям тип бро.",
		not_leaving_9_part_5 = "Изчакай бро, ще те ЗАБИЯ бро.",

		not_leaving_10_muffled_part_1 = "Да, този човек се качва като че е собственик на моя блок или нещо такова, бро.",

		not_leaving_11_part_1 = "Ей, махай се, брат...",
		not_leaving_11_part_2 = "Готов си тук, бро.",

		not_leaving_12_muffled_part_1 = "Ей, това е критична ситуация за този човек.",
		not_leaving_12_muffled_part_2 = "Той отнема твърде много време, бро, ей отърви се, бро!",
		not_leaving_12_muffled_part_3 = "Виждам те в момента, човек, махай се далече, брат!",

		not_leaving_13_muffled_part_1 = "Брат! Този човек отнема прекалено много време за нещо..",
		not_leaving_13_muffled_part_2 = "Той е идиот.. определено е идиот или нещо такова, брат..",
		not_leaving_13_muffled_part_3 = "Той определено е идиот.",

		start_1_part_1 = "Йо брат, братъ.. ай, ела тук, ела тук..",
		start_1_part_2 = "Йо, ай ай.. Искаш ли да се занимаваме още с окси, брат?",
		start_1_part_3 = "Ай, браво за това, браво за това..",
		start_1_part_4 = "Ай, знаеш ли какво трябва да направиш, наред ли си?",
		start_1_part_5 = "Ай, по същество ще ти изпратя пинг веднага.",
		start_1_part_6 = "Обич братле.",

		start_2_part_1 = "Ай, какво става братче! Дойди тук бързо брат!",
		start_2_part_2 = "Да, да.. Отново ли искаш да се занимаваш с окси, братче?",
		start_2_part_3 = "Благодаря за това, братче.",
		start_2_part_4 = "Всичко наред ли е, знаеш какво трябва да правиш, излизаш супер ъпдейтнат, братче.",

		start_3_part_1 = "Ай.. ай, брател, дойди до тук брател, дойди до тук брател.",
		start_3_part_2 = "Да се занимаваме отново с окси, брател?",
		start_3_part_3 = "На ли е? Ой, елате.. елате.. вие обаче не сте федерален агент, нали?",
		start_3_part_4 = "Добре.. добре.. Любов обаче,е, ей, знаеш какво трябва да направиш, ще ти изпратя пинга и всичко, брат.",

		start_4_part_1 = "Ей! Ти ли си оня мраз от последно време?!",
		start_4_part_2 = "Ой, елате тук, брат! Ти изпълни страхотна работа в последно време и не мога да лъжа за това..",
		start_4_part_3 = "И така, да.. направи пак това, брат, знаеш какво да правиш, ще ти изпратя пинга, момчето ми.",
		start_4_part_4 = "Благодаря за това.",

		start_5_part_1 = "Ей, дойди тук, малък пичага на брат!",
		start_5_part_2 = "Да, да, да... Знам - познавам те брат...",
		start_5_part_3 = "Не ми казвай, не ме интересува кой си брат... но знам кой си.",
		start_5_part_4 = "Просто искам да го направиш пак, брат. Искам отново да превозваш окси пили.",
		start_5_part_5 = "Знаеш, тези неща от миналото брат? Знаеш как се прави?",
		start_5_part_6 = "Ще ти изпратя всичко на телефона, брат. Благодарен съм ти за това.",

		start_6_part_1 = "Ей, тоя ли е пичът от там? Какво мислиш, брат!",
		start_6_part_2 = "Здрасти, как си и всичко такова, братко.",
		start_6_part_3 = "И така, наистина имам нужда от теб отново за една малка мисия, така..",
		start_6_part_4 = "Да, знаеш.. знаеш какво имам предвид, знаеш какво имам предвид..",
		start_6_part_5 = "Това с кислорода, да, да, разбира се, че го знаеш. И така, пращам ти адреса на телефона.",
		start_6_part_6 = "Ти върши каквото трябва, братче, благодаря за това.",

		start_7_part_1 = "Да, да, да, да, този идиот от по-рано, братко!",
		start_7_part_2 = "Помня този човек! Да, ай, ти си забавен човек, брато, харесвам те, харесвам те..",
		start_7_part_3 = "Ой, трябва ми да ми донесеш отново оксито, не мога да лъжа. Така че побързай, голям мъж.",
		start_7_part_4 = "Ще ти изпратя пинга, ще ти изпратя детайлите.. Да, да..",
		start_7_part_5 = "А помни обаче..",
		start_7_part_6 = "Половината от това е мое, така че не ми ги кради или заклевам се в Алах, че ще те пронизам, братан, окей.",

		start_8_look_to_sides_part_1 = "Ай, братан, къде да нещо Гогиншмийл минава точно там, брато..",
		start_8_look_to_sides_part_2 = "Ами иди тук, иди тук, иди тук, брате, спри да се опитваш да вкарваш брат.",
		start_8_look_to_sides_part_3 = "Йо, йо.. каквото се нуждая от теб в момента, е да отидеш и вземеш тези хапчета за мен.",
		start_8_look_to_sides_part_4 = "Трябва да ми доставиш тези хапчета, добре господарю.",
		start_8_look_to_sides_part_5 = "Ще ти изпратя информацията за мястото от което да ги вземеш, знаеш как се прави сега.",
		start_8_look_to_sides_part_6 = "Но дръж главата надолу, защото забелязвам много полицаи да минават така, добре?",
		start_8_look_to_sides_part_7 = "Ако те хванат обаче! Не ме предавай, защото си мъртъв, братле!",
		start_8_look_to_sides_part_8 = "Виждаш ли какво казвам? Любовта за това.",

		start_9_look_to_sides_part_1 = "Ей, не мога да лъжа, току-що видях коп да мине оттам, брат!",
		start_9_look_to_sides_part_2 = "Сигурен ли си, че не те следваха или нещо от това?",
		start_9_look_to_sides_part_3 = "Защото, ай, не мога да лъжа, ФИБ сега правят някакъв следващо ниво, брат.",
		start_9_look_to_sides_part_4 = "Те имат стотици хеликоптери във въздуха и такива неща, брат.",
		start_9_look_to_sides_part_5 = "Аз виждам всичко и зная всичко, брат. Вярвай ми на това.",
		start_9_look_to_sides_part_6 = "Да, даже изцяло е бил на теб, брат, помниш ли- помниш ли това зарядно, което премина през теб, брат?",
		start_9_look_to_sides_part_7 = "Но не е включил светлините? Вярвай ми обаче..",
		start_9_look_to_sides_part_8 = "Да, знам това, знам това.",

		start_burger_shot_part_1 = "Мамка му, видях те в Бъргър Шот веднъж.. обръщаш ли пържени питки?",
		start_burger_shot_part_2 = "Да, не мога да лъжа, определено ти трябва този левер.",

		start_cop_1_part_1 = "Ей, мирише ми на полицай от Maze Bank, брат...",
		start_cop_1_part_2 = "Мога да разбера, че си агент.",
		start_cop_1_part_3 = "По-добре се свържи с подкрепа, преди да наваля във вашия малък детски полицейски автомобил, брат.",

		start_cop_2_part_1 = "Ай, офицере, какво става? Ние само помагаме на болни хора в Blaine County.",
		start_cop_2_part_2 = "Няма нищо незаконно тук, брат.",

		start_gang_member_part_1 = "Клетвам се, че видях как тебе бандата те пристреля..",
		start_gang_member_part_2 = "Да, да, ти определено си изпаднал, мога да разбера по тази тъпа гримировка.",

		start_group_part_1 = "Правило съм чул, че искате да отидете и да извършите някоя работа с окси като мен.",
		start_group_part_2 = "Да не се лъжем, колкото повече, толкова по-забавно е в момента, но мога да дам пилетата само на един от вас.",
		start_group_part_3 = "Така че се погрижете да го вземете на мирно, ходете с вашата банда или каквото и да сте и вземете тая работа, брат.",
		start_group_part_4 = "Защото времето е пари в момента, брат, разбираш ли ме.",
		start_group_part_5 = "Твърде дълго стоиш тук, брат, побързай, отиди си, брат.",

		start_knife_part_1 = "Окей, това е голям рамбо на твоята кръста, братче!",
		start_knife_part_2 = "Брате, по-добре не махай тая глупост тука, защото ще стане лошо за теб, брат!",

		start_last_fail_part_1 = "Йо, ти ли си от там, брате? Как си и всичко такова, братушка!",
		start_last_fail_part_2 = "Ами, на същото падение... Не мога да лъга, отново те нуждая за една малка мисия...",
		start_last_fail_part_3 = "Да, да... знаеш - знаеш какво мисля, знаеш за какво говоря, оксито - да, разбира се знаеш.",
		start_last_fail_part_4 = "Ей, основно ще ти изпратя нещото по телефона.",
		start_last_fail_part_5 = "Ти прави това, което трябва, братче, обичам те за това.",

		start_legendary_tier_part_1 = "Оуу, така че ти си големият играч?",
		start_legendary_tier_part_2 = "Легендарен клас, добре, изглежда, че може да си купиш целия етаж за EDM, братче!",
		start_legendary_tier_part_3 = "Давай.",

		start_mechanic_part_1 = "Йоу, ти поправяш коли, нали?",
		start_mechanic_part_2 = "Е, господине, след това ми трябва да настроиш моя Asbo, защото дингото ми има твърде много вдлъбнатини, братан.",

		start_mercedes_part_1 = "Брат, обожавам тази Мерцедес, която имаш!",
		start_mercedes_part_2 = "Не мога да лъжа, ще ми трябва, когато приключиш с това малко нещо тук, брат.",

		start_no_gun_part_1 = "Брате, идваш тук приятелски, като че няма да бъдеш ограбен.",
		start_no_gun_part_2 = "Има късмет, че оотърсващите в момента не са с нас, но..",
		start_no_gun_part_3 = "Следващият път бъди въоръжен, брат.",

		start_on_timer_1_part_1 = "Ай, не мога да ти лъжа, брат, ти провали последния, та какво правиш тук, брат?",
		start_on_timer_1_part_2 = "Не, братче, върни се по-късно, когато решиш да се вземеш в ръце, идиото.",

		start_on_timer_2_part_1 = "Не, братче, миналия път ме разочарова, братче..",
		start_on_timer_2_part_2 = "Остави ме на мира и направи нещо друго, братче.",

		start_on_timer_3_part_1 = "Така ли е? Мислиш, че можеш така да се връщаш тук след като направи тази грешка, братче?",
		start_on_timer_3_part_2 = "Е по-добре да се отдалечиш, преди да ти навлезат нахалките, братче!",

		start_on_timer_4_part_1 = "Да, да не лъжа, миналия път направи страшни глупости, братче..",
		start_on_timer_4_part_2 = "Не мога да лъжа, ще изглежда доста зле за теб ако останеш тук още около 2 секунди, момче мое..",

		start_on_timer_5_part_1 = "Ей, как си, брат?",
		start_on_timer_5_part_2 = "Не мога да лъжа, обърка си се миналия път, братко, нито едната таблетка не успя да вземеш, брат.",
		start_on_timer_5_part_3 = "Като че ли го обърка по-голямо време, братко..",
		start_on_timer_5_part_4 = "Никога повече да не слизаш тук, брат! Знаеш ли какво казвам?",
		start_on_timer_5_part_5 = "Зная те по име, видях лицето ти, братко. Готов си тук, брат.",

		start_on_timer_6_part_1 = "Да, този човек мисли, че е голямо хлапе, нали? Сгрешава и се връща при мен, извинява се и такива..",
		start_on_timer_6_part_2 = "Не, брат, тук не става така, брат.",
		start_on_timer_6_part_3 = "Най-добре си тръгвай веднага колега!",

		start_on_timer_7_part_1 = "Да, не мога да лъжа, този човек наказа имащо като бе..",
		start_on_timer_7_part_2 = "Виждаш ли този човек там? Виждаш ли главозамайващия този тип тука, да?",
		start_on_timer_7_part_3 = "Той си направи грешката, брат, ей, брат дойди тука, брат!",
		start_on_timer_7_part_4 = "Да, не мога да лъжа, ти си къртец, махай се оттук, братче, върни се по-късно, мъж.",

		start_on_timer_8_part_1 = "Да, ти си някакъв тип, братче..",
		start_on_timer_8_part_2 = "Този човек ходи наоколо, мойте неща, братче.. разваля моите неща, братче.. разяжда хората ми, братче..",
		start_on_timer_8_part_3 = "И после се връща, очаквайки да получи новата доза, очаквайки да платиш, братче!",
		start_on_timer_8_part_4 = "Очаквай да получиш пари, братче.. не получаваш пари, братче..",
		start_on_timer_8_part_5 = "Получаваш крошки, братче.. изчезни от тук, братче!",
		start_on_timer_8_part_6 = "Излез оттук, братле, ти свърши и всичко туй.",
		start_on_timer_8_part_7 = "Телефонът също пингва, братле, ти си довършил! Взех друг човек за това, братле.",

		start_over_31d_part_1 = "Искам да ти кажа, братле! Ти си тук отвече време..",
		start_over_31d_part_2 = "Моля те, пъхни нещо бързо и се върни, братле.",

		start_over_100k_part_1 = "Защо пръскаш котешка храна, като имаш над 100 куфара?",
		start_over_100k_part_2 = "Това не е в брой, нали? Защото определено ще изпратя гасителите да те оберат, братле.",

		start_revving_part_1 = "Ако продължиш да дрънкаш тая парче стара кола, бърата ще имаме проблеми, брат.",
		start_revving_part_2 = "Спрете лапата си, преди да ти спра вас, брат!",

		start_staff_1_part_1 = "Айо, брат.. не трябва ли да банваш идиоти и други идиотски неща, вместо да ми говориш?",
		start_staff_1_part_2 = "Еби го, нуждая се от парите, но ви наблюдавам, админи.",

		start_staff_2_part_1 = "Бе, виж като втори модератор днес се занимаваш с окси..",
		start_staff_2_part_2 = "Вие трябва да сте на работа, но не на тая работа, брат!",

		start_streamer_part_1 = "Йооо, това е онзи, който си мисли, че е някакъв голям стриймър!",
		start_streamer_part_2 = "Йоо ЛС в чата, ебах тияяяя ребра брат!",

		start_stressed_part_1 = "Брат! Защо трепериш, по ръцете?!",
		start_stressed_part_2 = "Иди си направи пушка или нещо, брате, защото се стресираш прекалено сега.",

		start_subaru_part_1 = "Ей, този Субару по-добре да е добър за безпътки, брате!",
		start_subaru_part_2 = "защото този трейл, който ще те заведа, е един различен!",

		start_under_10k_part_1 = "Братче, зная, че имаш под 10 хиляди в сметката си!",
		start_under_10k_part_2 = "Защо не отидеш на мястото бързо с познатият път?",

		start_under_24h_part_1 = "Ти си звяр, брат! Продължавай напред.",

		start_zombie_pills_part_1 = "Добре, така че сега си пребил Z Pills и искаш да пребиеш Oxy Pills..",
		start_zombie_pills_part_2 = "Не само си Crackhead!",

		still_pressing_e_1_part_1 = "Вярно брат, защо се проставаш така, брат?",
		still_pressing_e_1_part_2 = "Спри да се връщаш на мястото брат. Пратил съм ти ping-а, провери телефона си гад.",
		still_pressing_e_1_part_3 = "Да, да, провери го.. провери го..",

		still_pressing_e_2_part_1 = "Бре, ти си някакъв тъпак или нещо?",
		still_pressing_e_2_part_2 = "Бре, пратих ти пинг, не си ли слеп или нещо, бре?",
		still_pressing_e_2_part_3 = "Провери телефона, бре, махай се, бре!",

		still_pressing_e_3_part_1 = "Ай, не мога да лъжа, ако ми го направиш още веднъж, ти казах твърде много пъти, майката му..",
		still_pressing_e_3_part_2 = "Ако повториш, ще изпратя на волноубииците след теб, бре.",

		still_pressing_e_4_part_1 = "Взимаш си шега сега, махай се, братле!",

		still_pressing_e_5_part_1 = "Броо, ти ли си тъп или нещо?",
		still_pressing_e_5_part_2 = "Продължаваш да си връщаш и да ми разговаряш с такъв глас, приятелю?",
		still_pressing_e_5_part_3 = "Ай, по-добре да си тръгнеш сега, кълна се в бога, ще те накарам да се заябеш, братле!",

		still_pressing_e_6_muffled_part_1 = "Ай, този човек е истинска глава..",

		still_pressing_e_7_muffled_part_1 = "Ай, братле, този човек е истински глава.",
		still_pressing_e_7_muffled_part_2 = "Той определено е глава, продължава да се връща!",
		still_pressing_e_7_muffled_part_3 = "Той мисли, че ще се раздразня, но не се раздразнявам повече, брат!",

		still_pressing_e_8_part_1 = "Ой, не мога да лъжа, започваш да ме изкуваш сега...",
		still_pressing_e_8_part_2 = "Така че спри да натискате това, брат.",

		still_pressing_e_9_part_1 = "Ой, не мога да лъжа, ако продължаваш да натискаш твърде много E, брат.",
		still_pressing_e_9_part_2 = "Ще се обръщам към мета и ще те избухна в тази майчина, брат, пък да те... брат.",

		taking_too_long_1_part_1 = "Ей, брат, вземаш малко твърде много време, човек, знаеш ли какво ти казвам...",
		taking_too_long_1_part_2 = "По-добре те моля да поспешиш това, братче.",

		taking_too_long_2_part_1 = "Ей, ако продължаваш да се забавяш, ще имаме проблеми за теб, знаеш ли какво казвам?",
		taking_too_long_2_part_2 = "Твърде късно си, братче, твърде късно си в момента... побързай, братче.",

		taking_too_long_3_part_1 = "Йо, братче, много забавяш, братче, опитваш ли се да ми откраднеш работата, братче?",

		taking_too_long_5_part_1 = "Ей, ти мислиш че си смешен, а?",
		taking_too_long_5_part_2 = "Ай, ела.. Моля те, ела при мен сега, братко, виж какво ще ти се случи, братко.",

		taking_too_long_6_part_1 = "Ай, най-добре да не ме **еш, братко.. Искам нещата ми **ега, братко..",
		taking_too_long_6_part_2 = "Подръж се, братко.",

		taking_too_long_7_part_1 = "Братко, знам с каква кола се возиш..",
		taking_too_long_7_part_2 = "Видях те, когато тръгна, братко, не мисли, че си в безопасност.",

		taking_too_long_8_part_1 = "Хах, добре, крайно време.. това е последния шанс, братко.",
		taking_too_long_8_part_2 = "Ако си бавиш отново, ще се свържа с момчетата и ще стане липса за теб, човекът ми.",
		taking_too_long_8_part_3 = "Така, по-добре да се разбързаш бързо... часовникът тик-така, брат.",

		too_many_people_1_part_1 = "Ой, не мога да лъжа, има голямо количество хора около мен в момента, брат!",
		too_many_people_1_part_2 = "Защо сте всички тук? Искате ли да превземете мястото или нещо такова, брат?",
		too_many_people_1_part_3 = "Заклевам се на Бог, имам оружия и куршуми, готови да убият някого.",
		too_many_people_1_part_4 = "Виждаш ли какво ти казвам, брат..",
		too_many_people_1_part_5 = "Оттеглете се всички, брат, казах ВСИЧКИ, да, това включва и теб, брат, пък на теб май мутра!",

		too_many_people_2_part_1 = "Брат, искрено казано, има прекалено много хора в момента..",
		too_many_people_2_part_2 = "Ти си доста очевиден с тези хора около теб и всичко това, брат.",
		too_many_people_2_part_3 = "Каза ми, че ще има само един от теб в тези части, брате, а не 4 от вас..",
		too_many_people_2_part_4 = "Няма никакво значение, че си в някаква банда, брат, аз ли пухам с това? Не, брате..",
		too_many_people_2_part_5 = "Оттегли се с людете си, преди да стане сериозно, братко.",

		tutorial_1_part_1 = "К'во става, брат? Искаш ли да ми помогнеш да си намеря малко окси?",
		tutorial_1_part_2 = "О, това е много добре! Честно казано, нуждаех се от помощ с това, приятел.",
		tutorial_1_part_3 = "Слушай тук, приятел...",
		tutorial_1_part_4 = "Имам много фалшиви рецепти, знаеш ли... Направени са за мен на север.",
		tutorial_1_part_5 = "Да, но трябва да си ги вземеш оттам за мен. Разбираш ли, брат?",
		tutorial_1_part_6 = "И после това трябва да ги доставиш... Да ме слушаш, когато ти говоря, брат!",
		tutorial_1_part_7 = "Отведи ги в града и ги възстанови!",
		tutorial_1_part_8 = "Да.. да.. трябва да ги възстановиш, бро.",
		tutorial_1_part_9 = "Да, ще ти пратя детайлите по телефона, така че просто провери GPS-а и всичко, бро. Имам те, бро..",
		tutorial_1_part_10 = "Но, братче.. по-добре не набавяй, че иначе ще ви трябва оутърсите, бро.",
		tutorial_1_part_11 = "И ми вярвай, не е добре да си в такава ситуация, няма да ти лъжа за това.",
		tutorial_1_part_12 = "Да, да тръгваме, братче.. спри да ми говориш, братче, спри да ме гледаш в лицето, братче, и поспеши сякаш, братче.",

		tutorial_2_part_1 = "Ой, какво става, братко? Искаш ли да ми помогнеш с няколко опиати, братко?",
		tutorial_2_part_2 = "Йоу, това е добре! Ами, наистина ми трябва помощ с всичко това, братко.",
		tutorial_2_part_3 = "Братко, имам няколко приказки написани за мен там на север, братко.",
		tutorial_2_part_4 = "Но така, събери ги от там и донеси ги до мен, братко-",
		tutorial_2_part_5 = "Да, и после внимавай, внимавай, отнеси ги в града, братко, и ги изкупи в аптеките.",
		tutorial_2_part_6 = "Да, да, да, да..",
		tutorial_2_part_7 = "Ще ти изпратя подробностите по телефона, така че просто провери GPS-a и всичко това, брат, обещавам ти, брат.",
		tutorial_2_part_8 = "Но, приятелю.. по-добре да не си закъсняваш твърде много.. иначе ще трябва да те изиграм, брат.",
		tutorial_2_part_9 = "И вярвай ми, това не е добре за теб, обещавам ти.",
		tutorial_2_part_10 = "Да, побързай, голям брате, спри да ми говориш, спри да ме гледаш, побързай, брате.",

		tutorial_3_part_1 = "Йо, какво става, братче? В основата, опитваш ли се да ми вземеш окси в момента?",
		tutorial_3_part_2 = "Да.. да.. това е добре, защото, не мога да лъжа, търся помощ по всичко това.",
		tutorial_3_part_3 = "Да, да, да.. Имам голяма бройка рецепти, направени за мен на север от тук. Вярвай ми на това.",
		tutorial_3_part_4 = "Да, но да не си лъжа, аз ще се нуждая ОТ ТЕБ, да вземеш рецептите за мен, добре-",
		tutorial_3_part_5 = "И после в основата, заведи ги в града и ги обменяй в различните аптеки и всичко останало приятел.",
		tutorial_3_part_6 = "Да, върших ти го, защото сега ще направя така... (следват инструкции)",
		tutorial_3_part_7 = "Виж ли, братле? Ще ти изпратя подробностите за това (следват инструкции). Провери GPS-а си, братле.",
		tutorial_3_part_8 = "Обаче, по-добре не се забавяй прекалено много, иначе определено ще те догонят. Побързай, кумаре.",
		tutorial_3_part_9 = "Да, да тръгваме, голямане. Престани да ми говориш, чукаш да ми гледаш лицето и да побързаш, братле.",
		tutorial_3_part_10 = "Братле, обичам те, обичам."
	},

	panel = {
		loading_title = "Зареждане",
		error_title = "Нещо се обърка",

		was_banned = "Баннат",
		loading = "Зареждане на данните на играча...",
		loading_screenshot = "Зареждане на снимка...",
		screenshot_failed = "Неуспешно заснемане на снимка.",
		player_no_character = "Играчът няма зареден персонаж.",
		no_warnings = "Няма предупреждения",
		not_shown_warnings = "${count} предупреждения не се показват",
		system_issuer = "Система",
		add_note_title = "Добавяне на бележка",
		message_placeholder = "${playerName} направи грешка...",

		type_note = "Бележка",
		type_warning = "Предупреждение",
		type_strike = "Стрийк",
		type_system = "Система",

		button_cancel = "Отказ",
		button_add = "Добавяне",
		button_close = "Затвори",
		button_new = "Нова бележка",
		button_back = "Назад",
		button_screenshot = "Снимка",

		ping = "${ping}ms",
		fps = "${fps}fps",
		playtime = "${time} играно",

		failed_load_player = "Неуспешно зареждане на данните на играча. Въведохте ли валиден идентификационен номер на сървъра?",
		failed_add_warning = "Неуспешно добавяне на предупреждение.",

		user_indefinitely_banned_warning_no_reason = "Забраних този човек вечно без определена причина. Това предупреждение беше генерирано автоматично като резултат от забраната.",
		user_indefinitely_banned_warning = "Безсрочно забраних тази личност с причина `${reason}`. Това предупреждение е генерирано автоматично поради забраната.",
		user_temporarily_banned_warning_no_reason = "Забраних тази личност временно без указана причина за ${displayTime}. Това предупреждение е генерирано автоматично поради забраната.",
		user_temporarily_banned_warning = "Забраних тази личност временно с причина `${reason}` за ${displayTime}. Това предупреждение е генерирано автоматично поради забраната."
	},

	panic = {
		press_panic_button = "Имате 5 секунди да натиснете паниковия бутон (X).",
		panic_button_timeout = "Не успяхте да натиснете паниковия бутон навреме.",

		panic_button_title = "[Диспечър]",

		panic_button_unit = "10-14, ${unitId} ${lastName}, ${label} - в недостояние.",
		panic_button_no_unit = "10-14, ${lastName}, ${label} - в недостояние.",

		panic_blip = "10-14 ${lastName}",

		label_officer = "полицай",
		label_paramedic = "лекар"
	},

	paper_bags = {
		fill_bag = "[${SeatEjectKey}] Пълни чувал със хартиени торбички",
		no_bags = "Нямате никакви хартиени торбички.",
		no_bag_items = "Нямате никакви предмети, които можете да сложите в хартиена торбичка.",
		close_bag = "Затвори чантата",
		cancel_bag = "Отмени",
		title = "Хартиена чанта",
		failed_fill = "Неуспешно запълване на хартиена чанта.",
		filled_bag = "Успешно запълнена хартиена чанта."
	},

	parking_meters = {
		not_paid = "Не е платено",
		insert_dollar = "[${InteractionKey}] Вмъкни $${amount}",

		no_cash = "Нямате по долар.",
		max_time = "Тази паркинг машина вече е на максимум.",
		failed_pay = "Неуспешно плащане на паркинг машина."
	},

	pause_menu = {
		sunday = "Неделя",
		monday = "Понеделник",
		tuesday = "Вторник",
		wednesday = "Сряда",
		thursday = "Четвъртък",
		friday = "Петък",
		saturday = "Събота",

		bank = "Банка",
		cash = "Кеш"
	},

	pawn_shops = {
		pawn_shop = "Ломбард",
		pawn_shop_far = "Достъп до ломбард",
		pawn_shop_near = "[${InteractionKey}] Достъп до ломбард",
		no_items_to_sell = "Нямаш ${itemLabel} за продан.",
		close_menu = "Затвори менюто",

		sell_items = "Продай ${itemLabel}",
		press_to_sell_items = "[${InteractionKey}] Продай ${amount}x ${itemLabel}",
		sold_items = "Продадено ${sellAmount}x ${itemLabel} за $${sellPrice}.",
		daily_limit_reached = "Достигнал си дневния си лимит, търговецът не купува повече предмети.",
		illegal_pawn_shop_id = "Опитване за предаване на стойности за заложен магазин, който не съществува.",

		used_pawn_shop_title = "Използван Заложен Магазин",
		used_pawn_shop_details = "${consoleName} използва заложен магазин и продаде ${sellAmount} `${itemLabel}` и получи $${sellPrice}."
	},

	ped_messages = {
		attempt_succeeded = "опита се да ${attemptMessage} и успя",
		attempt_failed = "опита се да ${attemptMessage}, но не успя",
		dice_message = "хвърли зар и получи ${diceNumber}",
		roll_message = "хвърли персонализиран зар с настройки ${rolls}d${max} и получи общо ${totalValue}",
		citizen_card_message = "показа гражданска карта (${characterId})",
		badge_message = "показа значка (${characterId})",
		license_message = "показа лиценз (${characterId})",
		ped_message_logs_title = "Съобщение на НПС",
		ped_message_logs_details = "${consoleName} изпрати съобщение на НПС със следното съобщение: `${pedMessage}`",
		attached_ped_message_logs_title = "Прикачено съобщение на NPC",
		attached_ped_message_logs_details = "${consoleName} прикачи съобщение на NPC със следното съобщение: `${pedMessage}`",
		chat_ped_messages_enabled = "Съобщенията от NPC сега ще се показват в чата.",
		chat_ped_messages_disabled = "Съобщенията от NPC вече няма да се показват в чата.",
		me_message_chat_title = "/me [${serverId}]",
		inspect_chat_title = "/inspect [${serverId}]",
		frisk_chat_title = "/frisk [${serverId}]",
		do_message_chat_title = "/do [${serverId}]",
		attempt_message_chat_title = "/attempt [${serverId}]",
		dice_message_chat_title = "/dice [${serverId}]",
		roll_message_chat_title = "/roll [${serverId}]",
		description_message_chat_title = "/description [${serverId}]",
		message_too_long = "Съобщението съдържа твърде много символи или редове!",
		card_command_wait = "Току-що изтеглите карта, изчакайте малко преди да изтеглите друга.",
		ped_message_duplicate = "Изпратихте това съобщение, изчакайте малко преди да го изпратите отново."
	},

	ped_objects = {
		illegal_ped_object = "Се опитвате да добавите пед обект, който не е в списъка 'позволени' пед обекти.",
		illegal_ped_weapon_object = "Опит за добавяне на обект за оръжие на NPC, което не е в списъка с оръжия.",
		illegal_raw_ped_object = "Опит за добавяне на необработен обект на NPC без необходимите разрешения."
	},

	ped_task = {
		network_id_invalid = "Невалиден идентификатор на мрежата.",
		ped_not_found = "NPC с идентификатор на мрежата `${networkId}` не е намерен.",
		tracked_ped = "Проследяван NPC",
		tracked_ped_is = "NPC (${entity}) е:"
	},

	ped_spawn = {
		ped_missing_model = "Липсва параметър за модел.",
		ped_spawn_success = "NPC успешно създаден.",
		ped_failed_spawn = "Неуспешно създаване на NPC.",
		invalid_weapon = "Невалидно оръжие.",
		ped_remove_success = "Успешно премахнати изкачени пешеходци.",
		ped_failed_remove = "Неуспешно премахване на изкачени пешеходци.",
		ped_task_success = "Успешно зададете '${task}' задача на изкачените пешеходци.",
		ped_failed_task = "Неуспешно присвояване на '${task}' задача на изкачените пешеходци.",
		invalid_target = "Невалиден идентификатор на целевия сървър.",
		missing_task = "Липсващ задачен параметър.",
		invalid_task = "Невалидна задача за пешеходец '${task}'.",
		target_required = "Тази задача за пешеходец изисква валидна цел.",
		ped_emote_success = "Успешно направени изкачените пешеходци да изпълнят '${emote}' емоция.",
		ped_failed_emote = "Неуспех при изпълнение на '${emote}' емот към спаунати пешаци.",
		invalid_emote = "Невалиден емот '${emote}'.",
		missing_emote = "Липсващ параметър емот.",

		emote_list = "Налични емоти за пешаки: ${list}.",
		task_list = "Налични задачи за пешаки: ${list}."
	},

	ped_steal = {
		ped_steal_reset = "Обновен е пешакът на играча.",
		ped_steal_success = "Успешно присвоен пешаков скин.",
		ped_steal_failed = "Неуспех при присвояване на пешаков скин.",
		ped_not_found = "Пешакът на играча не е намерен."
	},

	ped_takeover = {
		failed_reset = "Неуспех при връщане към оригиналния пешак.",
		failed_reset_not_exist = "Вашият оригинален пешак не съществува или не е близо до вас.",
		failed_takeover = "Неуспешно превземане на гражданин.",
		invalid_network_id = "Невалиден мрежов идентификатор."
	},

	peds = {
		ped_robbing_injection = "Прекомерно грабеж на гражданини! (Скоро вероятно се използва инжектор, за да се постигне това.)",
		robbed_ped_logs_title = "Грабнат гражданин",
		robbed_ped_logs_details = "${consoleName} грабна гражданин и получи $${payout}."
	},

	pepper_spray = {
		press_to_pepper_spray = "Натисни ~INPUT_ATTACK~, за да използваш пиперов спрей.",
		using_pepper_spray = "Използване на пиперов спрей."
	},

	phone = {
		app_settings = "Настройки",
		app_contacts = "Контакти",
		app_calls = "Телефон",
		app_messages = "Съобщения"
	},

	phone_numbers = {
		no_phone_number_set = "Не е посочен телефонен номер.",
		invalid_format = "Посоченият телефонен номер е с невалиден формат.",
		invalid_length = "Посоченият телефонен номер е с невалидна дължина.",
		invalid_characters = "В посоченият телефонен номер има невалидни символи.",
		phone_number_changed_to = "Вашият телефонен номер е променен на `${phoneNumber}`.",
		phone_number_taken = "Телефонният номер `${phoneNumber}` е зает.",
		database_error = "Възникна грешка в базата данни.",
		no_packages = "Нямате никакви пакети за това.",
		api_error = "Нашият API се завърна с грешка.",
		api_not_available = "Нашият API не е достъпен.",
		phone_number_is_available = "Телефонният номер `${phoneNumber}` е наличен.",
		phone_number_is_not_available = "Телефонният номер `${phoneNumber}` не е наличен."
	},

	pictures = {
		selfie_description = "Снимка на ${firstName} ${lastName}."
	},

	player_control = {
		unable_to_drive_for_yourself = "Не можете да шофирате за себе си.",
		player_is_not_nearby = "Играчът със сървър ID ${serverId} не е близо.",
		player_is_not_the_drive_of_a_vehicle = "Играчът със сървър ID ${serverId} не е шофьор на превозно средство.",
		press_to_stop_drive_for = "Натиснете ~INPUT_FRONTEND_CANCEL~, за да спрете шофирането на играч."
	},

	player_scales = {
		reset_player_scale_for = "Нулиране на размера на играча за ${consoleName}.",
		set_player_scale_to_for = "Задаване на размера на играча на `${scale}` за ${consoleName}.",
		reset_player_scale = "Нулиране на размера на играча.",
		set_player_scale_to = "Задаване на размера на играча на `${scale}`.",
		set_player_scale_no_permission = "Играчът нямаше необходимите разрешения за задаване на размер на играча.",
		player_is_already_set_to_scale = "${consoleName} вече е със зададен мащаб `${scale}`.",
		you_are_already_set_to_scale = "Вече сте със зададен мащаб `${scale}`.",
		player_is_not_scaled = "${consoleName} няма зададен мащаб.",
		you_are_not_scaled = "Вие нямате зададен мащаб."
	},

	player_stats = {
		hp = "Живот",
		armor = "Броня",
		updated_render_range = "Актуализиран обхват на рендериране до ${renderRange}.",
		turned_player_stats_on = "Включени статистики на играча.",
		turned_player_stats_off = "Изключени статистики на играча."
	},

	players = {
		player_left = "Играч напусна [${serverId}]"
	},

	pole_dancing = {
		press_to_strip_dance = "Натиснете ~INPUT_CONTEXT~ за Стриптийз Танц.",
		this_pole_is_occupied = "Този стълб е зает.",
		stop_dancing = "Спри Танцуването",
		change_dance = "Смени Танц (${animationId})",

		no_model_name_set = "Името на модела не е зададено.",
		invalid_model = "Моделът '${modelName}' е невалиден.",
		pole_dancing_offset = "Модел '${modelName}': vector3(${x}, ${y}, ${z})"
	},

	pools = {
		pools_overflowing = "Басейните надничат: ~r~${poolsOverflowing}"
	},

	prescriptions = {
		redeem_prescription = "[${SeatEjectKey}] Изкупи Рецепта",

		redeemed_prescription = "Рецептата бе изкупена успешно.",
		failed_redeem = "Неуспешно преотстъпване на рецепта.",

		remeeded_prescription_logs_title = "Преотстъпена рецепта",
		remeeded_prescription_logs_details = "${consoleName} преотстъпи рецепта и получи 1x `${item}`."
	},

	printer = {
		use_printer = "[${InteractionKey}] Използване на принтер",
		failed_to_print = "Неуспешно отпечатване.",

		no_paper = "Нямате никакви хартии.",
		invalid_url = "Невалиден URL адрес на изображението.",
		invalid_domain = "Този домейн не е разрешен.",
		print = "Принтиране",
		printing = "Принтиране...",

		printed_logs_title = "Принтиране на изображението",
		printed_logs_details = "${consoleName} отпечатва `${itemName}` с помощта на `${paperType}` и URL на изображението `${url}`."
	},

	prop_hide = {
		no_model = "~r~Няма модел",
		status_text = "Елемент: ~g~${label}"
	},

	properties = {
		no_address_set = "Не е зададен адрес.",
		no_address_found = "Не е намерен адрес под '${address}'.",
		marker_set = "Маркер и пътека са зададени за ${address}.",
		removed_marker = "Премахнат маркер за ${address}.",
		entrance = "Вход",
		back_entrance = "Заден Вход",
		garage = "Гараж",
		located_address = "Намира се на: ${address}"
	},

	props = {
		illegal_prop_item_id = "Играчът опита да използва елемент с незаконно идентификационно номер.",
		managing_props_help = "В момента управлявате елементи. Приближете се до елемент и натиснете ~INPUT_CONTEXT~, за да го вземете.",
		total_props = "Общо елементи: ${count}",
		active_props = "Активни обекти: ${count}",
		press_to_pick_up = "[${InteractionKey}] Вземи",
		pick_up = "Вземи",
		picking_up = "Взимане",
		press_to_destroy = "[${InteractionKey}] Унищожи",
		destroy = "Унищожи",
		destroying = "Унищожаване",
		prop = "Обект",
		model_parameter_missing = "Липсва параметърът 'model'.",
		model_parameter_invalid = "Моделът '${model}' не е валиден.",
		model_parameter_is_not_an_object = "Моделът '${model}' не е обект.",
		spawned_prop_non_networked = "Създаден обект без мрежова връзка с модел '${model}'.",
		spawned_prop_networked = "Създаден е мрежов обект с модел `${model}`.",
		spawned_exact_prop = "Създаден е точен обект.",
		failed_to_spawn_prop = "Неуспешно създаване на обект с модел `${model}`.",
		not_able_to_spawn_in_vehicle = "Не можете да бъдете в превозно средство, когато създавате обект.",
		not_able_to_spawn_while_dead = "Не можете да създавате обекти, когато сте мъртви.",
		not_able_to_spawn_while_moving = "Трябва да стоите неподвижно, за да създавате обекти.",
		stand_still_to_place_prop = "Трябва да стоите неподвижно, за да поставите обекта.",
		prop_no_interior = "Можете да поставите този предмет само на открито.",

		invalid_prop_id = "Невалиден идентификатор на предмет.",
		prop_deleted = "Предметът с идентификатор ${propId} беше изтрит.",

		invalid_wipe_radius = "Невалиден радиус за изтриване (между 1 и 100).",
		wipe_successful = "Успешно бяха изтрити ${amount} предмет(и).",
		wipe_failed = "Неуспешно изтриване на предмети.",

		placing_prop = "Поставяне на предмет",
		pickup_prop = "Вдигане на предмет",
		setting_up_tire_wall = "Поставяне на гумени стени",
		destroying_tire_wall = "Разрушаване на гумени стени"
	},

	radio = {
		frequency = "Честота",
		switch = "Превключване",
		radio_turned_off = "Радиото е изключено.",
		radio_removed = "Изгубихте радиото си.",
		no_radio = "Нямате радио.",
		unable_to_use_radio_while_cuffed = "Не можете да използвате радиото, докато сте в ръката.",
		unable_to_use_radio_while_down = "Не можете да използвате радиото, докато сте на земята.",
		unable_to_use_radio_as_animal = "Не можете да използвате радиото като животно.",
		frequency_set_to_streamer = "Честотата е зададена.",
		frequency_set_to = "Честотата е зададена на ${frequency}.",
		frequency_already_set_to = "Честотата вече е зададена на ${frequency}.",
		radio_volume_same = "Силата на радиото вече е зададена на ${radioVolume}%.",
		radio_volume_reset = "Обемът на радиото беше нулиран.",
		radio_volume_set = "Силата на радиото е зададена сега на ${radioVolume}%.",
		radio_volume_current = "Вашата текуща сила на радиото е зададена на ${radioVolume}%.",
		radio_volume_current_default = "Моментният обем на вашето радио е стандартен.",
		radio_sound_effects_same = "Обемът на звуковите ефекти на радиото вече е зададен на `${radioSoundEffects}`.",
		radio_sound_effects_reset = "Силата на звуковите ефекти на радиото вече е нулирана.",
		radio_sound_effects_set = "Силата на звуковите ефекти на радиото е зададена на `${radioSoundEffects}`.",
		radio_sound_effects_current = "Силата на звуковите ефекти на радиото в момента е зададена на `${radioSoundEffects}`.",
		radio_sound_effects_current_default = "Силата на звуковите ефекти на радиото в момента е зададена на стойността по подразбиране.",

		radio_missing_last_freq = "Нямате радио, за да се присъедините към последната честота.",

		radio_debug_failed = "Неуспешно включване/изключване на отстраняването на грешки при радиото.",
		radio_debug_off = "Успешно изключване на отстраняването на радиоотчай.",
		radio_debug_on = "Успешно включване на отстраняването на радиоотчай.",

		radio_debug_no_permissions = "Опит за включване/изключване на отстраняването на радиоотчай без права.",

		decrypt_frequency = "[${InteractionKey}] Дешифриране на честотата",
		decrypting_frequency = "Дешифриране на честотата",
		decrypting_frequency_failed = "Грешка при дешифрирането на честотата.",
		decrypter_jammed = "Изглежда, че дешифраторът е блокиран.",
		decrypted_frequency = "Честотата изглежда е около `${frequency}`.",
		no_frequency_detected = "Не е открита честота."
	},

	reflect = {
		success_enable_reflection = "Успешно активиране на отразяването.",
		success_disable_reflection = "Успешно деактивиране на отразяването.",
		failed_toggle_reflection = "Неуспешно включване/изключване на отразяването.",

		reflection_logs_title = "Превключено отразяване",
		reflection_logs_enabled_details = "${consoleName} включи отразяването.",
		reflection_logs_disabled_details = "${consoleName} изключи отразяването."
	},

	remote_camera = {
		connected_to_camera = "Свързано към камера #${id}",

		camera_distance = "Разстояние: ${distance}м",
		out_of_range = "Извън обхват",

		disconnect = "Изкл.",
		view_feed = "Покажи снимките",

		no_nearby_cameras = "Няма близки камери",
		nearby_cameras = "${amount} близки камери",
		no_nearby_cameras_description = "Няма камери близо до Вас.",

		camera_operator = "Оператор: ${fullName}",

		camera_label = "Камера №${id}",
		camera_distance = "Разстояние: ${distance}м",
		connect = "Свържи",

		something_went_wrong = "Нещо се обърка.",
		error_out_of_range = "Камерата излиза извън обхвата.",
		error_not_found = "Камерата не бе намерена."
	},

	reskin = {
		plastic_surgery = "Пластична хирургия",
		los_santos_police_dept = "ПОЛИЦЕЙСКО ОТДЕЛЕНИЕ ЛОС САНТОС",

		triggered_reskin_for_player = "Тригерирано променяне на външността на ${consoleName}.",

		triggered_reskin_for_player_logs_title = "Тригерирано променяне на външността на играча",
		triggered_reskin_for_player_logs_details = "${consoleName} тригерира променяне на външността на ${targetConsoleName}.",

		triggered_reskin_for_self_logs_title = "Тригерирано променяне на външността на самия себе си",
		triggered_reskin_for_self_logs_details = "${consoleName} активира промяна на външния вид само за себе си.",

		no_reskin_packages = "Нямате налични пакети за промяна на външен вид.",
		redeemed_reskin_package = "Успешно активиран пакет за промяна на външен вид."
	},

	restaurants = {
		["table"] = "Table",
		press_to_table = "[${InteractionKey}] Маса",

		table_title = "Маса ${tableId}",
		seat = "Място ${seatId}",
		close_menu = "Затвори Менюто",
		loading = "Зареждане...",

		leave_seat = "Напусни Мястото",
		view_menu = "Виж Менюто",
		change_seating_position = "Промени позицията на седене (${animationId})",

		sushi = "Суши",
		drinks = "Напитки",
		desserts = "Десерти",

		aka = "Ака",
		kuro = "Куро",
		shiro = "Широ",
		midori = "Мидори",
		nigiri = "Нигири",
		sex_on_the_beach = "Секс на плажа",
		mojito = "Мохито",
		pina_colada = "Пина Колада",
		tiramisu = "Тирамису",
		chocolate_mousse = "Шоколадов мус",

		food_replenish = "Вашето глад и жажда ще бъдат попълнени с ${amount}%.",
		thirst_replenish = "Вашата жажда ще бъде попълнена с ${amount}%.",
		hunger_replenish = "Вашата глад ще бъде попълнена с ${amount}%.",
		diving_drop_boost = "Получете ${amount} пъти повече предмети при гмуркане за ${duration} минути.",
		hunting_drop_boost = "Получете ${amount} пъти повече предмети при лов за ${duration} минути.",
		garbage_drop_boost = "Получете ${amount} пъти повече предмети при събиране на отпадъци за ${duration} минути.",
		faster_progress_bars = "Имайте ${amount} пъти по-бързи напредъчни ленти за ${duration} минути.",
		weapon_damage_multiplier = "Имайте ${amount} пъти по-голямо умножение на урона от оръжията за ${duration} минути.",
		local_sales_multiplier = "Имайте ${amount} пъти по-голямо умножение на продажбите на продукти на местните жители.",
		shorter_boosting_cooldown = "Имайте ${amount} пъти по-кратко време между взломи на изскачащия двигател.",
		swim_faster = "Плувайте ${amount} пъти по-бързо за ${duration} минути.",
		walk_faster = "Ходете и се движете ${amount} пъти по-бързо за ${duration} минути.",
		health_generation = "Имайте постепенно възстановяване на здравето за ${duration} минути.",
		better_stamina = "Можете да тичате без да изчерпвате стамина за ${duration} минути.",
		more_inventory_space = "Имайте допълнителни ${amount} слота в инвентара за ${duration} минути.",

		buffs_note = "Бонусите ще се активират, само ако напуснете сградата.",

		press_to_prepare_food = "[${InteractionKey}] Пригответе храна",
		prepare_food = "Приготви храна",

		kissaki_kitchen = "Kissaki Кухня",

		craft = "Създай",
		putting_down_ingredients = "Постави съставките",

		pick_up = "Вземи: ~g~${name}",
		press_to_pick_up = "[${InteractionKey}] Вземи: ~g~${name}",

		prepare_rice = "~g~${name}~s~: Приготви Ориз (${completed}%~s~)",
		press_to_prepare_rice = "[${InteractionKey}] ~g~${name}~s~: Приготви Ориз (${completed}%~s~)",
		preparing_rice_starting = "Започване на приготвянето на ориз",
		preparing_rice = "~g~${name}~s~: Приготвяне на ориз... (${completed}%~s~)",

		prepare_fillings = "~g~${name}~s~: Подготвяне на плънката (${completed}%~s~)",
		press_to_prepare_fillings = "[${InteractionKey}] ~g~${name}~s~: Подготвяне на плънката (${completed}%~s~)",
		preparing_fillings_starting = "Започва се подготовката на плънката",
		preparing_fillings = "~g~${name}~s~: Подготовка на плънката... (${completed}%~s~)",

		prepare_rolling_mat = "~g~${name}~s~: Подготовка на тестомеската (${completed}%~s~)",
		press_to_prepare_rolling_mat = "[${InteractionKey}] ~g~${name}~s~: Подготовка на тестомеската (${completed}%~s~)",
		preparing_rolling_mat_starting = "Започва се подготовката на тестомеската",
		preparing_rolling_mat = "~g~${name}~s~: Подготовка на плочка за суши... (${completed}%~s~)",

		assemble_sushi = "~g~${name}~s~: Сглобяване на суши (${completed}%~s~)",
		press_to_assemble_sushi = "[${InteractionKey}] ~g~${name}~s~: Сглобяване на суши (${completed}%~s~)",
		assembling_sushi_starting = "Започване на сглобяването на суши",
		assembling_sushi = "~g~${name}~s~: Сглобяване на суши... (${completed}%~s~)",

		roll_sushi = "~g~${name}~s~: Завиване на суши (${completed}%~s~)",
		press_to_roll_sushi = "[${InteractionKey}] ~g~${name}~s~: Завиване на суши (${completed}%~s~)",
		rolling_sushi_starting = "Започване на приготвяне на суши",
		rolling_sushi = "~g~${name}~s~: Приготвяне на суши... (${completed}%~s~)",

		slice_sushi = "~g~${name}~s~: Нарязване на суши (${completed}%~s~)",
		press_to_slice_sushi = "[${InteractionKey}] ~g~${name}~s~: Нарязване на суши (${completed}%~s~)",
		slicing_sushi_starting = "Започване на нарязване на суши",
		slicing_sushi = "~g~${name}~s~: Нарязване на суши... (${completed}%~s~)"
	},

	riot_mode = {
		riot_mode_enabled = "Успешно активиран режим на бунт.",
		riot_mode_disabled = "Успешно деактивиран режим на бунт. Пешеходците, които вече са агресивни, ще продължат да се бият, докато не умрат.",
		riot_mode_failed = "Неуспешно превключване на режима на бунта.",
		riot_mode_missing_perms = "Опитване за превключване на режима на бунта без необходимите разрешения.",

		riot_mode_enabled_help = "Режимът на бунта е активиран.",
		riot_mode_disabled_help = "Режимът на бунта е деактивиран.",

		add_riot_player_no_permissions = "Опитване за добавяне на играч в списъка с бунтовници без необходимите разрешения.",
		remove_riot_player_no_permissions = "Опитване за премахване на играч от списъка с бунтовници без необходимите разрешения.",

		player_already_in_riot_list = "${consoleName} вече е в списъка с бунтовници.",
		player_not_in_riot_list = "${consoleName} не се намира в списъка с бунтовници.",
		added_riot_player = "Добавен ${consoleName} към списъка с бунтовници.",
		failed_to_add_riot_player = "Неуспешно добавяне на ${consoleName} към списъка с бунтовници.",
		removed_riot_player = "Премахнат ${consoleName} от списъка с бунтовници.",
		failed_to_remove_riot_player = "Неуспешно премахване на ${consoleName} от списъка с бунтовници."
	},

	rules = {
		invalid_rule = "Невалиден идентификатор на правило.",

		rule_title = "Правило ${number}",
		rule_details = "*${rule}*"
	},

	safes = {
		how_to_use = "Използвайте клавишите \"A\" и \"D\", за да завъртите сейфа, докато намерите правилната комбинация. Започнете, като натиснете \"D\".",
		lock_open = "Отключено",
		lock_closed = "Заключено"
	},

	savings_accounts = {
		savings_accounts = "Спестовни сметки",
		button_close = "Затвори",
		button_back	= "Back",
		button_confirm = "Потвърди",
		button_delete = "Изтрий",
		button_manage = "Управлявай",
		create_account = "Създай Сметка",
		delete_account = "Изтрий Сметка",
		confirm_delete = "Сигурни ли сте, че искате да изтриете тази сметка завинаги и всички свързани с нея записи? Това действие не може да бъде отменено.",
		loading = "Зареждане...",
		failed_load_accounts = "Неуспешно зареждане на сметките за спестовни сметки.",
		no_accounts = "Няма спестовни сметки.",
		log_message = "${name} ${action} ${amount}",
		action_withdraw = "изтегля",
		action_deposit = "депозира",
		withdraw = "Изтегляне",
		deposit = "Депозиране",
		amount = "Сума",
		account_name = "Име на сметка",
		actions = "Действия",
		access = "Достъп",
		logs = "Записи за транзакции",
		no_logs = "Няма записи за транзакции.",
		no_access = "Никой освен вас няма достъп до тази сметка.",
		add_cid = "Добавяне на CID...",
		failed_add_access = "Неуспешно добавяне на достъп.",
		invalid_character_id = "Невалидно или неизвестно ID на герой.",
		failed_remove_access = "Неуспешно премахване на достъп.",
		failed_withdraw = "Неуспешно изтегляне.",
		failed_deposit = "Неуспешно депозиране.",
		failed_create = "Неуспешно създаване на сметка за спестявания.",
		failed_delete = "Неуспешно изтриване на сметка за спестявания.",
		insufficient_balance = "Недостатъчен баланс на сметката.",
		insufficient_bank_balance = "Недостатъчен банков баланс.",
		account_description = "Само собственикът на сметката може да я изтрие и управлява. Хора с достъп до сметката могат само да изтеглят и депозират. Можете да създадете до 5 различни сметки за спестявания.",

		add_access_logs_title = "Добавете достъп до спестовния сметка",
		add_access_logs_details = "${consoleName} даде достъп на `${firstName} ${lastName}` #${characterId} до спестовния сметка ${accountId}.",
		remove_access_logs_title = "Премахнете достъп до спестовния сметка",
		remove_access_logs_details = "${consoleName} премахна достъпа за #${characterId} до спестовния сметка ${accountId}.",
		create_account_logs_title = "Създайте спестовна сметка",
		create_account_logs_details = "${consoleName} създаде нова спестовна сметка с името `${accountName}` с идентификационен номер ${accountId}.",
		deleted_account_logs_title = "Изтриване на сметка за спестявания",
		deleted_account_logs_details = "${consoleName} изтри ${accountName} спестяване, с идентификационен номер ${accountId}.",
		withdraw_logs_title = "Теглене от спестявания",
		withdraw_logs_details = "${consoleName} изтеглените $${amount} от спестявания, с идентификационен номер ${accountId}.",
		deposit_logs_title = "Депозиране в спестявания",
		deposit_logs_details = "${consoleName} депозирани $${amount} в спестявания, с идентификационен номер ${accountId}."
	},

	scoreboard = {
		player_list = "Списък с играчи",
		players = "Играчи",
		total = "Общо",
		total_staff = "Общо (Администратори)",
		recent_disconnections = "Скорошни изключвания",
		disconnected_player = "Изключен играч",
		id = "ИД",
		name = "Име",
		identifier = "Идентификатор",
		reason = "Причина",
		time_since_disconnection = "Време от изключването",

		you_are_now_metagaming = "Сега превключихте на Metagaming.",
		you_are_no_longer_metagaming = "Вече не сте в режима на Metagaming.",

		server_id_hide_failed = "Неуспешно скриване на идентификатора на сървъра.",
		server_id_hidden = "Твоето идентификационно номер на сървъра вече е скрито.",
		server_id_not_hidden = "Твоето идентификационно номер на сървъра вече не е скрито."
	},

	screenshots = {
		screenshot_created = "Успешно бе създадена снимка на екрана.",
		screenshot_failed = "Неуспешно се получи снимка от дадения потребител.",
		screencapture_created = "Успешно бе създадена заснетият екран.",
		user_not_found_with_server_id = "Не може да се намери потребител с даденото идентификационно номер на сървъра.",
		invalid_lifespan_parameter = "Невалиден параметър за продължителността на живота.",
		invalid_server_id_parameter = "Невалиден параметър за идентификационния номер на сървъра.",
		invalid_duration_parameter = "Невалиден параметър за продължителността.",
		invalid_fps_parameter = "Невалиден параметър за fps.",
		missing_server_id_parameter = "Липсва параметър за идентификатора на сървъра.",

		screenshot_error_client_false = "Неуспешно създаване на снимка",
		screenshot_error_user_not_found = "Потребителят не е намерен.",
		screenshot_error_user_developer = "Потребителят е разработчик.",
		screenshot_error_no_token = "Неуспешно получаване на opfw токен.",
		screenshot_timeout = "Времето за заявка за снимка изтече.",
		screenshot_error_character_unloaded = "Потребителят напусна сървъра или изгрузи героя си.",
		screenshot_error_blackscreen = "Неуспешно снимане: потребителят има черен екран.",
		screenshot_error_invalid_response = "Невалиден отговор от API-то."
	},

	screenshots_create = {
		on_standby = "Снимане (Приготвеност)",
		paused = "Снимане (Спряно)",
		screenshots_taken = "Вие направихте ${screenshotsTaken} снимки. От тях, ${screenshotsTakenNow} бяха направени сега.",
		press_to_exit = "Натиснете ESC, за да спрете снимането.",
		keep_holding_to_exit = "Задръжте ESC (${seconds} сек.) за да спрете снимането.",
		exiting = "Излизане...",
		problems = "Проблеми:",
		profile_gamma_not_18 = "Вашата настройка за 'гама' не е зададена на стойността по подразбиране. Това намалява съгласуваността и качеството на изображенията, генерирани от вашия клиент. За да го оправите, напишете 'profile_gamma 18' във вашата конзола F8. Няма да получавате работа, докато не го направите. За да го направите, трябва да бъдете в версията 'бета' или 'най-новата' на FiveM. Можете да го промените от основното меню на FiveM.",
		banned = "Забранен:",
		banned_information = "Някои играчи създават изображения, които не отговарят на очакванията. Това намалява еднородността на портретите и селфитата. Това обикновено се случва, когато разделителната способност е твърде ниска, графичните настройки са твърде ниски или се използват визуални модификации. Визуалните модификации са приемливи, но прекомерно наситените или слабо наситените визуали не са. Визуалните модификации обикновено правят твърде ярки цветове или прекалено бледи цветове (правят героите да изглеждат мъртви на портретите).",
		banned_unban = "Ако искате да продължите да правите снимки, можете да се разбаните до 3 пъти. Преди това обаче трябва да подобрите графичните настройки на играта си, за да избегнете повторно забраняване. Увеличаването на графичните настройки и намаляването на интензивността на визуалните модове ще помогне.",
		unban = "Разблокиране (${unbansLeft} оставащи)",

		screenshotting_start_logs_title = "Започване на снимане",
		screenshotting_start_logs_details = "${consoleName} стартира снимането.",

		screenshotting_stop_logs_title = "Спиране на снимане",
		screenshotting_stop_logs_details = "${consoleName} спира снимането.",

		user_does_not_exist = "Този потребител не съществува.",
		screenshotter_already_banned = "Този снимач вече е забранен.",
		screenshotter_banned = "Този снимач е вече забранен."
	},

	scuba = {
		sunken_ship = "Потънал кораб",
		broken_pipeline = "Счупена тръбопровод",
		gather_item = "Събиране на предмет (${distance}м)",

		collected_junk = "Събрано боклук.",
		collected_item = "Събрано ${itemLabel}.",
		collected_broken_item = "Събрано счупен ${itemLabel}.",

		collected_scuba_item_logs_title = "Събрано скуба снаряжение",
		collected_scuba_item_logs_details = "${consoleName} събра предмет за гмуркане и получи `${itemName}`."
	},

	scuba_gear = {
		equipping_scuba_tank = "Сложете гмуркане танк",
		equipping_scuba_mask = "Сложете гмуркане маска"
	},

	security_cameras = {
		illegal_security_camera = "Опитва се да се намеси с незаконни камери за охрана.",
		saved_security_cameras_to_file = "Запазени са `${amount}` камери за охрана във файл на сървъра.",
		no_nearby_security_cameras = "Няма близки камери за охрана за запазване.",
		no_city_ping = "Неуспешно пингване на камерите на града.",
		offline = "Извън линия",
		camera_list = "Списък с камери",
		camera = "Камера ${cameraId}",
		mission_row_pd = "Мишън Роу ПД",
		pillbox_hospital = "Болница Пилбокс",
		jewelry_store = "Магазин за бижута в Рокфорд Хилс",
		principal_bank = "Главна банка",
		bolingbroke_penitentiary = "Затвор Болинбрук",
		fort_zancudo = "Форт Занкудо",
		del_perro_pier = "Дел Перо Пиър",
		flywheels_garage = "Гараж Флайуийълс",
		sandy_shores_pd = "Санди Шорс ПД",
		sandy_shores_hospital = "Санди Шорс Болница",
		davis_sheriffs_station = "Шерифска станция Дейвис",
		vespucci_pd = "Полицейска станция Веспучи",
		rockford_hills_pd = "Полицейска станция в Рокфорд Хилс",
		la_mesa_pd = "Полицейска станция Ла Меса",
		beaver_bush_ranger_station = "Станция на парка рейнджърите Бивър Буш",
		cinema = "Кино",
		st_fiacre_hospital = "Болница Свети Фаякър",
		weazel_news = "Новини Уийзъл",
		palomino_fib_facility = "Сграда на ФИБ в Паломино",
		bank_1 = "Банка Легион Скуеър",
		bank_2 = "Банка в Рокфорд Хилс",
		bank_3 = "Банка в Алта",
		bank_4 = "Банка в Бъртън",
		bank_5 = "Банка в Банам Каньон",
		bank_6 = "Банка в Гранд Сенора",
		bank_7 = "Банка в Палето Бей",
		grocery_store_1 = "Дейвис ООД Бензиностанция",
		grocery_store_2 = "Струбери 24/7",
		grocery_store_3 = "Мърриета Хайтс Робс Ликър",
		grocery_store_4 = "Литъл Сеул ООД Бензиностанция",
		grocery_store_5 = "Веспучи Канали Робс Ликър",
		grocery_store_6 = "Морнингууд Робс Ликър",
		grocery_store_7 = "Мирър Парк ООД Бензиностанция",
		grocery_store_8 = "Даунтаун Вайнууд 24/7",
		grocery_store_9 = "Татавиам Маунтинс 24/7",
		grocery_store_10 = "Банхам Каньон Робс Ликър",
		grocery_store_11 = "Банхам Каньон 24/7",
		grocery_store_12 = "Ричман Глен ООД Бензиностанция",
		grocery_store_13 = "Chumash 24/7",
		grocery_store_14 = "Harmony 24/7",
		grocery_store_15 = "Grand Senora Rob's Liquor",
		grocery_store_16 = "Grand Senora 24/7",
		grocery_store_17 = "Sandy Shores Liquor Ace",
		grocery_store_18 = "Sandy Shores 24/7",
		grocery_store_19 = "Grapeseed LTD Gasoline",
		grocery_store_20 = "Mount Chiliad 24/7",

		-- NOTE: add-on
		paleto_247 = "Paleto Bay 24/7"
	},

	self_driving = {
		not_driving_a_vehicle = "В момента не управлявате превозно средство.",
		not_a_self_driving_vehicle = "Превозното средство, с което управлявате, не поддържа автопилот.",
		no_waypoint_set = "Моля, поставете маркер като целева точка.",
		invalid_waypoint_set = "Маркерът, който поставихте, не може да бъде достигнат автоматично.",
		self_driving_engaged = "Автопилотът е активиран. Натиснете SHIFT и CTRL, за да контролирате скоростта на кръстосването.",
		self_driving_disengaged = "Автопилотът е деактивиран.",
		destination_too_close = "Маркираната цел е твърде близо.",
		self_driving_could_not_be_engaged = "Автопилотът не може да бъде активиран."
	},

	shield = {
		no_weapon_equipped = "Трябва да имате оръжие оборудвано, за да поставите балистичният щит.",
		no_shield = "Нямате балистичен щит в инвентара си."
	},

	shockwaves = {
		create_shockwave_missing_permissions = "Играчът се опита да създаде шокова вълна, но нямаше необходимите разрешения.",
		push_player_missing_permissions = "Играчът се опита да отбутне друг играч, но нямаше необходимите разрешения.",
		shockwave_success = "Успешно се създаде шокова вълна.",
		shockwave_failed = "Неуспешно създаване на шокова вълна.",

		push_player_success = "Успешно отбутнат играч.",
		push_player_failed = "Неуспешно отбутване на играч."
	},

	shooting_ranges = {
		turn_on = "Включи ($${cost})",
		turn_off = "Изключи",
		toggle_through_targets = "Превключване през целите (${modelId})",
		speed = "Скорост (${speedLevel})",
		rotation = "Завъртане (${rotationLevel})",
		clear_bullet_impacts = "Изчистване на отметките от куршуми",
		not_enough_cash = "Нямате достатъчно налични средства."
	},

	shopkeepers = {
		tag_nancy = "~b~Д-р Нанси"
	},

	shrooms = {
		press_to_pick_up_shrooms = "Натиснете ~INPUT_CONTEXT~, за да съберете гъби.",
		picking_up_shrooms = "Събиране на Шампиньони.",
		press_to_sell_shrooms = "Натиснете ~INPUT_CONTEXT~, за да продадете Шампиньоните.",
		local_not_interested = "Местният не изглежда заинтересован в момента.",
		not_interested = "Този местен не изглежда заинтересован от вашите Шампиньони.",
		selling_shrooms = "Продажба на Шампиньони.",
		shrooms_not_ripe = "Тези Шампиньони не изглеждат узрели още, може би ги оставете да постоят малко повече.",
		shroom_id = "шампиньон-${shroomId}",

		sold_shrooms_logs_title = "Продадени гъби",
		sold_shrooms_logs_details = "${consoleName} продаде 1 бройка гъби за $${reward}.",
		picked_shroom_logs_title = "Събрана гъба",
		picked_shroom_logs_details = "${consoleName} събра 1 бройка гъба."
	},

	skylift = {
		press_to_toggle_magnet = "Натиснете ~INPUT_CONTEXT~, за да превключите магнита.",
		skylift_magnet_turned_off_logs_title = "Изключване на магнита на Скайлифт",
		skylift_magnet_turned_off_logs_details = "${consoleName} изключи магнита на Skylift.",
		skylift_magnet_turned_on_logs_title = "Включен магнит на Skylift",
		skylift_magnet_turned_on_logs_details = "${consoleName} включи магнита на Skylift.",
		skylift_attached_vehicle_logs_title = "Свързано превозно средство с Skylift",
		skylift_attached_vehicle_logs_details = "${consoleName} свърза превозно средство със своя Skylift."
	},

	smell = {
		smelling = "Усещане на миризма",

		smell_1 = "слаб",
		smell_2 = "умерен",
		smell_3 = "силен",
		smell_4 = "опустошителен",

		smell_weed = "Вие усещате мирис на марихуана. Мирисът е ${intensity}.",
		smell_alcohol = "Вие усещате алкохолен мирис. Мирисът е ${intensity}.",

		smell_nothing = " Не се усеща нищо необичайно."
	},

	smoothies = {
		blend = "Смесване",
		close = "Затвори",

		use_blender = "[${InteractionKey}] Използвай Блендер",
		blending = "Смесване",
		no_ingredients = "Нямате никакви съставки, за да направите смути.",

		milkshake_label = "Млечен коктейл (${flavors})",
		smoothie_label = "Смути (${flavors})",
		seperator = "и"
	},

	snow = {
		hold_to_pick_up_snowballs = "Натиснете и задръжте бутона ~INPUT_CONTEXT~, за да вземете сняговалби."
	},

	sound_effects = {
		invalid_sound = "Невалиден звук."
	},

	spawn = {
		spawn_now = "Използвайте сега",
		last_position = "Последна позиция",

		train_station = "Гара",
		city_bus_station = "Градски автобус / микробус",
		paleto_bay_bus_station = "Автогара Палето Бей",

		mission_row_police_station = "Полицейска станция Роу Мишън",
		sandy_police_station = "Полицейска станция Сенди Шорс",
		paleto_police_station = "Полицейска станция Палето Бей",
		cayo_police_station = "Полицейска станция Кайо Перико",

		mount_zonah = "Болница Маунт Зона",
		sandy_hospital = "Болница Сенди Шорс",
		paleto_hospital = "Болница Палето Бей",
		cayo_station = "Медицинска постоянка Кайо",

		battle_royale = "Битка на смъртта"
	},

	special_imports = {
		special_imports_blip = "Специални вносове",

		purchased_vehicle = "Успешно закупихте ${label} за $${price}. Превозното средство е добавено във вашата гаража.",

		something_went_wrong = "Нещо се обърка.",
		not_enough_money = "Нямате достатъчно пари.",
		invalid_package = "Невалидно ниво на пакета. (Необходим е ниво Божествено)",

		dealership_closed = "Салонът в момента е затворен.",

		purchased_vehicle_logs_title = "Специални вносове",
		purchased_vehicle_logs_details = "${consoleName} закупи специално вносно превозно средство `${modelName}` за ${price} (Номер: `${plate}`).",

		marker_label = "${label} | ${stock} наличност | Цена: $${price}",
		marker_label_purchase = "[${SeatEjectKey}] Купете ${label} за $${price}",
		marker_label_purchase_timer = "[${timer}с] Задръжте ${SeatEjectKey} за закупуване на ${label} за $${price}",

		vehicle_sold_out = "${label} | Няма налични бройки"
	},

	spectating = {
		cannot_spectate_self = "Не можеш да наблюдаваш себе си.",
		failed_spectate = "Неуспешно наблюдение на играч.",
		player_not_exist = "Играчът е извън линия.",
		no_character_loaded = "Играчът няма зареден персонаж.",
		not_same_instance = "Играчът не е в същата инстанция като вас.",
		no_user_or_character = "Играчът е извън линия или няма зареден персонаж.",

		resolving_player = "Разрешаване на играч",
		loading_coords = "Зареждане на координати",
		preloading_area = "Предварително зареждане на зона",
		finding_player = "Търсене на играч",

		character_unloaded = "~r~Персонажът не е зареден~w~",
		character_spawning = "~y~Персонажът се отрежда~w~",

		invincibility_active = "Неуязвимост: ~r~Активна~w~",
		invincibility_inactive_dead = "Неуязвимост: ~g~Активна~w~ (мъртъв)",
		invincibility_inactive_trunk = "Неуязвимост: ~g~Активна~w~ (багажник)",
		invincibility_inactive = "Неранимост: ~g~Неактивна~w~",

		health_ok = "Здраве: ~g~${health} / ${maxHealth}~w~ - ${percentage}",
		health_bad = "Здраве: ~r~${health} / ${maxHealth}~w~ - ${percentage}",
		bleeding = "~w~ - ~r~Кървене",

		armor_ok = "Броня: ~g~${armor} / ${maxArmor}~w~ - ${percentage}",
		armor_bad = "Броня: ~r~${armor} / ${maxArmor}~w~ - ${percentage}",

		vehicle_health_fuel = "МПС - Гориво: ${health} ~w~- ${fuel}",
		can_respawn = "Може да прероди: ${remaining}",
		yes = "~g~Да",

		speed = "Скорост: ${speed}",

		exit_spectate = "Натиснете ~g~${InteractionKey}~w~, за да излезете от режима на преглед",

		spectate_logs_title = "Започване на преглед",
		spectate_logs_details = "${consoleName} започна преглед на ${targetUser}.",

		spectate_stopped_logs_title = "Прекратяване на преглед",
		spectate_stopped_logs_details = "${consoleName} прекрати прегледа."
	},

	spying = {
		microphone_bug_not_activated = "Тази простотия не е активирана.",
		vehicle_tracker_not_activated = "Този проследяващ устройство не е активиран.",
		microphone_bug_active_with_battery = "Тази простотия за микрофон е в момента активна. Батерията е на ${batteryPercentage}%. Можете да я „Използвате“, за да слушате разговорите, които може да пърхотва.<br><br>ID на устройството: ${deviceId}.",
		microphone_bug_ran_out_of_battery = "Този микрофонен баг е изтощен от батерия. Физическия микрофонен баг ще се разпадне след една седмица.<br><br>Device Id: ${deviceId}.",
		vehicle_tracker_active_with_battery = "Този проследител на превозно средство е в момента активен. Батерията му е на ${batteryPercentage}%. Докато пътното превозно средство, към което е прикрепен, е налично, то ще се показва на картата ви.<br><br>Device Id: ${deviceId}.",
		vehicle_tracker_ran_out_of_battery = "Този проследител на превозно средство е изтощен от батерия. Физическият проследител на превозното средство ще се разпадне след една седмица.<br><br>Device Id: ${deviceId}",
		scanning_for_devices = "Сканиране за устройства",
		searching_for_devices = "Търсене на устройства",
		no_nearby_vehicle = "Няма близък автомобил.",
		placing_vehicle_tracker = "Поставяне на проследяващо устройство за автомобил",
		error_using_vehicle_tracker = "Възникна грешка при опит за поставяне на проследяващо устройство за автомобил.",
		vehicle_tracker_placed = "Простледяващото устройство за автомобил беше успешно поставено.",
		error_using_microphone_bug = "Възникна грешка при опит за поставяне на микрофонен бъг.",
		microphone_bug_placed = "Микрофонният бъг беше успешно поставен.",
		placing_microphone_bug_on_vehicle = "Поставяне на закрилник на превозното средство",
		placing_microphone_bug_on_player = "Поставяне на закрилник на играча",
		placing_microphone_bug_on_ground = "Поставяне на закрилник на земята",
		error_using_device_scanner = "Възникна грешка при опит за използване на скенера за устройства.",
		error_searching_for_devices = "Възникна грешка при опит за търсене на устройства.",
		found_devices = "Намерени са ${totalDevices} устройства.",
		no_nearby_devices_found = "Не са открити близките устройства.",
		microphone_bug = "Закрилник с микрофон",
		microphone_bug_destroy = "Закрилник с микрофон\n[${InteractionKey}] Унищожаване",
		vehicle_tracker = "Тракер за превозно средство",
		vehicle_tracker_destroy = "Тракер за превозно средство\n[${InteractionKey}] Унищожаване",
		radio_jammer = "Устройство за блокиране на радиосигнали",
		destroying_device = "Унищожаване на устройството",
		tracker_will_appear_on_map = "Този тракер вече е активиран. Ще се появи на картата ви докато превозното средство е налично и тракерът има батерия.",
		spy_ui_info = "Слушане на микрофонния бъг (#${deviceId})",
		spy_ui_location = "${location}, ${time}",
		spy_ui_exit = "Натиснете ESC, за да излезете от микрофонния бъг",
		spy_ui_connecting = "Свързване към микрофонния бъг (#${deviceId})",
		spy_ui_connection_failed = "Неуспешно свързване с микрофона Бъг (#${deviceId})",
		spy_ui_awaiting_data = "Изчакване на данни...",
		spy_ui_data_failed = "Грешка в данните"
	},

	starter_car = {
		follow_the_checkpoints = "Вашето лично превозно средство е паркирано наблизо. Следвайте маркировките, за да го намерите.",

		received_logs_title = "Получено стартирано превозно средство",
		received_logs_details = "${consoleName} е получилo стартирано превозно средство (Модел: ${modelName})."
	},

	status = {
		status_reset = "Успешно нулиране на статуса за ${consoleName}.",
		status_reset_failed = "Не е намерен потребител със сървър ID `${serverId}`.",
		status_reset_for_all = "Успешно нулиране на статуса за всички.",
		status_disabled = "Изключени статуси (стрес, глад и жажда).",
		status_enabled = "Включени статуси (стрес, глад и жажда).",
		failed_to_set_body_armor_level = "Неуспешно изпълнение на командата `/set_body_armor`.",
		set_body_armor_level_player = "Успешно задаване на нивото на бронята на ${consoleName} на `${bodyArmorLevel}`.",
		set_body_armor_level_everyone = "Успешно задаване на нивото на бронята на всички на `${bodyArmorLevel}`.",
		set_body_armor_level_self_title = "Задайте ниво на броня за себе си",
		set_body_armor_level_self_details = "${consoleName} зададе нивото на своята броня на `${bodyArmorLevel}`.",
		set_body_armor_level_everyone_title = "Задайте ниво на броня за всички",
		set_body_armor_level_everyone_details = "${consoleName} зададе нивото на бронята за всички на `${bodyArmorLevel}`.",
		set_body_armor_level_player_title = "Задайте ниво на броня за играч",
		set_body_armor_level_player_details = "${consoleName} актуализира ${targetConsoleName} и зададе нивото на бронята им на `${bodyArmorLevel}`.",
		stress_level_warning = "Вие сте стресиран! Намалете стреса си, като пушите цигари, джойнти или правите ангажименти като йога."
	},

	streamer_mode = {
		enabled_streamer_mode = "Режим на поточно възпроизвеждане активиран.",
		disabled_streamer_mode = "Режим на поточно възпроизвеждане деактивиран."
	},

	sync = {
		missing_hour = "Липсва указан час.",
		invalid_hour = "Невалиден час за настройка на местно време. Стойността трябва да е между 0:00 и 23:59.",
		hour_changed = "Часът е променен на `${hour}`.",

		local_time_override_enabled = "Настройване на местното време на ${hour}:${minute}.",
		local_time_override_disabled = "Връщане на местното време на настройките по подразбиране.",
		local_weather_override_enabled = "Задай локалната метеорология на `${weatherName}`.",
		local_weather_override_disabled = "Възстанови локалната метеорология на стойността по подразбиране.",

		missing_minute = "Липсва минута.",
		invalid_minute = "Минутата `${minute}` не е валидна. Стойността трябва да бъде между 0 и 59.",
		minute_changed = "Минутата е зададена на `${minute}`.",

		missing_weather = "Липсва метеорологията.",
		invalid_weather = "Метеорологията `${weatherName}` не е валидна. Валидни имена за метеорология са CLEAR, EXTRASUNNY, CLOUDS, OVERCAST, RAIN, CLEARING, THUNDER, SMOG, FOGGY, XMAS, SNOWLIGHT и BLIZZARD.",
		weather_changed = "Времето сега е зададено на `${weatherName}`.",
		weather_advanced = "Времето е превъртяно напред до `${weatherName}`.",
		weather_advance_fail = "Неуспешно превъртане на времето напред.",

		time_frozen = "Времето сега е замразено.",
		time_unfrozen = "Времето вече не е замразено.",

		weather_frozen = "Времето сега е замразено.",
		weather_unfrozen = "Времето вече не е замразено.",

		blackout_enabled = "В момента има прекъсване на електрозахранването в града.",
		blackout_disabled = "Вече няма прекъсване на електрозахранването в града.",

		weather_changed_title = "Промяна на времето",
		weather_changed_details = "${consoleName} промени времето на `${weatherName}`.",

		weather_changed_success = "Успешно променено време на `${weatherName}`.",
		weather_change_failed = "Неуспешна промяна на времето.",
		weather_parameter_invalid = "Невалиден параметър weatherName.",
		weather_parameter_missing = "Липсващ параметър weatherName.",

		time_parameters_invalid = "Невалиден час или минута.",
		time_currently_transitioning = "В момента има преход на времето, моля, изчакайте.",
		time_successfully_transitioned = "Успешно премина времето на `${hour}:${minute}`.",
		time_successfully_set = "Успешно зададено време `${hour}:${minute}`.",

		developer_ambience_on = "Атмосфера на разработчик включена.",
		developer_ambience_off = "Атмосфера на разработчик изключена."
	},

	tablet = {
		you_dont_have_a_tablet = "Нямате таблет.",

		app_snake = "Змия",
		app_tetris = "Тетрис",
		app_chess = "Шах",
		app_minesweeper = "Минно поле",
		app_flappy_bird = "Flappy Bird",
		app_geoguesser = "Geo-Guesser",
		app_pdm = "Каталог PDM",
		app_edm = "Каталог EDM",
		app_cat_pictures = "Снимки на котки",

		folder_games = "Игри",
		folder_productivity = "Продуктивност",

		high_scores = "Табела с високи резултати",

		snake_title = "Змия",
		snake_description = "Използвайте стрелките, за да се движите нагоре, надолу, наляво и надясно.",
		snake_start_game = "Започни игра",
		snake_difficulty = "Трудност:",
		snake_difficulty_easy = "Лесно",
		snake_difficulty_medium = "Средно",
		snake_difficulty_hard = "Трудно",

		snake_game_over = "Играта приключи!",
		snake_over_description = "Крайен резултат: ${score}.",
		snake_new_game = "Нова игра",

		tetris_description = "Използвайте стрелките, за да се движите наляво и надясно.",
		tetris_play = "Нова игра",
		tetris_game_over = "Играта приключи",
		tetris_restart = "Рестарт",
		tetris_score = "Резултат",

		chess_title = "Шах",
		chess_your_turn = "Твой ред",
		chess_ai_turn = "Изкуственият интелект мисли",
		chess_you_lost = "Загуби",
		chess_you_won = "Печели",
		chess_draw = "Равен",

		chess_play_as = "Играй като:",
		chess_play_as_b = "Черни",
		chess_play_as_w = "Бели",
		chess_difficulty = "Трудност:",
		chess_difficulty_level = "Ниво ${level}",
		chess_start = "Започни Игра",

		flappy_bird_title = "Флапи Птичка",
		flappy_bird_score = "Крайен резултат:",
		flappy_bird_game_over = "Край на играта",
		flappy_bird_start = "Натиснете платното, за да започнете"
	},

	tattoos = {
		tattoos_refreshed = "Татуировките са обновени.",
		something_went_wrong = "Нещо се обърка.",
		user_does_not_have_sent_character_loaded = "Потребителят няма зареден изпратен герой.",
		user_has_no_character_loaded = "Потребителят няма зареден герой.",
		user_not_found = "Изпратеният потребител не бе намерен на сървъра.",
		invalid_character_id = "Изпратеният невалиден идентификатор на герой.",
		invalid_license_identifier = "Изпратеният невалиден идентификатор на лиценз."
	},

	teleporters = {
		enter_mechanic_shop = "Влезте в автосервиз",
		enter_mechanic_shop_interact = "[${InteractionKey}] Влезте в автосервиз",

		exit_mechanic_shop = "Излезте от автосервиза",
		exit_mechanic_shop_interact = "[${InteractionKey}] Излезте от автосервиза",

		enter_coroner = "Влезте в моргата",
		enter_coroner_interact = "[${InteractionKey}] Влезте в моргата",

		exit_coroner = "Излезте от моргата",
		exit_coroner_interact = "[${InteractionKey}] Излезте от моргата",

		enter_fib = "Влезте в ФБР",
		enter_fib_interact = "[${InteractionKey}] Влезте в ФБР",

		exit_fib = "Излезте от ФБР",
		exit_fib_interact = "[${InteractionKey}] Изход от ФИБ",

		enter_iaa_base = "Влезте в основата на ИАА",
		enter_iaa_base_interact = "[${InteractionKey}] Влезте в основата на ИАА",

		exit_iaa_base = "Излезте от основата на ИАА",
		exit_iaa_base_interact = "[${InteractionKey}] Излезте от основата на ИАА",

		enter_server_room = "Влезте в стаята на сървърите",
		enter_server_room_interact = "[${InteractionKey}] Влезте в стаята на сървърите",

		exit_server_room = "Излезте от стаята на сървърите",
		exit_server_room_interact = "[${InteractionKey}] Излезте от стаята на сървърите",

		enter_warehouse_shop = "Влезте в складовата магазин",
		enter_warehouse_shop_interact = "[${InteractionKey}] Влезте в склада",

		exit_warehouse_shop = "Излезте от склада",
		exit_warehouse_shop_interact = "[${InteractionKey}] Излезте от склада",

		enter_office_shop = "Влезте в офиса",
		enter_office_shop_interact = "[${InteractionKey}] Влезте в офиса",

		exit_office_shop = "Излезте от офиса",
		exit_office_shop_interact = "[${InteractionKey}] Излезте от офиса",

		enter_cocaine_lab = "Влезте в кокаиновата лаборатория",
		enter_cocaine_lab_interact = "[${InteractionKey}] Влезте в кокаиновата лаборатория",

		exit_cocaine_lab = "Излезте от кокаиновата лаборатория",
		exit_cocaine_lab_interact = "[${InteractionKey}] Излез от Кокаиновата лаборатория",

		enter_mayor_office = "Влезте в Кабинета на Кмета",
		enter_mayor_office_interact = "[${InteractionKey}] Влезте в Кабинета на Кмета",

		exit_mayor_office = "Излезте от Кабинета на Кмета",
		exit_mayor_office_interact = "[${InteractionKey}] Излезте от Кабинета на Кмета",

		enter_exclusive_dealership = "Влезте в Ексклузивния Автосалон",
		enter_exclusive_dealership_interact = "[${InteractionKey}] Влезте в Ексклузивния Автосалон",

		exit_exclusive_dealership = "Излезте от Ексклузивния Автосалон",
		exit_exclusive_dealership_interact = "[${InteractionKey}] Изход от ексклузивния автомобилен дилър",

		enter_casino = "Вход в казино",
		enter_casino_interact = "[${InteractionKey}] Вход в казино",

		exit_casino = "Изход от казино",
		exit_casino_interact = "[${InteractionKey}] Изход от казино",

		enter_roof = "Вход на покрива",
		enter_roof_interact = "[${InteractionKey}] Вход на покрива",

		exit_roof = "Изход от покрива",
		exit_roof_interact = "[${InteractionKey}] Изход от покрива",

		enter_penthouse = "Вход в пентхаус",
		enter_penthouse_interact = "[${InteractionKey}] Вход в пентхаус",

		exit_penthouse = "Изход от пентхауса",
		exit_penthouse_interact = "[${InteractionKey}] Изход от пентхауса",

		enter_parking_garage = "Влизане в паркинг гараж",
		enter_parking_garage_interact = "[${InteractionKey}] Влизане в паркинг гараж",

		exit_parking_garage = "Излизане от паркинг гараж",
		exit_parking_garage_interact = "[${InteractionKey}] Излизане от паркинг гараж",

		enter_surgery = "Влизане в операционната",
		enter_surgery_interact = "[${InteractionKey}] Влизане в операционната",

		exit_surgery = "Изход от операционната",
		exit_surgery_interact = "[${InteractionKey}] Изход от операционната",

		enter_icu = "Влезте в ICU",
		enter_icu_interact = "[${InteractionKey}] Влезте в ICU",

		exit_icu = "Излезте от ICU",
		exit_icu_interact = "[${InteractionKey}] Излезте от ICU",

		enter_underground_tunnel = "Влезте в подземния тунел",
		enter_underground_tunnel_interact = "[${InteractionKey}] Влезте в подземния тунел",

		exit_underground_tunnel = "Излезте от подземния тунел",
		exit_underground_tunnel_interact = "[${InteractionKey}] Излезте от подземния тунел",

		use_secret_tunnel_exit = "Използвайте тайния изход",
		use_secret_tunnel_exit_interact = "[${InteractionKey}] Използвайте тайния изход",

		enter_hangar = "Влезте в хангара",
		enter_hangar_interact = "[${InteractionKey}] Влезте в хангара",

		exit_hangar = "Излезте от хангара",
		exit_hangar_interact = "[${InteractionKey}] Излезте от хангара",

		enter_loading_bay = "Влезте в товаровозното помещение",
		enter_loading_bay_interact = "[${InteractionKey}] Влезте в товаровозното помещение",

		exit_loading_bay = "Излезете от товаровозното помещение",
		exit_loading_bay_interact = "[${InteractionKey}] Излезете от товаровозното помещение",

		enter_submarine = "Влезте в подводния кораб",
		enter_submarine_interact = "[${InteractionKey}] Влезте в подводния кораб",

		exit_submarine = "Излезте от подводния кораб",
		exit_submarine_interact = "[${InteractionKey}] Излезте от подводния кораб"
	},

	test_server = {
		menu_title = "Меню",

		vehicles = "Опции за превозни средства",
		spawn_car = "Спавн на кола",
		upgrade_vehicle = "Подобрете превозното средство",
		pop_tires = "Избухни гумите",
		detach_doors = "Откачи вратите",
		damage_vehicle = "Повреди превозното средство",
		repair_vehicle = "Поправи превозното средство",
		delete_vehicle = "Изтрий превозното средство",

		player = "Опции за играча",
		starve = "Гладувай себе си",
		feed = "Накарай себе си да яде",
		relief_stress = "Отпусни стреса",
		reset_health = "Нулирай здравето",
		remove_injuries = "Премахни нараняванията",

		teleport = "Опции за телепорт",
		teleport_to = "Телепортиране до",
		tp_legion = "Легион Квеър",
		tp_garage_a = "Гараж А",
		tp_paleto = "Палето Бей",
		tp_sandy = "Сенди Шорс",
		tp_zancudo = "Форт Занкудо",
		tp_airport = "Летище ЛС",
		tp_carrier = "Корабна база",
		tp_cayo = "Кайо Перико",

		actions = "Действия",
		wander_around = "Потръкване около",
		speed_around = "Бързо придвижване",
		clear_tasks = "Изчистване на задачи",

		you_are_not_in_a_vehicle = "В момента не сте в превозно средство.",
		you_are_in_a_vehicle = "В момента сте в превозно средство.",
		fully_upgraded = "Успешно ъпгрейднахте превозното средство.",
		just_spawned_a_car = "Току-що създадохте кола, изчакайте ${time} преди да създадете още една."
	},

	time_scale = {
		invalid_time_scale = "Стойността ${timeScale} е невалидна времева скала.",
		set_time_scale_missing_permissions = "Играчът се опита да зададе времевата скала, но нямаше необходимите права.",
		time_scale_set_to = "Установен е времевата скала на ${timeScale}.",
		time_scale_disabled = "Отменено е презаписването на времевата скала.",
		time_scale_already_set_to = "Времевата скала е вече зададена на ${timeScale}.",
		time_scale_is_already_disabled = "Презаписването на времевата скала вече е отменено."
	},

	titanic = {
		created_titanic = "Създадена е Титаник с време за потъване от ${sinkTime} минути(а).",
		failed_to_create_titanic = "Неуспешно създаване на Титаник.",
		create_titanic_missing_permissions = "Играчът опита да създаде Титаник, но нямаше необходимите разрешения."
	},

	top_down = {
		not_in_valid_vehicle = "Не се намирате в подходящо превозно средство (само коли/мотори).",
		top_down_on = "Активиран е изглед от горе.",
		top_down_off = "Изключен е изгледът от горе.",

		top_down_enabled_logs_title = "Изгледът от горе е активиран",
		top_down_enabled_logs_details = "${consoleName} включи изгледа от горе на камерата.",
		top_down_disabled_logs_title = "Изгледът от горе е изключен",
		top_down_disabled_logs_details = "${consoleName} изключи изгледа от горе на камерата."
	},

	trackers = {
		error_finding_tracker = "Възникна грешка при намирането на вашия проследител.",
		tracker_visible = "Вашият трекер е видим сега.",
		tracker_hidden = "Вашият трекер е скрит сега.",
		tracker = "Трекер",
		trackers = "Трекъри",
		stockade_robbery_tracker = "Камион Stockade (10-78)",
		tracked_vehicle = "Проследявано превозно средство (${trackerId})",
		tracked_player = "${displayName}",
		battle_royale_teammate = "${name}",
		tracker_character = "${firstName} ${lastName} (${departmentLabel})",
		tracker_character_unit_id = "${unitId}: ${firstName} ${lastName} (${departmentLabel})",
		trackers_in_category = "Трекърите ще бъдат сортирани по категории на картата.",
		trackers_split = "Тракерите вече ще бъдат разделени на отделни маркери.",

		department_sasp = "SASP",
		department_bcso = "BCSO",
		department_sahp = "SAHP",
		department_doc = "DOC",
		department_park_rangers = "Паркови страж",
		department_medical = "СМП",
		department_doctor = "Доктор",
		department_bcfd = "BCFD",

		department_police_undercover = "Скрит полицай",

		department_police_training = "Полицейско обучение",
		department_ems_training = "СМП обучение"
	},

	trading_cards = {
		access_store = "[${InteractionKey}] Достъп до магазин",

		buy_pack = "Купи ${packName}",
		store_title = "Магазин за карти",

		successfully_bought_pack = "Успешно закупени карти за търговия",
		failed_buy_pack = "Неуспешно закупуване на карти. Имате ли достатъчно пари?",

		just_showed_trading_cards = "Току-що показахте Търговска карта. Моля, изчакайте малко.",

		unpack_successfull = "Успешно отворихте тази карта.",
		failed_unpack = "Неуспешно отваряне на карта.",
		failed_unpack_no_cards = "Неуспешно отваряне на карта. Няма налични търговски карти.",

		edition = "Издание",
		rarity = "Рядкост",

		rarity_bronze = "Бронзова",
		rarity_silver = "Сребърна",
		rarity_gold = "Златен",
		rarity_holo = "Холо",
		rarity_foil = "Фолиран",
		rarity_relic = "Реликва",
		rarity_headache = "Главоболие",
		rarity_missprint = "Грешка",
		rarity_ethereal = "Етреален",
		rarity_promotional = "Промоционален",

		rarity_custom = "Персонализиран",

		press_to_access_buyback = "Натиснете ~INPUT_CONTEXT~ за да достъпите обратно към карта.",
		buyback_title = "Обратно към картата за търговия",
		close_menu = "Затвори менюто",
		sell_cards = "Продай всички карти с ${rarity} рядкост",

		failed_selling = "Неуспешно продаване на карти.",
		no_cards_of_type = "Нямате карти с рядкост ${rarity}.",
		successfully_sold_cards = "Продадени са ${amount} бр. карти с рядкост ${rarity} за $${earned}.",

		studio_blip = "945 Studios"
	},

	training = {
		on_team_attackers = "Вие сте нападател!\nОставащо време: ${time}",
		on_team_defenders = "Вие сте защитник!\nОставащо време: ${time}",
		attackers = "Нападатели:",
		defenders = "Защитници:",
		waiting_for_players = "Изчакване на още играчи.\nТрябва да има поне по един играч във всяки отбор.",
		none = "Няма",
		match_starting_in = "Мачът започва след ${seconds} секунди.",
		loading_match = "Изчакване играчите да заредят. Мачът ще започне след ${seconds} секунди.",
		attackers_help_text = "Убийте всички защитници преди да изтече времето, за да спечелите!",
		defenders_help_text = "Убийте всички нападатели или изчакайте да изтече времето, за да спечелите!",
		attacker = "НАПАДАЩ",
		defender = "ЗАЩИТНИК",
		attackers_won = "Нападателите спечелиха!",
		defenders_won = "Защитниците спечелиха!"
	},

	traps = {
		rearming = "Презареждане",
		press_to_rearm = "[${InteractionKey}] Презареди",
		rearm = "Презареди",
		e = "E"
	},

	treasure_maps = {
		no_treasure_map_with_tier = "Няма пътека към съкровище с ниво ${mapTier}.",
		treasure_map_does_not_have_piece = "Пътека към съкровище с ниво ${mapTier} няма част номер ${pieceNumber}.",

		sketchy_map = "Скетчирана карта",
		worn_map = "Износена карта",
		fancy_map = "Изискана карта",
		exquisite_map = "Изящна карта",

		map_piece_tier_1_description = "Изглежда, че под неприятно залепената гума има надпис.",
		map_piece_tier_2_description = "Доста автентично изглеждащ оскъден фрагмент от карта. Дори и мастилото да се разлива малко.",
		map_piece_tier_3_description = "Този фрагмент от карта блести малко на слънцето.",
		map_piece_tier_4_description = "Този сложен, красив фрагмент от карта мирише на пари.",

		map_tier_1_description = "Изглежда като ръчно написана скацирана на кърпичка. Пренебрегнете любопитната петна.",
		map_tier_2_description = "Тази карта е доста износена, но изглежда може да води до нещо добро.",
		map_tier_3_description = "Много хубава \"искряща\" карта с печат \"100% истинска\" в долния десен ъгъл.",
		map_tier_4_description = "Тази карта изглежда по-скъпа от повечето съкровища. Нека отидем!!!!",

		press_to_combine_pieces = "Натиснете ~INPUT_CONTEXT~, за да комбинирате части от карта ${mapTier}.",

		treasure_map = "Карта на съкровища (Тиер ${mapTier})"
	},

	tsunami = {
		the_ocean_scaler_intensity_already_set_to = "Интензитетът на океанския скалер вече е зададен на `${intensity}`.",
		no_ocean_scaler_intensity_set = "Вече е зададена нулева интензивност на мащабирането на океана.",
		set_ocean_scaler_to = "Интензивността на мащабирането на океана е зададена на `${intensity}`.",
		reset_ocean_scaler = "Възстанови интензивността на мащабирането на океана.",
		set_ocean_scaler_no_permission = "Играчът няма достатъчни права за задаване на интензивността на мащабирането на океана.",

		tsunami_started = "Цунами започна. Ще отнеме ${minutes} минути да наводни картата.",
		tsunami_stopped = "Цунамито спря."
	},

	tuner_shop = {
		purchase_label = "[${SeatEjectKey}] Купи ${label} за $${price}",
		purchase_label_far = "${label} | ${price}лв.",
		purchase_label_timer = "[${timer}] ${label} | ${price}лв.",
		purchase_label_sale = "[${SeatEjectKey}] Покупка на ${label} за ${price}лв. (-${discount}%)",
		purchase_label_sale_far = "На разпродажба | ${label} | ${price}лв. (-${discount}%)",
		purchase_label_sale_timer = "[${timer}] ${label} | ${price}лв. (-${discount}%)",

		failed_vehicle_spawn = "Неуспешно привеждане на превозното средство.",
		not_enough_funds = "Недостатъчно средства за завършване на покупката.",
		area_not_clear = "Зоната за привеждане не е свободна.",
		something_went_wrong = "Възникна проблем при опита за закупуване на превозното средство.",

		purchased_vehicle = "Закупено ${label} за $${price}.",

		tuner_shop_blip = "Тунинг магазин Midnight",

		log_title = "Закупуване от тунинг магазина",
		log_description = "Закупено е `${label}` за $${price}.",
		log_description_discount = "Закупено е `${label}` за $${price} с отстъпка от ${discount}%."
	},

	vape = {
		press_to_use = "Натиснете ~INPUT_CONTEXT~, за да вдигнете. Натиснете ~INPUT_FRONTEND_CANCEL~, за да спрете изпарителя."
	},

	vdm = {
		failed_vdm = "Неуспешно вдигане на играча.",
		invalid_entity = "Не може да намеря превозно средство или шофьор.",
		invalid_target = "Невалидна цел.",
		cleared_vdm = "Изчистени ${amount} VDM цели.",
		failed_vdm_clear = "Неуспешно изчистване на VDM целите.",
		added_vdm_target = "NPC с мрежов идентификатор ${networkId} сега е насочен към ${target}.",
		no_ped_available = "Няма наличен пешеходец в близост.",
		failed_steal = "Неуспешно открадване на превозно средство.",
		stealing_vehicle = "Беше издадена инструкция към близък пешеходец да открадне превозното средство (${distance}м).",
		no_waypoint = "Не е зададен целевия пътека.",
		success_drive_to = "Успешно насочено към маршрут.",
		failed_drive_to = "Неуспешно насочване към маршрут."
	},

	vending_machines = {
		vending_coffee = "Натиснете ~INPUT_CONTEXT~, за да закупите кафе. Цената е $${cost}.",
		vending_coffee_not_enough_cash = "Нямате достатъчно пари, за да закупите кафе. Цената е $${cost}.",
		vending_snack = "Натиснете ~INPUT_CONTEXT~, за да закупите малко храна. Цената е $${cost}.",
		vending_snack_not_enough_cash = "Нямате достатъчно пари, за да закупите малко храна. Цената е $${cost}.",
		vending_soda = "Натиснете ~INPUT_CONTEXT~, за да закупите сода. Цената е $${cost}.",
		vending_soda_not_enough_cash = "Нямате достатъчно пари, за да закупите сода. Цената е $${cost}.",
		vending_water = "Натиснете ~INPUT_CONTEXT~, за да закупите бутилка вода. Цената е $${cost}.",
		vending_water_not_enough_cash = "Нямате достатъчно пари, за да закупите Бутилка вода. Цената е $${cost}.",
		vending_machine_damaged = "Тази машина за автоматична продажба е повредена. Моля, проверете отново по-късно.",
		vending_water_cooler = "Натиснете ~INPUT_CONTEXT~, за да си вземете Купа вода.",

		refill_bottle = "Натиснете ~INPUT_CONTEXT~, за да напълните бутилката.",
		refilling_bottle = "Напълване на бутилка"
	},

	voice = {
		illegal_radio_frequency = "Опит за достъп до нелегални радио честоти.",
		voice_chat = "Гласов чат",
		voice_server_connected = "Свързване към гласовия сървър. Изпращане на гласови данни до съответните играчи.",
		voice_server_disconnected = "Свързването с гласовия сървър е прекъснато. Изчакване на връзка.",
		voice_muted = "Гласовият чат е заглушен.",
		voice_unmuted = "Гласовият чат е отключен.",
		broadcasting_voice_to_players = "Предаване на глас към играчите:",
		listening_to_virtual_players = "Слушане на виртуални играчи:",
		radio = "Радио",
		phone = "Телефон",
		muted_players = "Заглушени играчи:",
		connected = "Свързан: ${connected}",
		muted = "Заглушен: ${muted}",
		boolean_true = "Вярно",
		boolean_false = "Невярно",
		target_channel = "Целеви канал: ${targetChannel}",
		actual_channel = "Текущ канал: ${actualChannel}",
		target_radius = "Радиус на целта: ${targetRadius}",
		actual_radius = "Текущ радиус: ${actualRadius}",

		intent_music = "Задаване на режим на гласов вход 'музика'.",
		intent_speech = "Връщане на режима на гласов вход към 'реч'.",
		music_mode = "Режим 'Музика'",

		failed_toggle_listen = "Неуспешно превключване на статуса 'слушане'.",
		listeners = "Слушатели:",
		listening_to = "Слушане на:",

		failed_toggle_muted = "Неуспешно превключване на статуса 'приглушен'.",
		toggle_muted_on = "${consoleName} вече е приглушен в гласовия чат.",
		toggle_muted_off = "${consoleName} вече не е заглушен в гласовия чат.",

		affected_by_jammer = "Вашият радиоприемник изглежда е засегнат от помеха или нещо подобно.",

		listening_missing_permissions = "Играчът опита да промени състоянието на своето слушане, но няма необходимите разрешения.",
		voice_mute_missing_permissions = "Играчът опита да промени състоянието на заглушаването на друг играч, но няма необходимите разрешения.",

		music_mode_logs_title = "Превключено състояние на гласа",
		music_mode_logs_details_on = "${consoleName} промени своя режим на гласов вход на 'музика'.",
		music_mode_logs_details_off = "${consoleName} промени режима на гласов вход на 'говор'.",

		listening_logs_title = "Слушане",
		stopped_listening_logs_details = "${consoleName} започна да слуша ${targetConsoleName}.",
		started_listening_logs_details = "${consoleName} спря да слуша ${targetConsoleName}.",

		muted_logs_title = "Заглушен глас",
		muted_logs_details = "${consoleName} заглуши ${targetConsoleName} от гласовия чат.",
		unmuted_logs_details = "${consoleName} отключи ${targetConsoleName} от гласовия чат."
	},

	wallhack = {
		wallhack_on = "Включен wallhack.",
		wallhack_off = "Изключен wallhack.",

		wallhack_failed = "Неуспешно превключване на wallhack.",
		wallhack_everyone = "Успешно превключване на wallhack за всички.",
		wallhack_self = "Успешно превключване на wallhack за вас.",
		wallhack_player = "Успешно превключване на wallhack за ${displayName}.",

		wallhack_everyone_logs_title = "Активиран Wallhack за всички",
		wallhack_everyone_logs_details = "${consoleName} активира Wallhack за всички.",
		wallhack_player_logs_title = "Активиран Wallhack за играч",
		wallhack_player_logs_details = "${consoleName} активира Wallhack за ${targetConsoleName}.",
		wallhack_self_logs_title = "Активиран Wallhack за себе си",
		wallhack_self_logs_details = "${consoleName} активира Wallhack за себе си."
	},

	washrooms = {
		use_sink = "[${InteractionKey}] Използвай мивката",
		using_sink = "Използване на мивката"
	},

	weed_field = {
		pick_weed = "Натиснете ~INPUT_CONTEXT~ за да съберете трева.",
		picking_weed = "Събиране на трева"
	},

	wizard = {
		menu_title = "Магьосник",

		ragdoll_player = "Рагдол",
		ragdoll_player_force = "Рагдол (Принудително)",
		jump_player = "Скок",
		punch_player = "Силен удар",
		enter_vehicle_player = "Влезте в най-близкото превозно средство",
		exit_vehicle_player = "Излез от превозното средство",
		yank_steering_wheel_player = "Дръпнете волана",
		flashbang_player = "Светкавица",
		paper_bag_player = "Хартиена торба",
		ignite_player = "Запали",
		explode_player = "Експлодирам",
		quietly_revive_player = "Тихо възкресяване",
		play_sound = "Пусни звук",

		play_sound_knocking = "Постъкване",
		play_sound_discord = "Discord",
		play_sound_phone_call = "Телефонно обаждане",
		play_sound_message = "Съобщение",
		play_sound_twitter = "Туитър",

		invalid_radius = "Невалиден радиус",

		punch_success = "Успешно направихте ${consoleName} да удари.",
		punch_failed = "Неуспешно направихте играча да удари.",

		explode_success = "Успешно направихте ${consoleName} да експлодира.",
		explode_failed = "Неуспешно направихте играча да експлодира.",

		ignite_success = "Успешно запалено ${consoleName}.",
		ignite_failed = "Неуспешно запалване на играч.",

		flashbang_success = "Успешно презаредено ${consoleName}.",
		flashbang_failed = "Неуспешна презареждане на играч.",

		flashbang_radius_success = "Успешно презаредени играчи в радиус от ${radius}.",
		flashbang_radius_failed = "Неуспешно презареждане на играчи в радиуса.",

		missing_command = "Липсва команда.",
		run_as_success = "Командата е изпълнена успешно като ${consoleName}.",
		run_as_failed = "Неуспешно изпълнение на командата като ${consoleName}.",

		no_nearby_vehicle = "Няма превозно средство в близост.",
		reversing_failed = "Неуспешно задействане на обратно движение на пешеход.",
		driving_forwards_failed = "Неуспешно задействане на движение напред на пешеход.",
		reversing_success = "Успешно задействане на обратно движение на пешеход.",
		driving_forwards_success = "Успешно задействане на движение напред на пешеход.",

		vehicle_temp_action_missing_permissions = "Играчът опита да изпълни временно действие върху превозно средство без подходящи разрешения."
	},

	yoga = {
		yoga_mat_use = "[${InteractionKey}] Йога мат",
		yoga_mat = "Йога мат",
		press_to_stop_yoga = "Натисни ~INPUT_CONTEXT~, за да спреш йогата."
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] Удържи, за да обирате зомбита",
		press_to_loot_zombie = "[${InteractionKey}] Обиране на зомби",
		looting_zombie = "Обиране на зомби",
		zombie_looting_injection = "Твърде много обиране на зомбита! (Пренебрегнато изчакване на сървъра, вероятно с помощта на инжектор.)",

		zombie_trip_limit = "Чувствате се твърде уморени, за да продължавате да обирате зомбита. Може би опитайте отново утре."
	},

	-- global/*
	entities = {
		in_no_ped_population_area = "Вие сте в зона 'без население на пешеходци'.",
		not_in_no_ped_population_area = "Вие не сте в зона 'без население на пешеходци'."
	},

	explosions = {
		invalid_explosion_type = "Типът на експлозията `${explosionType}` е невалиден.",
		invalid_camera_shake = "Трептенето на камерата `${cameraShake}` е невалидно.",
		invalid_damage_scale = "Размерът на щетата `${damageScale}` е невалиден.",
		created_explosion = "Създадена е експлозия от тип `${explosionTypeName}` с размер на щети `${damageScale}` и трептене на камерата `${cameraShake}`."
	},

	exports = {
		player_killed = "Играчът бе убит",
		player_killed_details = "${consoleName} бе убит от ${killerConsoleName}. Причина за смъртта: `${deathCause}`.",

		killed_player = "Уби Потребител",
		killed_player_details = "${killerConsoleName} уби ${consoleName}. Причина за смъртта: `${deathCause}`. (Това е според клиента на убития играч, който може да бъде фалшифициран, имайте предвид)",

		player_died = "Играчът почина",
		player_died_details = "${consoleName} почина. Причина за смъртта: `${deathCause}`."
	},

	functions = {
		unknown = "Неизвестен",
		flipped_vehicle_logs_title = "Преобърнато превозно средство",
		flipped_vehicle_logs_details = "${consoleName} преобърна превозно средство.",
		failed_to_find_ground = "Неуспешно намерихме земя, те пренасочихме към най-близка улица.",

		knots = "възли",
		mph = "мпч",
		kmh = "км/ч"
	},

	locales = {
		showing_raw_locales_on = "Включено показване на суровите локализации.",
		showing_raw_locales_off = "Изключено показване на суровите локализации."
	},

	states = {
		invalid_network_id = "Невалиден мрежов идентификатор.",
		debug_states_failed = "Неуспешно отстраняване на грешки по състоянието на тези обекти.",
		no_states = "Този обект няма зададени състояния.",
		printed_states = "Отпечатани състояния на обект ${networkId}.",

		get_entity_states_missing_permissions = "Играчът опита да получи състоянията на даден обект без подходящи разрешения."
	},

	time = {
		year = "година",
		years = "години",
		month = "месец",
		months = "месеца",
		day = "ден",
		days = "дни",
		hour = "час",
		hours = "часа",
		minute = "минута",
		minutes = "минути",
		second = "секунда",
		seconds = "секунди",
		just_now = "току-що",

		month_1 = "Януари",
		month_2 = "Февруари",
		month_3 = "Март",
		month_4 = "Април",
		month_5 = "Май",
		month_6 = "Юни",
		month_7 = "Юли",
		month_8 = "Август",
		month_9 = "Септември",
		month_10 = "Октомври",
		month_11 = "Ноември",
		month_12 = "Декември",

		time_in = "след ${time} ${unit}",
		time_ago = "преди ${time} ${unit}"
	},

	-- illegal/*
	stockade = {
		dispatch = "[Диспечър]",
		status_1a = "10-78, Един Stockade е натиснал бутона за спешна помощ и иска подкрепа на ${streetName}.",
		status_1b = "10-78, Един Stockade е натиснал бутона за спешна помощ и иска подкрепа на ${streetName} близо до ${crossingRoad}.",
		status_2a = "10-78, Сигнална система е засечена със Stockade, която в момента има търкалеца и иска подкрепа на ${streetName}.",
		status_2b = "10-78, Системата за аларми е засечла, че на един Stockade в момента се занимават с вратите му и се изисква подкрепа на ${streetName} близо до ${crossingRoad}.",
		status_3a = "10-78, Системата за аларми е засечла, че на един Stockade са отворени неправилно вратите и се изисква подкрепа на ${streetName}.",
		status_3b = "10-78, Системата за аларми е засечла, че на един Stockade са отворени неправилно вратите и се изисква подкрепа на ${streetName} близо до ${crossingRoad}.",
		grab_valuables = "[${InteractionKey}] Вземете стойности (${valuablesRemaining} остават)",
		grabbing_valuables = "Вземане на ценности",
		use_advanced_lockpick = "[${InteractionKey}] Използване на просветлен накъде",
		lockpicking_stockade = "Отключване на Stockade",

		status_blip = "Stockade",

		stockade_reward_logs_title = "Награда от Stockade",
		cash_pickup_logs_details = "${consoleName} взе $${cashAmount} в брой.",
		item_pickup_logs_details = "${consoleName} взе 1бр. ${itemName}.",

		reward_diamonds = "Взехте диамант.",
		reward_gold_bar = "Взехте златна плочка.",
		reward_cash = "Взехте някакви пари.",
		reward_keycard_red = "Взехте червена карта с ключ.",
		reward_treasure_map_piece = "Взехте част от съкровищна карта.",

		stockade_logs_title = "Активиране на стока",
		stockade_logs_details = "${consoleName} активира стока."
	},

	-- interfaces/*
	interface = {
		no_interfaces_are_focused = "Няма фокусирани интерфейси.",
		interfaces_focused = "Фокусирани интерфейси:\n${interfacesFocused}"
	},

	-- jobs/*
	bean_machine = {
		start_delivery = "Започнете доставка.",
		press_to_start_delivery = "Натиснете ~g~${InteractionKey} ~w~за да започнете доставка.",
		already_in_delivery = "Вече имате активна доставка.",
		not_bean_machine_employee = "Трябва да сте служител на Bean Machine, за да започнете доставка.",
		finish_delivery = "Завършете доставката.",
		press_to_finish_delivery = "Натиснете ~g~${InteractionKey} ~w~, за да завършите доставката.",
		started_delivery = "Започнахте доставка до ${deliveryName}. Локацията е маркирана на вашата карта.",
		finished_delivery = "Доставката до ${deliveryName} е завършена. Получихте $${deliveryPrice} и $${distanceBonus} за чаевни, общо $${totalPrice}.",
		error_finishing_delivery = "Възникна грешка при опит за завършване на доставката.",
		finished_delivery_title = "Доставката на Bean Machine е завършена",
		finished_delivery_details = "${consoleName} завърши доставка на Bean Machine и получи $${deliveryPrice} и $${distanceBonus} на чайна, общо $${totalPrice}.",
		delivery_blip = "Доставка на Bean Machine"
	},

	burger_shot = {
		start_delivery = "Започнете доставка.",
		press_to_start_delivery = "Натиснете ~g~${InteractionKey} ~w~за да започнете доставка.",
		already_in_delivery = "Вече имате активна доставка.",
		not_burger_shot_employee = "Трябва да сте служител на Burger Shot, за да започнете доставка.",
		finish_delivery = "Завършете доставката.",
		press_to_finish_delivery = "Натиснете ~g~${InteractionKey} ~w~, за да завършите доставката.",
		started_delivery = "Започнахте доставка до ${deliveryName}. Локацията е маркирана на картата ви.",
		finished_delivery = "Доставката до ${deliveryName} е завършена. Получихте $${deliveryPrice} и $${distanceBonus} като бакшиш, общо $${totalPrice}.",
		error_finishing_delivery = "Възникна грешка при опит за завършване на доставката.",
		finished_delivery_title = "Завършена доставка от Burger Shot",
		finished_delivery_details = "${consoleName} приключи доставка от Burger Shot и получи $${deliveryPrice} и $${distanceBonus} на чайна, общо $${totalPrice}.",
		delivery_blip = "Доставка от Burger Shot"
	},

	doj = {
		invalid_type = "Невалиден или липсващ тип.",
		missing_search = "Липсващ параметър за търсене.",
		lookup_failed = "Не бяха намерени резултати за зададения тип и търсене.",

		result_signature = "Състояние на Сан Андреас",
		result_title = "Търсене на ${type} (${search})",
		result_text = "${type} - \"${search}\"\n\nC-ID:\t\t${characterId}\nПърво Име:\t${firstName}\nФамилия:\t${lastName}\nТелефонен номер:\t${phoneNumber}\nДата на раждане:\t${dateOfBirth}\nПол:\t\t${gender}\n\nTwitter: @${username}",

		looked_up_character_logs_title = "Търсене на информация за герой",
		looked_up_character_logs_details = "${consoleName} провери ${type} записите, търсейки '${search}'.",

		invalid_time = "Невалидно посочено време.",
		missing_invalid_plate = "Невалиден или липсващ номерен знак.",
		vehicle_hold_success = "Успешно задържахме превозното средство с номерен знак '${plate}' за ${time}.",
		vehicle_hold_failed = "Неуспешно задържане на превозното средство.",
		invalid_plate = "Не е намерено превозно средство с този номерен знак.",
		cant_reduce_time = "Превозното средство вече е задържано от Полицията за по-дълго време, отколкото посочихте.",

		vehicle_hold_logs_title = "Халкиране на превозно средство",
		vehicle_hold_logs_details = "${consoleName} задържа превозно средство с номер на регистрация `${plate}` (ID: ${vehicleId}) за ${time}."
	},

	duty = {
		toggle_duty_status_no_permissions = "Опит за превключване на режим на служба чрез командата без правилни разрешения.",

		duty_status_on = "Успешно активира режим на служба.",
		duty_status_off = "Успешно деактивира режим на служба.",
		duty_status_failed = "Неуспешно превключване на режим на служба.",

		training_status_on = "Успешно активира режим на обучение.",
		training_status_off = "Успешно изключен режим на обучение.",
		training_status_failed = "Неуспешно изключване на режима на обучение.",

		emergency_call = "Има спешно обаждане. Натиснете ENTER, за да го приемете.",

		toggled_operator_status_on = "Включен статус на оператор.",
		toggled_operator_status_off = "Изключен статус на оператор."
	},

	job_center = {
		life_invader = "Life Invader",
		life_invader_blip = "Кандидатствай за работа",
		ui_close_menu = "Затвори менюто",
		press_to_browse_jobs = "Натиснете ~INPUT_CONTEXT~, за да разгледате работите.",
		change_job = "Променете работата: ${jobName}",
		job_unemployed = "Безработен",
		job_transportation = "Шофьор на товарен камион",
		job_taxi = "Таксиметров шофьор",
		job_journalist = "Журналист",
		job_government = "Извозвач на отпадъци",
		job_mechanic = "Автомобилен механик",
		job_delivery = "Доставчик",
		changed_job_already_set_to_job = "Трудът ви вече е ${jobName}.",
		changed_job_success = "Успешно заменихте работата си с ${jobName}.",
		changed_job_success_go_to_coords = "Успешно заменихте работата си с ${jobName}. Следвайте посоките на картата, за да започнете.",
		changed_job_failure = "Възникна грешка при опита да замените работата си с ${jobName}.",
		changed_job_title = "Смени работа",
		changed_job_details = "${consoleName} смени работата си на `${jobName}`."
	},

	police = {
		aim_assist_enabled = "Твоето прицелване ще бъде одарено със способности.",
		aim_assist_disabled = "Тепърва ще се прицелваш по-лошо от престъпниците/типовете. Препоръчва се незабавно да разрешиш отново помощта за прицелване.",
		you_are_not_police = "Тази функция е резервирана за полицията, не за престъпниците/типовете.",

		undercover_enabled = "Сега си под прикритие.",
		undercover_disabled = "Вече не си под прикритие.",

		npc_vehicle = "Това превозно средство не е притежание на играч.",
		not_in_a_vehicle = "В момента не шофирате превозно средство.",
		invalid_minutes = "Невалидно време (между 1 минута и 48 часа).",

		not_on_duty = "Не сте на работа.",
		failed_impound = "Неуспешно затваряне на превозно средство.",
		not_near_impound = "Не се намирате близо до полицейското задържане.",
		impound_success = "Успешно затворихте превозното средство с номерно '${plate}' за ${minutes} минути.",

		access_impound = "[${InteractionKey}] Достъп до задържано превозно средство",
		impound_lot = "Задържано",
		exit_impound = "Изход от Задържането",
		no_impounded_vehicles = "В момента няма задържани превозни средства.",
		failed_impound_list = "Неуспешно получаване на задържани превозни средства.",
		impound_owner = "Собственик: #${cid}",
		withdraw_success = "Успешно изтеглено превозно средство.",
		failed_withdraw = "Неуспешно изтегляне на превозно средство.",
		vehicle_not_impounded = "Идентификационният номер на превозното средство не е в момента задържан.",

		impound_logs_title = "Задържане на Полицията",
		impound_logs_details = "${consoleName} постави превозно средство с номерна плочка ${plate} под полицейско задържане за ${minutes} минути.",

		impound_withdraw_logs_title = "Изваждане от ПД къкене",
		impound_withdraw_logs_details = "${consoleName} изтегли моторно превозно средство с номер на регистрация ${plate} от ПД къкенето (Оставащо време: ${timeLeft}).",

		none = "Няма",
		active = "Активно",
		not_active = "Неактивно",
		active_robberies = "\nАктивен магазин: ${store}.\nАктивна банка: ${bank}\nАктивно бижутерия: ${jewelry}",

		failed_dispatch = "Неуспешно изпращане на съобщението.",
		dispatch_title = "[Извикване]",
		dispatch_message = "${author}: ${message}",
		invalid_dispatch_message = "Невалидно съобщение за извикване (Максимум 255 символа).",
		in_training = "В момента си на учебен режим.",
		cannot_use_dispatch = "В момента не можеш да използваш диспечер.",

		dispatch_message_logs_title = "Съобщение на диспечера",
		dispatch_message_logs_details = "${consoleName} изпрати съобщение на диспечера: `${message}`.",

		no_keys = "Нямаш ключовете за това превозно средство.",
		invalid_drive_mode = "Невалиден режим на движение.",
		not_in_police_vehicle = "Не си в полицейско превозно средство.",
		drive_mode_too_fast = "Движиш се твърде бързо, за да смениш режима на движение.",
		drive_mode_already_set = "Твоят режим на движение вече е зададен на `${mode}`.",
		drive_mode_failed = "Неуспешно задаване на режим на движение.",
		drive_mode_set = "Успешно зададен режим на движение: `${mode}`.",

		mode_s = "Режим на спорт",
		mode_d = "Режим на движение",

		drive_mode_logs_title = "Промяна на режим на движение",
		drive_mode_logs_details = "${consoleName} промени своя режим на движение на `${mode}`."
	},

	state = {
		license_heli = "Хеликоптер",
		license_fw = "Фиксирано крило",
		license_cfi = "Сертифициран преподавател по полети",
		license_hw = "Тежкотоварен",
		license_hwh = "Тежкотоварен хеликоптер",
		license_perf = "Производителност",
		license_utility = "Полезност",
		license_commercial = "Търговска",
		license_management = "Управление",
		license_passenger = "Пътник",
		license_military = "Военна",
		license_special = "Специален въздушен превоз",
		license_boat = "Лиценз за лодка",
		license_hunting = "Ловен Лиценз",
		license_fishing = "Лиценз за риболов",
		license_weapon = "Лиценз за оръжие",
		license_mining = "Лиценз за миньорство",
		gave_character_license = "Даде лиценз `${licenseLabel}` на ${characterName}.",
		character_already_has_license = "${characterName} вече притежава лиценз `${licenseLabel}`.",
		removed_character_license = "Премахнат лиценз `${licenseLabel}` от ${characterName}.",
		character_does_not_have_license = "${characterName} няма лиценз `${licenseLabel}`",
		license_not_found = "Лиценз `${licenseName}` не бе намерен.",
		user_not_found_with_character_id = "Потребител с ID на героя `${characterId}` не е намерен.",
		no_license_added = "Не е добавен лиценз.",
		invalid_character_id = "Въведеният ID на героя е невалиден.",
		no_character_id_added = "Не е добавен ID на героя.",
		your_licenses_are = "Вашите лицензи са следните: ${licenses}",
		player_licenses_are = "${characterName} има следните лицензи: ${licenses}",
		you_have_no_licenses = "Нямате лицензи.",
		player_has_no_licenses = "${characterName} няма лицензи.",
		failed_to_get_licenses = "Неуспешно получаване на лицензи.",
		license_list = "Налични лицензи: ${licenseList}."
	},

	tow = {
		press_to_access_spawner = "Натиснете ~INPUT_CONTEXT~ за достъп до спавнера на автомобили.",
		tow_vehicles = "Изваждане на автомобили",
		vehicle_list = "Списък с автомобили",
		park_vehicle = "Паркиране на автомобил",
		parked_vehicle = "Автомобилът е паркиран.",
		no_vehicle_to_park = "Няма автомобил за паркиране.",
		close_menu = "Затваряне на менюто",
		purchased_vehicle = "Закупено превозно средство.",
		shop_on_timeout = "Магазинът за превозни средства е в режим на изчакване. Моля, опитайте отново.",
		spawn_area_not_clear = "Площта за сваляне не е свободна.",
		purchase_funds = "Недостатъчни средства.",
		return_button = "Върни",

		toggled_messages_on = "Съобщенията са включени.",
		toggled_messages_off = "Съобщенията са изключени."
	},

	weazel_news = {
		press_to_access_spawner = "Натиснете ~INPUT_CONTEXT~ за достъп до генератора на превозни средства.",
		weazel_news = "Weazel News",
		vehicle_list = "Списък с превозни средства",
		close_menu = "Затвори менюто",
		return_button = "Върни",
		park_vehicle = "Паркирай МПС",
		parked_vehicle = "Паркирано МПС.",
		no_vehicle_to_park = "Няма МПС за паркиране.",
		spawned_vehicle = "МПС създадено.",
		spawner_on_timeout = "Генераторът на МПС е във времева забрана. Моля, опитайте отново.",
		spawn_area_not_clear = "Мястото за генериране не е свободно."
	},

	-- menus/*
	hydrogen = {
		number1_of_number2 = "${number1} от ${number2}"
	},

	native = {
		player_label = "[${source}] ${name}"
	},

	-- vehicles/*
	alert = {
		triggered_vehicle_alert = "Аларма за МПС, активирана в ${locationLabel} за МПС с регистрационен номер `${plateText}`.",
		vehicle_alert_blip = "Аларма за МПС"
	},

	boats = {
		anchor_disconnected = "Успешно отстранен котвата.",
		anchored_successfully = "Успешно поставена котва.",
		removing_anchor = "Отстраняване на котва",
		deploying_anchor = "Поставяне на котва",
		no_vehicle_nearby = "Няма лодка наблизо, на която да поставите котва."
	},

	car_wash = {
		use_car_wash = "Натиснете ~INPUT_CONTEXT~, за да използвате автоматичната миялна. Цената е $${cost}.",
		stop_car_to_wash = "Спрете превозното средство, за да използвате автомивка.",
		vehicle_already_clean = "Това превозно средство е твърде чисто, за да бъде измито.",
		car_wash = "Автомивка",
		air_unit_damaged = "Това Въздушно Устройство е повредено.",
		air_unit_not_enough_cash = "Нямаш достатъчно пари за използване на Въздушното Устройство.",
		air_unit_exit_vehicle = "Излез от превозното средство, за да използваш Въздушното Устройство.",
		air_unit_press_to_use = "Натисни ~g~${SeatEjectKey} ~w~, за да използваш Въздушното Устройство за $${cost}.",
		air_unit_purchase_cleaning_kit = "Натисни ~g~${InventoryKey} ~w~, за да закупиш Комплект за Почистване.",
		cleaning_vehicle = "Почистване на Превозно Средство",
		not_enough_money = "Нямаш достатъчно пари, за да използваш Въздушното Устройство.",
		vehicle_not_in_range = "Превозното средство се отдалечи твърде много, за да бъде почистено."
	},

	carrier = {
		use_catapult = "Натиснете ~INPUT_CONTEXT~ за да се закачите за катапулт.",
		use_launch = "Натиснете ~INPUT_VEH_HANDBRAKE~ за да се изстрелите."
	},

	clamps = {
		no_vehicle_near = "Не сте близо до задното ляво колело на превозното средство.",
		vehicle_not_driveable = "Не може да се прикрепи скоба към повредено превозно средство.",
		clamping = "Прикрепяне",
		removing_clamp = "Премахване на скобата",
		remove_clamp = "[${InteractionKey}] Премахване на скобата",

		clamped_log_title = "Прикачена скоба",
		clamped_log_details = "${consoleName} прикачи скоба към превозно средство с номер на регистрация '${plate}'.",
		unclamped_log_title = "Премахната скоба",
		unclamped_log_details = "${consoleName} премахва скоба за заключване от превозното средство с регистрационен номер `${plate}`."
	},

	damage = {
		vehicle = "Идентификационен номер на превозното средство: ${entity}",
		general = "Основна информация: ${value}",
		body = "Кола: ${value}",
		engine = "Двигател: ${value}",
		petrol_tank = "Горивен резервоар: ${value}",
		temperature = "Температура: ${value}",
		tracked_vehicle = "Превозно средство на релси",

		debug_vehicle_on = "Дебъг на превозното средство включен.",
		debug_vehicle_off = "Дебъг на превозното средство изключен."
	},

	fuel = {
		exit_to_fuel = "Излез от превозното средство, за да заредиш гориво.",
		press_to_fuel = "Натисни ~g~${InteractionKey} ~w~, за да заредиш гориво в превозното средство.",
		fuel_pump_text = "Цена на горивото: $${fuelCost}~n~Натиснете ~g~${InteractionKey} ~w~, за да спрете зареждането.",
		vehicle_text = "Ниво на горивото: ${fuelLevel}%",
		tank_full = "Резервоарът е пълен.",
		vehicle_busy = "Близкият автомобил е зает.",
		purchase_jerry_can = "Натиснете ~g~${InventoryKey} ~w~за закупуване на канистра за гориво.",
		gas_station = "Бензиностанция",
		petrolcan_fuel_text = "Оставащо количество гориво: ${petrolAmount}%~n~Натиснете ~g~${InteractionKey} ~w~, за да спрете зареждането.",
		player_busy = "В момента си зает с нещо друго.",
		fuel_level_set_to = "Нивото на горивото е установено на `${fuelLevel}`.",
		not_in_a_vehicle = "Това Въздушно Устройство е повредено.",
		vehicle_engine_on = "Нямаш достатъчно пари за използване на Въздушното Устройство.",

		vehicle_exploded_logs_title = "Излез от превозното средство, за да използваш Въздушното Устройство.",
		vehicle_exploded_logs_details = "Натисни ~g~${SeatEjectKey} ~w~, за да използваш Въздушното Устройство за $${cost}."
	},

	gadgets = {
		helicopter_camera_vehicle_info = "Натисни ~g~${InventoryKey} ~w~, за да закупиш Комплект за Почистване.",
		helicopter_camera_altitude = "Почистване на Превозно Средство",
		helicopter_camera_altitude_asl = "Нямаш достатъчно пари, за да използваш Въздушното Устройство.",
		helicopter_camera_locked_on = "Превозното средство се отдалечи твърде много, за да бъде почистено.",
		helicopter_camera_not_locked = "Не е заключена",
		unknown = "Непознат"
	},

	garages = {
		garage_empty = "Вашият гараж е празен!",
		impound_lot = "Импаунд",
		police_impound = "Импаунд на полицията",
		engine = "Двигател",
		body = "Корпус",
		vehicle_in = "В",
		vehicle_out = "Изваден",
		vehicle_at_police_impound = "Вашият превозно средство в момента е задържано от полицията.",
		vehicle_at_impound = "Вашето превозно средство се намира в импаунда.",
		waypoint_to_impound = "На вашето GPS е маркиран маршрут до импаунда.",
		unable_to_withdraw = "Не може да се изтегли превозното средство, защото в момента е заето.",
		vehicle_in_garage = "Вашият автомобил се намира в ${garageName}. Маркер е поставен на картата.",
		insufficient_funds = "Нямате достатъчно пари, за да изтеглите този автомобил.",
		error_withdrawing = "Възникна грешка при опит за изтегляне на вашия автомобил.",
		withdraw_timeout = "Моля, изчакайте малко, преди да се опитате да изтеглите друг автомобил.",
		garage_in_use = "Тази гараж е в момента заета, моля, изчакайте момент.",
		invalid_model = "Невалиден или непознат модел на превозно средство.",
		vehicle_in_the_way = "Има превозно средство блокиращо точката за поява.",
		vehicle_is_out = "Вашето превозно средство вече е извън.",
		vehicle_stored = "Вашето превозно средство е съхранено.",
		error_storing = "Неуспешно съхраняване на превозното средство. Дали превозното средство е ваше?",
		no_nearby_vehicle = "Не са намерени близки превозни средства.",
		no_vehicles_to_retrieve = "Нямате превозни средства за възстановяване!",
		vehicle_retrieved = "Превозното средство бе успешно възстановено.",
		error_retrieving = "Възникна грешка при опит за възстановяване на вашето превозно средство.",
		not_enough_balance_to_retrieve = "Нямате достатъчно баланс в нито една от вашите сметки, за да възстановите това превозно средство.",
		press_to_access = "Натиснете ~INPUT_CONTEXT~ за достъп до гаража.",
		ui_return = "Върни",
		ui_vehicle_list = "Списък с превозни средства",
		ui_store_vehicle = "Съхранете превозното средство",
		ui_vehicle_sell = "Продайте превозните средства",
		ui_retrieve_vehicle = "Възстановете превозното средство",
		ui_close_menu = "Затвори менюто",
		garage_letter = "Гараж ${letter}",
		garage_emergency = "${type} Гараж",
		emergency_type_1 = "Полиция",
		emergency_type_2 = "Спешна медицинска помощ",
		no_vehicles_impounded = "Нито едно от вашите превозни средства не са конфискувани!",
		you_must_retrieve_this_vehicle = "Трябва да изтеглите това превозно средство, за да получите достъп до него.",
		garage = "Гараж",
		retrieved_vehicle_logs_title = "Изтеглено превозно средство",
		retrieved_vehicle_logs_details = "${consoleName} изтегли превозно средство с номер на номера `${plate}` за ${price}.",
		no_vehicles_to_sell = "Нямате автомобили за продажба.",

		state_loading_model = "Зареждане на модел...",
		state_withdrawing = "Теглене...",
		state_retrieving = "Изтегляне...",
		state_storing = "Запазване...",
		state_loading = "Зареждане...",

		vehicle_weight = "Тегло: ${weight}",
		last_garage_letter = "Последен - Гараж ${letter}",
		last_garage_impound = "Последен - Паркинг",
		no_last_garage_letter = "Няма последен гараж",

		purchase_vehicle = "Натисни ~INPUT_CONTEXT~ за достъп до магазина",
		emergency_shop = "Магазин за превозни средства",
		exit_shop = "Излез от магазина",
		purchase_success = "${label}, който току-що закупихте, е добавен в гаража ви.",
		purchase_failed = "Неуспешно закупуване на превозно средство.",
		already_owned = "Вече притежавате този модел превозно средство.",
		maximum_owned = "Не можеш да притежаваш повече от 6 автомобила.",
		not_enough_money = "Нямаш достатъчно пари, за да закупиш този автомобил.",

		sold_vehicle = "Продаден ${label} за $${price}.",
		failed_sell_vehicle = "Неуспешно продаване на автомобил.",

		sold_vehicle_logs_title = "Продаден Автомобил",
		sold_vehicle_logs_details = "${consoleName} продаде спешен автомобил `${modelName}` с номерна плочка `${plate}` за ${price}.",

		purchased_vehicle_logs_title = "Закупен Автомобил",
		purchased_vehicle_logs_details = "${consoleName} закупи спешен автомобил `${modelName}` за ${price} (номерна плочка: `${plate}`).",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "Активира се дебъг на гаража.",
		toggle_garage_debug_toggled_off = "Изключва се дебъг на гаража.",

		invalid_vehicle = "Няма или невалидно превозно средство.",
		not_owned_vehicle = "Превозното средство не е притежание на никого.",
		vehicle_garaged = "Успешно прибрахте превозното средство с идентификационен номер ${vehicleId}.",
		garaged_failed = "Неуспешно гаражиране на превозното средство.",
		invalid_vehicle_id = "Невалиден идентификационен номер на превозното средство.",
		ungarage_success = "Успешно изкарахте превозното средство от гаража.",
		ungarage_failed = "Неуспешно гаражиране на превозното средство. Въвели ли сте правилния идентификационен номер на превозното средство?",
		vehicle_not_found = "Не беше намерено превозно средство с този идентификационен номер.",

		garaged_vehicle_logs_title = "Гаражирано превозно средство",
		garaged_vehicle_logs_details = "${consoleName} гаражира превозно средство с идентификационен номер ${vehicleId}.",
		ungaraged_vehicle_logs_title = "Извадено от гараж превозно средство",
		ungaraged_vehicle_logs_details = "${consoleName} изважда от гараж превозно средство с идентификационен номер ${vehicleId}."
	},

	keys = {
		no_nearby_player = "Не е открит близък играч.",
		no_nearby_vehicle = "Не е открито близко превозно средство.",
		no_keys_for_vehicle = "Нямате ключовете на това превозно средство.",
		vehicle_locked = "Превозното средство е заключено",
		vehicle_unlocked = "Колата е отключена",
		h_to_hotwire = "[H] Запалване",
		received_keys = "Получени ключове за превозното средство с регистрационен номер ${plate}.",
		received_keys_no_plate = "Получени ключове за превозното средство.",
		you_are_not_in_a_vehicle = "Вие не сте в превозното средство.",
		you_are_in_a_vehicle = "В момента се намирате в превозното средство.",
		hotwired_vehicle_with_plate_number = "Запалена е колата с номер на регистрация '${plateNumber}'.",
		unable_to_hotwire_vehicle = "Не е възможно запалването на колата.",
		picked_up_keys = "Взети ключове за `${plate}`.",
		hotwired_vehicle_for_player = "Направи ${displayName} да направи \"hotwire\" на превозното средство, в което се намира.",
		gave_keys_success = "Успешно даде на ${displayName} ключовете на техния автомобил.",
		gave_keys_failure = "Неуспешно даде на ${displayName} ключовете на техния автомобил."
	},

	modifications = {
		wheels_reset = "Колелата се нулират.",
		wheels_already_reset = "Колелата вече са във вида си по подразбиране.",
		wheels_modified = "Колелата бяха модифицирани.",
		wheels_none_specified = "Няма указани колела.",
		wheels_none_valid_specified = "Няма указани валидни колела.",
		not_in_a_car = "Не се намирате в автомобил.",
		invalid_value = "Невалидна стойност."
	},

	oil = {
		move_to_change = "Преместете се тук, за да смените маслото на превозното средство.",
		changing_oil = "Смяна на масло",
		low_oil = "Вашето превозно средство се нуждае от смяна на маслото!"
	},

	plates = {
		plate_number_is_available = "Регистрационният номер '${plateNumber}' е свободен.",
		plate_number_is_not_available = "Регистрационният номер '${plateNumber}' не е свободен.",
		missing_valid_plate_number = "Липсва валиден параметър 'регистрационен номер'.",
		missing_valid_vehicle_id = "Липсва валиден параметър 'идентификатор на превозното средство'.",
		database_error = "Възникна грешка в задната част на базата данни.",
		no_custom_plate_package = "Нямате пакет за персонализиран номерен платеж. Вижте нашия онлайн магазин за повече информация!",
		api_error = "Възникна грешка в задната част на API.",
		api_not_available = "В настоящия момент нашето задно API не е достъпно.",
		vehicle_does_not_belong_to_player = "ID на превозното средство `${vehicleId}` не принадлежи на вас.",
		vehicle_id_does_not_exist = "ID на превозното средство `${vehicleId}` не съществува.",
		you_have_no_character_loaded = "Вие нямате зареден персонаж.",
		vehicle_plate_changed = "Променихте номера на плочката на превозното средство с ID `${vehicleId}` на `${plateNumber}`.",

		you_are_not_in_a_vehicle = "Вие не сте в превозно средство.",
		fake_plate_active = "Успешно генерирахте фалшива плочка за вашия автомобил.",
		fake_plate_inactive = "Върнете номера на плочката на превозното средство към оригиналното състояние.",

		fake_plate_missing_permissions = "Играчът се опита да зададе фалшив номер на плочката чрез команда без необходимите разрешения."
	},

	runways = {
		you_are_not_in_a_plane = "Вие не сте в самолет.",
		ifr_disabled = "IFR е деактивиран.",
		ifr_enabled = "IFR е активиран."
	},

	sirens = {
		sirens_muted_on = "Всички сирени са заглушени.",
		sirens_muted_off = "Всички сирени са с включен звук."
	},

	spawner = {
		press_to_access_spawner = "Натиснете ~INPUT_CONTEXT~, за да получите достъп до показвача на превозните средства.",

		parked_vehicle = "Успешно припарквано превозно средство.",

		spawner_burger_shot = "Доставни превозни средства на Burger Shot",
		spawner_bean_machine = "Доставни превозни средства на Bean Machine",
		spawner_weazel_news = "Превозни средства на Weazel News",
		spawner_state = "Държавни превозни средства",
		close_menu = "Затвори менюто",
		vehicle_list = "Списък на превозните средства",
		park_vehicle = "Паркирай МПС",
		return_button = "Върни",

		failed_spawn = "Неуспешно спавнване на МПС.",
		failed_area = "Зоната не е ясна.",
		failed_job = "Нямате правилната работа.",
		failed_generic = "Нещо се обърка."
	},

	vehicles = {
		flip_flipping = "Преобръщане на МПС",
		flip_unable = "Не можете да преобръщате МПС, докато има хора вътре.",
		vehicle_busy = "Моля, изчакайте, МПС е заето!",
		hold_to_eject = "Задръжте, за да изкарате",
		taking_keys = "Взимане на ключове",
		belt_on = "Ремък Включен",
		belt_off = "Ремък Изключен",
		mileage = "Пробег",
		vehicle_mileage_amount = "Този превозно средство има ${miles} мили.",
		not_in_driver_seat = "За да проверите километража, трябва да сте на шофьорското седалка.",
		not_driving_vehicle = "В момента не управлявате превозно средство.",
		not_in_vehicle = "Не се намирате в превозно средство.",
		vehicle_locked = "Превозното средство е заключено.",
		gear_animation_enabled = "Анимацията на предавките (и звуците) вече е активирана.",
		gear_animation_disabled = "Анимацията на предавките (и звуците) е деактивирана.",
		manual_gears_enabled = "Ръчната трансмисия вече е активирана. Хибриден режим: ${hybrid}.",
		manual_gears_disabled = "Ръчните предавки са деактивирани.",
		hybrid_off = "изключен",
		speed_limiter_set_to_metric = "Ограничителят на скоростта ще ограничава скоростта до ${speed} км/ч.",
		speed_limiter_set_to_imperial = "Ограничителят на скоростта ще ограничава скоростта до ${speed} мили/ч.",
		speed_limiter_reset = "Ограничителят на скоростта ще ограничава скоростта до скоростта, на която е превключван.",
		speed_limiter_on_metric = "Ограничител на скоростта зададен на ${speed} км/ч.",
		speed_limiter_on_imperial = "Ограничител на скоростта зададен на ${speed} мили/ч.",
		speed_limiter_on_plane_metric = "Ограничител на скоростта зададен на ${speed} км/ч и ${altitude} метра.",
		speed_limiter_on_plane_imperial = "Ограничител на скоростта зададен на ${speed} мили на час и ${altitude} фута.",
		speed_limiter_on_helicopter_metric = "Ограничител на скоростта зададен на ${altitude} метра (хеликоптер).",
		speed_limiter_on_helicopter_imperial = "Ограничител на скоростта зададен на ${altitude} фута (хеликоптер).",
		autopilot_metric = "~g~Автопилот~s~: ${altitude}м ~c~/~s~ ${speed}км/ч",
		autopilot_imperial = "~g~Автопилот~s~: ${altitude}фута ~c~/~s~ ${speed}възла",
		you_are_cuffed = "Вие сте арестувани.",
		belt_is_on_and_vehicle_is_locked = "Вие сте пристегнат и превозното средство е заключено.",
		belt_is_on = "Вие сте закопчали колана си.",
		vehicle_is_locked = "Превозното средство е заключено.",
		belt_warning = "Вашият колан не е закопчан, натиснете ~INPUT_SPECIAL_ABILITY_SECONDARY~ за да го закопчате.",
		supporter_vehicle = "Подкрепа",

		no_data_copied = "Не сте копирали данни за превозното средство.",
		copied_data = "Копирани данни за превозното средство.",
		pasted_data = "Поставени данни за превозното средство.",

		nearest_player_not_vehicle = "Най-близкият играч не се намира в превозно средство.",
		no_dead_player_nearby = "Няма мъртъв играч в близост до вас.",
		dragging_out_player = "Влачите играч от превозното средство.",
		vehicle_too_fast = "Превозното средство се движи твърде бързо.",

		modifying_brakes = "Модификация на спирачките",
		toggle_brakes_on = "Спирачките се изключиха.",
		toggle_brakes_off = "Спирачките се включиха.",
		failed_modify_brakes = "Неуспешно променяне на спирачките.",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggled_vehicle_weapons_on = "Оръжията на превозното средство се включиха.",
		toggled_vehicle_weapons_off = "Оръжията на превозното средство се изключиха.",
		toggled_vehicle_weapons_vehicle_is_not_networked = "Превозното средство, в което се намирате, не се свързва към мрежата.",
		toggled_vehicle_weapons_target_user_not_found = "Целевият потребител не е намерен.",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "Целевият играч не се намира в превозно средство.",
		toggled_vehicle_weapons_for_player_on = "Активирани са оръжията на превозното средство за ${consoleName}.",
		toggled_vehicle_weapons_for_player_off = "Изключени са оръжията на превозното средство за ${consoleName}.",
		toggled_vehicle_weapons_for_everyone = "Активирани са оръжията на превозното средство за всички.",

		toggled_vehicle_weapons_on_logs_title = "Активирани са оръжията на превозното средство",
		toggled_vehicle_weapons_on_logs_details = "${consoleName} активира оръжията на превозното средство.",
		toggled_vehicle_weapons_off_logs_title = "Изключени са оръжията на превозното средство.",
		toggled_vehicle_weapons_off_logs_details = "${consoleName} изключи оръжията на превозното средство.",
		toggled_vehicle_weapons_on_for_player_logs_title = "Активиране на оръжия върху превозното средство за играч",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName} активира оръжията върху превозното средство на ${targetConsoleName}.",
		toggled_vehicle_weapons_off_for_player_logs_title = "Изключване на оръжия върху превозното средство за играч",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName} изключи оръжията върху превозното средство на ${targetConsoleName}.",
		toggled_vehicle_weapons_for_everyone_logs_title = "Активиране на оръжия за всички по автомобила",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} активира оръжията за автомобила на всички.",

		breaking_window = "Счупване на прозорец",
		not_near_window = "Не се намирате достатъчно близо до прозорец.",
		not_near_vehicle = "Няма автомобил наблизо.",

		wheelie_no_vehicle = "Няма автомобил",
		wheelie_engine_off = "Загасен двигател",
		wheelie_idling = "Внимателно",
		wheelie_ready = "Готов",
		wheelie_boosting = "Ускорение",

		invalid_power_level = "Невалидно ниво на мощност (1 - 5)."
	},

	vin_numbers = {
		cad_title = "[CAD]",

		checking_vin = "Проверява VIN",
		not_driver = "В момента не шофирате превозно средство.",
		failed_vin_get = "Неуспешно получаване на VIN.",
		vin_checked = "VIN номерът на това превозно средство е `${vin}`.",
		vin_scratched = "VIN номерът е издраскан.",

		looking_up_vin = "Търсене на VIN",
		invalid_vin = "Невалиден или липсващ VIN номер.",
		failed_vin_lookup = "Неуспешно търсене на VIN номер.",
		vin_lookup_details = "VIN `${vin}` е регистриран на превозното средство с номер `${plate}`, притежавано от `${fullName}`.",
		vin_lookup_unregistered = "VIN `${vin}` не е регистриран за нито едно превозно средство."
	},

	wheel_slash = {
		hold_to_slash = "[${InteractionKey}] Задръжте, за да надреждате",
		slashing_tire = "Надреждане на гума"
	},

	-- weapons/*
	ammo = {
		unboxing_ammo = "Разопаковане на боеприпаси",
		failed_unbox = "Неуспешно разопаковане на боеприпасите.",
		failed_unbox_full = "Не можете да носите повече от този вид боеприпаси.",
		unbox_success = "Успешно разопаковани ${amount}x ${ammoType}.",
		unbox_success_box = "Успешно разопакована кутия с боеприпаси.",

		type_pistol = "пистолетни боеприпаси",
		type_smg = "подаващи пистолети боеприпаси",
		type_rifle = "патрони за автоматична пушка",
		type_sniper = "патрони за снайпер",
		type_shotgun = "патрони за пушка със 12 калибъра",
		type_stungun = "купички за електрошоков пистолет",

		fill_ammo_success = "Успешно зареждане на патрони.",
		fill_ammo_failed = "Неуспешно зареждане на патрони."
	},

	throwables = {
		pick_up_weapon = "[${InteractionKey}] Вземи",

		no_weapon_equipped = "Нямате екипирано оръжие.",
		cant_throw_weapon = "Не можете да хвърляте това оръжие.",
		keybind_description = "Хвърлете оръжието си",

		total_throwables = "Хвърлими: ${count}",

		threw_weapon_logs_title = "Хвърли оръжие",
		threw_weapon_logs_details = "${consoleName} хвърли своето ${item} (${coords}).",
		picked_up_weapon_logs_title = "Взето Оръжие",
		picked_up_weapon_logs_details = "${consoleName} взе ${item} (${coords})."
	},

	weapons = {
		pick_up_fire_extinguisher = "Натисни ~INPUT_CONTEXT~ за да вземеш пожарогасител.",
		press_to_drop_fire_extinguisher = "Натисни ~INPUT_FRONTEND_RRIGHT~ за да хвърлиш пожарогасителя.",
		illegal_fire_extinguisher_model = "Опит за изтриване на пожарогасител от всички клиенти с модел, който не е пожарогасител.",

		airsoft_mode_on = "Превключване на режим Airsoft включен.",
		airsoft_mode_off = "Превключване на режим Airsoft изключен.",
		airsoft_mode_failed = "Неуспешно превключване на режима на игра на Airsoft.",

		no_weapon_equipped = "Не е прикрепено оръжие.",
		ammo_count_title = "Брой заряди",
		no_ammo = "Нямаш никакви заряди.",
		ammo_count = "**${ammoType}:** *x${ammoCount}*",

		ammo_pistol = "Пистолет",
		ammo_shotgun = "Пушка",
		ammo_smg = "Пистолет-пушка",
		ammo_rifle = "Рафална пушка",
		ammo_sniper = "Снайперска пушка",
		ammo_stungun = "Електрошоков пистолет",

		firing_mode_0 = "Режимът на стрелба е зададен на стандартен.",
		firing_mode_1 = "Режимът на стрелба е зададен на Полуавтоматичен.",
		firing_mode_2 = "Активиран е режимът на безопасност на оръжието.",

		safety_is_on = "Безопасността на оръжието е включена.",

		firing_mode_set_1 = "Режимът на стрелба е зададен на Еднократна стрелба.",
		firing_mode_set_2 = "Безопасността на оръжието е включена.",

		folded_stock = "Сгъната цев",
		unfolded_stock = "Разгъната цев",
		failed_to_toggle_stock = "Неуспешно превключване на цевта.",
		weapon_has_no_stock = "Това оръжие няма цев."
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] Регистриране на вход",
		check_in_timer = "[${remaining}s] Регистриране на вход",
		check_in_escorted = "Вие бъдете придружавани",
		checking_in = "Регистриране на вход",
		doctor_notified = "Доктор е уведомен, моля, изчакайте",
		leave_bed = "Натиснете ~INPUT_CONTEXT~ за да излезете от леглото",
		you_have_been_charged = "Вие бяхте таксувани $${cost} за вашите наранявания",
		beds_occupied = "Всички легла са заети",
		patient_checked_in = "Пациентът е регистриран на легло ${bed}",
		stop_bleeding = "[E] Спри Кървенето",
		stopping_bleeding = "Спиране на Кървенето",
		bleeding_stopped = "Кървенето е спряно",
		overdose_effects = "Имате ефекти от прекомерна доза.",
		you_have_parasite = "Имате паразит",
		you_have_multiple_parasite = "Имате няколко паразита",
		bandage = "[E] Поставете Превръзка",
		bandaging = "Превързване на рани",
		wounds_bandaged = "Раните са превързани",
		treat_injury = "[E] ${label} Травма",
		treating_injury = "Третиране на ${label} Травма",
		injury = "${label} Травма",
		cpr_done = "CPR успешен",
		cpr_fail = "Неуспешно намиране на лице",
		went_on_duty = "Отишъл на дежурство",
		went_off_duty = "Свършил дежурство",
		on_duty = "на дежурство",
		off_duty = "извън дежурство",
		press_to_sign = "Натиснете ~g~E ~w~за да се подпишете",
		open_vehicle_spawner = "Натиснете ~g~E ~w~за да отворите менюто за превозни средства",
		open_heli_spawner = "Натиснете ~g~E ~w~за да отворите менюто за хеликоптери",
		open_boat_spawner = "Натисни ~g~E ~w~, за да отвориш менюто с лодки",
		on = "вкл.",
		off = "изкл.",
		sign_as_doctor = "Натисни ~g~E ~w~, за да се ${status} като доктор",
		close_menu = "Затвори меню",
		vehicle_list = "Списък с превозни средства",
		park_vehicle = "Паркирай превозното средство",
		clear_area = "Моля, освободете гаража, преди да създадете превозно средство",
		unable_to_extra = "Не може да се модифицира 'extras' на това превозно средство!",
		warning = "Внимание",
		invalid_input = "Невалиден вход.",
		unable_to_extra_on_vehicle = "Не може да се модифицира 'extras' на това превозно средство!",
		heli_here_already = "Вече има хеликоптер на площадката за хеликоптери",
		ems_air_hq = "EMS Въздушна база",
		ems_boat_hq = "EMS Морска база",
		ems_garage = "EMS Гараж",
		e_to_get_treated = "[E] Получете лечение - $1250",
		e_check_in_player = "[E] Регистрирайте се с пренесен играч - $1250",
		check_in_blocked = "Регистрацията е заета",
		get_treated = "Получи Лечение - $1250",
		you_are_being_treated = "Вие получавате лечение",
		being_treated = "Получава Лечение",
		minute = "минута",
		minutes = "минути",
		second = "секунда",
		seconds = "секунди",
		kurwa_and = "и",
		wait_for_paramedic = "Моля изчакайте медицинската помощ да пристигне или изчакайте ${time} за да се появите наново",
		cannot_respawn_currently = "Не можеш да се оживиш в момента",
		hold_to_respawn = "Натисни и задръж ~b~ENTER ~w~, за да се оживиш или изчакай медицинска помощ",
		hold_to_respawn_secondslol = "Натисни и задръж ~b~ENTER (${seconds}) ~w~, за да се оживиш или изчакай медицинска помощ",
		passed_out = "Загуби съзнание",
		light = "Лека",
		moderate = "Умерена",
		heavy = "Силна",
		severe = "Тежка",
		arms_injured = "Ръцете са твърде наранени, не можеш да стреляш",
		injuryb = "Рана",
		bleeding_multiple_injuries = "кървения с множество наранявания",
		feels_irritated = "се чувства раздразнено",
		feels_painful = "Усеща се болка",
		feels_extremely_painful = "Усеща се изключително болка",
		multiple_injuries = "Имате няколко наранявания",
		bleeding = "кървене",
		bleeding_with_injury = "кървене с ${label} нараняване",
		bleeding_reduced = "Намалено кървене",
		bleeding_self_stopped = "Кървенето спря само",
		thanks_for_loot = "Бяхте ограбен, докато бяхте безсъзнателен. Някои предмети може да липсват. Слуховете говорят, че това е направила Нанси.",
		serial_number = "Сериен номер: ${serialNumber}<br><i>Това оръжие е регистрирано на ${fullName} (#${characterId}).</i>",
		serial_number_unknown = "Сериен номер: ${serialNumber}<br><i>Това оръжие не е регистрирано.</i>",
		serial_number_removed = "Серийният номер изглежда изтрит или избелял.",
		badge_owner = "<i>Този значка принадлежи на <b>${fullName} (${positionName})</b>.</i>",
		badge_owner_unknown = "Собственикът на значката е неизвестен.",
		citizen_card_owner = "<i>Тази лична карта принадлежи на <b>${fullName} (#${characterId})</b>.</i>",
		citizen_card_has_portrait = "<i>Тя има снимка.</i>",
		picture_pending = "<i>Снимката все още се обработва...</i>",
		picture_selfie_owner = "<i>Това е снимка на <b>${fullName}</b>.</i>",
		bought_by = "Купено от ${buyerName} (${buyerCid}).",
		bought_by_unknown = "Купувачът на този предмет е неизвестен.",
		cigarette_pack = "Остават ${cigarettes} цигари.",
		evidence_incomplete = "Тази торбичка с доказателства е непълна.",
		evidence_type = "Вид на доказателството",
		processed_picked_up = "<i>Подиграл от ${pickupName} и обработен от ${processName}.</i>",
		picked_up = "<i>Подиграл от ${pickupName}.</i>",
		processed_by = "<i>Обработено от ${processName}.</i>",
		evidence_casings = "Етикетите се връщат със серийния номер ${serialNumber}, който бе задържан от ${buyerName} (${buyerCid}) в момента на използването.",
		evidence_bullets = "Отличаващи се от тук снаряди се казва, че са били създадени от ${bulletLabel}.",
		evidence_clothing = "Един дрехи (${clothingType}).",
		evidence_car_dna = "DNA беше взето от превозно средство с номер на плочка ${plateNumber} и се свързва с ${DNAOwnerName} (${DNAOwner}).",
		evidence_dna = "DNA е взето от ${fullName} #${characterId}.",
		evidence_fingerprint = "Отпечатък на ${fullName} #${characterId}.",
		evidence_not_processed = "Тази торба с доказателства все още не е обработена.",
		additional_information = "Допълнителна информация:",
		picked_up_at_location = "Взето на място:",
		clothing_dna_trace = "ДНК следи връщат на ${fullName} (#${cid})",
		clothing_dna_trace_unprocessed = "Непреработени ДНК следи на облеклото",
		timestamp_of_pickup = "Времева маркировка на вземането:",
		weapon_name = "Име на оръжие:",
		casings_picked_up = "Брой събрани гилзи:",
		bullet_label = "Етикет на куршума:",
		impacts_found = "Брой открити следове от удари в района:",
		right_foot = "Дясна крачка",
		left_foot = "Лява крачка",
		right_hand = "Дясна ръка",
		left_hand = "Лява ръка",
		right_knee = "Дясно коляно",
		left_knee = "Ляво коляно",
		head = "Глава",
		neck = "Шия",
		right_arm = "Дясна ръка",
		left_arm = "Лява ръка",
		chest = "Гръден кош",
		pelvis = "Таз",
		right_shoulder = "Дясно рамо",
		left_shoulder = "Ляво рамо",
		right_wrist = "Дясна китка",
		left_wrist = "Лява китка",
		tounge = "Език",
		upper_lip = "Горна устна",
		lower_lip = "Долна устна",
		right_thigh = "Дясен бедрен мускул",
		left_thigh = "Ляв бедрен мускул",
		lower_spine = "Долна гръбначна колона",
		center_spine = "Централна гръбначна колона",
		upper_spine = "Горна гръбначна колона",
		root_spine = "Главна Брънка",
		right_clavicle = "Десен ключичен хълбо",
		left_clavicle = "Ляв ключичен хълбо",
		note_signed_by = "<b>Подписано от:</b> <i>${name} (#${cid})</i>",
		map_location = "<b>Маркирано място:</b> <i>${x}, ${y}</i>",
		smart_watch_hover = "<i>Тази умна гривна принадлежи на <b>${name} (#${cid})</b>. Тя е записала <b>${stepsWalked}</b> стъпки.</i>",
		item_contains = "<b>Съдържание:</b> <i>${contents}</i>.",
		item_engraving = "<b>Гравиране:</b> <i>${message}</i>.",
		evidence_incomplete = "Тази торбичка с доказателства е непълна."
	}
}
