-- LHM_Modifier
-- Author: Ithildin
-- DateCreated: 2/24/2024 12:38:34 AM
--------------------------------------------------------------
INSERT OR REPLACE INTO BuildingModifiers (BuildingType, ModifierId)
VALUES	('BUILDING_TAER_TEMPLE',					'MODFEAT_TAER_TEMPLE_RELIGION_PRESSURE'),
		('BUILDING_TAER_TEMPLE',					'MODFEAT_TAER_TEMPLE_IGNORE_PRESSURE'),
		('BUILDING_TAER_TEMPLE',					'MODFEAT_TAER_TEMPLE_IGNORE_COMBAT'),
		('BUILDING_TAER_TEMPLE',					'MODFEAT_TAER_TEMPLE_HERO_LIFE');
		
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType)
VALUES	('MODFEAT_TAER_TEMPLE_RELIGION_PRESSURE',	'MODIFIER_SINGLE_CITY_RELIGION_PRESSURE'),
		('MODFEAT_TAER_TEMPLE_IGNORE_PRESSURE',		'MODIFIER_SINGLE_CITY_RELIGION_IGNORE_PRESSURE'),
		('MODFEAT_TAER_TEMPLE_IGNORE_COMBAT',		'MODIFIER_SINGLE_CITY_RELIGION_IGNORE_COMBAT'),
		('MODFEAT_TAER_TEMPLE_HERO_LIFE',			'MODIFIER_PLAYER_ADJUST_PROPERTY');

INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('MODFEAT_TAER_TEMPLE_RELIGION_PRESSURE',	'Amount',	100),
		('MODFEAT_TAER_TEMPLE_IGNORE_PRESSURE',		'Enable',	1),
		('MODFEAT_TAER_TEMPLE_IGNORE_COMBAT',		'Enable',	1),
		('MODFEAT_TAER_TEMPLE_HERO_LIFE',			'Key',		'PlayerHeroesExtraLifespan'),
		('MODFEAT_TAER_TEMPLE_HERO_LIFE',			'Amount',	1);