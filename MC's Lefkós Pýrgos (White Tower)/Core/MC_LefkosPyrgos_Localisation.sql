--  --  --  --  --  --  --  --  --  --
-- Civilization VI: MC's Wonders
-- New Wonders Game Text
-- Authors: maconnolly
-- DateCreated: 25/04/2022
--  --  --  --  --  --  --  --  --  --
INSERT
	OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES
	(
		'ru_RU',
		'LOC_BUILDING_MC_LEFKOS_PYRGOS_NAME',
		'Лефкос Пиргос'
	),
	(
		'ru_RU',
		'LOC_BUILDING_MC_LEFKOS_PYRGOS_DESCRIPTION',
		'+2 [ICON_CULTURE] культуры за ход. Запрещает единицам высаживаться на клетке, которую занимает здание, или садиться на корабль с неё.[NEWLINE][NEWLINE]После строительства этого чуда света город, в котором оно построено, может возводить улучшение "Прибрежная стена" для дополнительной защиты своих берегов.[NEWLINE][NEWLINE]Единицы на этой клетке получают +4 обзор и +8 [ICON_Strength] дальности атаки против морских юнитов.[NEWLINE][NEWLINE]Шпионы противников в этом городе действуют на один уровень хуже.[NEWLINE][NEWLINE]Здание также может содержать два артефакта.[NEWLINE][NEWLINE]Должно быть построено на берегу.'
	),
	(
		'ru_RU',
		'LOC_BUILDING_MC_LEFKOS_PYRGOS_QUOTE',
		'"Мы не должны верить большинству, которое говорит, что только свободные люди должны получать образование; скорее, мы должны верить философам, которые утверждают, что только образованные свободны."[NEWLINE]- Эпиктет'
	),
	(
		'ru_RU',
		'LOC_IMPROVEMENT_MC_COASTAL_WALL_NAME',
		'Прибрежная стена'
	),
	(
		'ru_RU',
		'LOC_IMPROVEMENT_MC_COASTAL_WALL_DESCRIPTION',
		'Уникальное защитное улучшение, которое можно построить в городе с Лефкос Пиргосом.[NEWLINE][NEWLINE]Обеспечивает бонусы укреплений, запрещает высадку и посадку юнитов на клетке, которую занимает, и снижает скорость передвижения юнитов через неё.[NEWLINE][NEWLINE]Должно быть построено на берегу.'
	),
	(
		'ru_RU',
		'LOC_BUILDING_LEFKOS_PYRGOS_THEMINGBONUS',
		'Бонус тематизации увеличивает выход на 50%, если экспонируются [ICON_GreatWork_Artifact] артефакты одной эпохи из разных цивилизаций.'
	),
	(
		'ru_RU',
		'LOC_ABILITY_LEFKOS_PYRGOS_INCREASED_SIGHT_NAME',
		'Увеличенный обзор'
	),
	(
		'ru_RU',
		'LOC_ABILITY_LEFKOS_PYRGOS_INCREASED_SIGHT_DESCRIPTION',
		'Юниты на клетке с Лефкос Пиргосом получают +4 к обзору.'
	),
	(
		'ru_RU',
		'LOC_ABILITY_LEFKOS_PYRGOS_RANGED_STRENGTH_BONUS_NAME',
		'Оборона башни'
	),
	(
		'ru_RU',
		'LOC_ABILITY_LEFKOS_PYRGOS_RANGED_STRENGTH_BONUS_DESCRIPTION',
		'Дальнобойные юниты на клетке с Лефкос Пиргосом атакуют морские юниты с +8 [ICON_Strength] дальности атаки.'
	),
	(
		'ru_RU',
		'LOC_PEDIA_WONDERS_PAGE_BUILDING_MC_LEFKOS_PYRGOS_CHAPTER_HISTORY_PARA_1',
		'Белая башня Салоник (греческий: Лефкос Пиргос) — памятник и музей на набережной города Салоники, столицы региона Македония в Северной Греции. Современная башня заменила старую византийскую крепость, упоминаемую около XII века. Османская империя реконструировала башню после захвата Салоник султаном Мурадом II в 1430 году, чтобы укрепить оборону города. Во время османского правления Белая башня была известна как тюрьма и место массовых казней.'
	),
	(
		'ru_RU',
		'LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_MC_COASTAL_WALL_CHAPTER_HISTORY_PARA_1',
		'На протяжении тысячелетий люди, живущие на побережьях, стремились ослабить эрозию и защититься как от природных, так и от человеческих угроз. Прибрежные стены защищали дома, обеспечивая безопасность.'
	),
	(
		'ru_RU',
		'LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_MC_COASTAL_WALL_CHAPTER_HISTORY_PARA_2',
		'Оригинальный город Византий имел морские стены, следы которых сохранились и приписываются Константину I. Впервые упоминания о морских стенах появляются в 439 году, когда городские власти восстанавливали стены, чтобы защитить город от вандалов.'
	),
	(
		'ru_RU',
		'LOC_COMBAT_PREVIEW_LEFKOS_PYRGOS_RANGED_STRENGTH_VS_NAVAL',
		'+{1_Value} бонус при нахождении на Лефкос Пиргосе'
	),
	(
		'ru_RU',
		'LOC_TECH_ADVANCED_BALLISTICS_DESCRIPTION',
		'После изучения любой цивилизацией все юниты могут преодолевать скальные стены и передвигаться через улучшения "Прибрежная стена".'
	),
	(
		'ru_RU',
		'LOC_PROMOTION_COMMANDO_DESCRIPTION',
		'+1 [ICON_Movement] скорость. Может преодолевать скалы и перемещаться через улучшения "Прибрежная стена".'
	),
	(
		'ru_RU',
		'LOC_PROMOTION_SUPPRESSION_DESCRIPTION',
		'Обеспечивает зону контроля. Может преодолевать скалы и перемещаться через улучшения "Прибрежная стена".'
	),
	(
		'ru_RU',
		'LOC_PROMOTION_CHOKE_POINTS_DESCRIPTION',
		'+7 [ICON_Strength] к боевой мощи при защите в лесах, джунглях, на холмах или болотах. Может преодолевать скалы и перемещаться через улучшения "Прибрежная стена".'
	),
	(
		'ru_RU',
		'LOC_PROMOTION_DEPREDATION_DESCRIPTION',
		'Грабежи стоят всего 1 очко [ICON_Movement] передвижения. Может преодолевать скалы и перемещаться через улучшения "Прибрежная стена".'
	),
	(
		'ru_RU',
		'LOC_PROMOTION_BREAKTHROUGH_DESCRIPTION',
		'+1 дополнительная атака за ход, если очков [ICON_Movement] передвижения достаточно. Может преодолевать скалы и перемещаться через улучшения "Прибрежная стена".'
	);