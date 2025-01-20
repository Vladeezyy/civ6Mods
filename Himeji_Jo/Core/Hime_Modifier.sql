-- LHM_Modifier
-- Author: Ithildin
-- DateCreated: 2/24/2024 12:38:34 AM
--------------------------------------------------------------
INSERT OR REPLACE INTO BuildingModifiers (BuildingType, ModifierId)
VALUES	('BUILDING_HIMEJI_JO',							'MODFEAT_HIMEJI_GRANT_ABILITY_STR'),
		('BUILDING_HIMEJI_JO',							'MODFEAT_HIMEJI_GRANT_ABILITY_MOV'),
		('BUILDING_HIMEJI_JO',							'MODFEAT_HIMEJI_VALID_WALL'),
		('BUILDING_HIMEJI_JO',							'MODFEAT_HIMEJI_GRANT_WALL1'),
		('BUILDING_HIMEJI_JO',							'MODFEAT_HIMEJI_GRANT_WALL2'),
		('BUILDING_HIMEJI_JO',							'MODFEAT_HIMEJI_GRANT_WALL3'),
		('BUILDING_HIMEJI_WALL',						'MODFEAT_HIMEJI_CITY_ATTACKS_PER_TURN'),
		('BUILDING_HIMEJI_WALL',						'TSIKHE_PREVENT_MELEE_ATTACK_OUTER_DEFENSES'),
		('BUILDING_HIMEJI_WALL',						'TSIKHE_PREVENT_BYPASS_OUTER_DEFENSE');

INSERT OR REPLACE INTO UnitAbilityModifiers (UnitAbilityType, ModifierId)
VALUES	('ABILITY_HIMEJI_STR',							'MODFEAT_HIMEJI_STR'),
		('ABILITY_HIMEJI_MOV',							'MODFEAT_HIMEJI_MOV');

INSERT OR REPLACE INTO GovernmentModifiers (GovernmentType, ModifierId)
VALUES	('GOVERNMENT_MONARCHY',							'MONARCHY_HIMEJI_PRODUCTION'),
		('GOVERNMENT_MONARCHY',							'MONARCHY_HIMEJI_HOUSING');

INSERT OR REPLACE INTO PolicyModifiers (PolicyType, ModifierId)
VALUES	('POLICY_LIMES',								'LIMES_HIMEJI_PRODUCTION'),
		('POLICY_MILITARY_RESEARCH',					'MILITARYRESEARCH_HIMEJI_SCIENCE_MODIFIER');

INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType,	Permanent, SubjectRequirementSetId)
VALUES	('MODFEAT_HIMEJI_GRANT_ABILITY_STR',			'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					1, NULL),
		('MODFEAT_HIMEJI_GRANT_ABILITY_MOV',			'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					1, NULL),
		('MODFEAT_HIMEJI_VALID_WALL',					'MODIFIER_PLAYER_ADJUST_VALID_BUILDING',				0, NULL),
		('MODFEAT_HIMEJI_GRANT_WALL1',					'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY_IGNORE',	0, NULL),
		('MODFEAT_HIMEJI_GRANT_WALL2',					'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY_IGNORE',	0, NULL),
		('MODFEAT_HIMEJI_GRANT_WALL3',					'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY_IGNORE',	0, NULL),
		('MODFEAT_HIMEJI_CITY_ATTACKS_PER_TURN',		'MODIFIER_CITY_ADJUST_ATTACKS_PER_TURN',				0, NULL),

		('MODFEAT_HIMEJI_STR',							'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					0, 'REQSET_HIMEJI_UNIT_IN_OWNER_TERRITORY'),
		('MODFEAT_HIMEJI_MOV',							'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',					0, 'REQSET_HIMEJI_UNIT_IN_OWNER_TERRITORY'),
		('MONARCHY_HIMEJI_PRODUCTION',					'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',	0, NULL),
		('MONARCHY_HIMEJI_HOUSING',						'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_HOUSING',			0, 'CITY_HAS_HIMEJI_WALLS'),
		('LIMES_HIMEJI_PRODUCTION',						'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',	0, NULL),
		('MILITARYRESEARCH_HIMEJI_SCIENCE_MODIFIER',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	0, NULL);

INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('MODFEAT_HIMEJI_GRANT_ABILITY_STR',			'AbilityType',				'ABILITY_HIMEJI_STR'),
		('MODFEAT_HIMEJI_GRANT_ABILITY_MOV',			'AbilityType',				'ABILITY_HIMEJI_MOV'),
		('MODFEAT_HIMEJI_VALID_WALL',					'BuildingType',				'BUILDING_HIMEJI_WALL'),
		('MODFEAT_HIMEJI_VALID_WALL',					'BuildingTypeToReplace',	'BUILDING_STAR_FORT'),
		('MODFEAT_HIMEJI_GRANT_WALL1',					'BuildingType',				'BUILDING_WALLS'),
		('MODFEAT_HIMEJI_GRANT_WALL2',					'BuildingType',				'BUILDING_CASTLE'),
		('MODFEAT_HIMEJI_GRANT_WALL3',					'BuildingType',				'BUILDING_STAR_FORT'),
		('MODFEAT_HIMEJI_CITY_ATTACKS_PER_TURN',		'Amount',					1),

		('MODFEAT_HIMEJI_STR',							'Amount',					5),
		('MODFEAT_HIMEJI_MOV',							'Amount',					1),
		('MONARCHY_HIMEJI_PRODUCTION',					'BuildingType',				'BUILDING_HIMEJI_WALL'),
		('MONARCHY_HIMEJI_PRODUCTION',					'Amount',					50),
		('MONARCHY_HIMEJI_HOUSING',						'Amount',					1),
		('LIMES_HIMEJI_PRODUCTION',						'BuildingType',				'BUILDING_HIMEJI_WALL'),
		('LIMES_HIMEJI_PRODUCTION',						'Amount',					100),
		('MILITARYRESEARCH_HIMEJI_SCIENCE_MODIFIER',	'BuildingType',				'BUILDING_HIMEJI_WALL'),
		('MILITARYRESEARCH_HIMEJI_SCIENCE_MODIFIER',	'YieldType',				'YIELD_SCIENCE'),
		('MILITARYRESEARCH_HIMEJI_SCIENCE_MODIFIER',	'Amount',					2);

INSERT OR REPLACE INTO ModifierStrings (ModifierId, Context, Text)
VALUES	('MODFEAT_HIMEJI_STR',							'Preview',					'LOC_MODFEAT_HIMEJI_STR');

INSERT OR REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)
VALUES	('REQSET_HIMEJI_UNIT_IN_OWNER_TERRITORY',		'REQUIREMENTSET_TEST_ALL'),
		('CITY_HAS_HIMEJI_WALLS',						'REQUIREMENTSET_TEST_ALL');

INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
VALUES	('REQSET_HIMEJI_UNIT_IN_OWNER_TERRITORY',		'REQ_HIMEJI_UNIT_IN_OWNER_TERRITORY'),
		('CITY_HAS_HIMEJI_WALLS',						'REQUIRES_CITY_HAS_HIMEJI_WALLS');

INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType)
VALUES	('REQ_HIMEJI_UNIT_IN_OWNER_TERRITORY',			'REQUIREMENT_UNIT_IN_OWNER_TERRITORY'),
		('REQUIRES_CITY_HAS_HIMEJI_WALLS',				'REQUIREMENT_CITY_HAS_BUILDING');

INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value)
VALUES	('REQUIRES_CITY_HAS_HIMEJI_WALLS',				'BuildingType', 'BUILDING_HIMEJI_WALL');
