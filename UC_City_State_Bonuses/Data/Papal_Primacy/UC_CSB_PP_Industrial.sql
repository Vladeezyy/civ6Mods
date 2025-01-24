-- UC_CSB_PP_Industrial
-- Author: JNR
--------------------------------------------------------------

-- Delete Old Bonuses
--------------------------------------------------------------
DELETE FROM TraitModifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_SMALL_INFLUENCE_BONUS_PAPAL_PRIMACY_BUILDING';
DELETE FROM TraitModifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_SMALL_INFLUENCE_BONUS_PAPAL_PRIMACY_DISTRICT';
DELETE FROM TraitModifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_MEDIUM_INFLUENCE_BONUS_PAPAL_PRIMACY_BUILDING';
DELETE FROM TraitModifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_MEDIUM_INFLUENCE_BONUS_PAPAL_PRIMACY_DISTRICT';
DELETE FROM TraitModifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_LARGE_INFLUENCE_BONUS_PAPAL_PRIMACY_BUILDING';
DELETE FROM TraitModifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_LARGE_INFLUENCE_BONUS_PAPAL_PRIMACY_DISTRICT';

DELETE FROM Modifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_SMALL_INFLUENCE_BONUS_PAPAL_PRIMACY_BUILDING';
DELETE FROM Modifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_SMALL_INFLUENCE_BONUS_PAPAL_PRIMACY_DISTRICT';
DELETE FROM Modifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_MEDIUM_INFLUENCE_BONUS_PAPAL_PRIMACY_BUILDING';
DELETE FROM Modifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_MEDIUM_INFLUENCE_BONUS_PAPAL_PRIMACY_DISTRICT';
DELETE FROM Modifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_LARGE_INFLUENCE_BONUS_PAPAL_PRIMACY_BUILDING';
DELETE FROM Modifiers WHERE ModifierId='MINOR_CIV_INDUSTRIAL_LARGE_INFLUENCE_BONUS_PAPAL_PRIMACY_DISTRICT';
--------------------------------------------------------------

-- Requirements
--------------------------------------------------------------
INSERT OR IGNORE INTO Requirements
		(RequirementId,											RequirementType)
VALUES	('REQUIRES_CITY_HAS_WORKSHOP_ETHIOPIA',					'REQUIREMENT_CITY_HAS_BUILDING'),
		('REQUIRES_CITY_HAS_FACTORY_ETHIOPIA',					'REQUIREMENT_CITY_HAS_BUILDING'),
		('REQUIRES_CITY_HAS_POWER_PLANT_ETHIOPIA',				'REQUIREMENT_CITY_HAS_BUILDING');

INSERT OR IGNORE INTO Requirements
		(RequirementId,											RequirementType)
SELECT	'REQUIRES_CITY_HAS_COAL_POWER_PLANT_ETHIOPIA',			'REQUIREMENT_CITY_HAS_BUILDING'
FROM	Buildings
WHERE	BuildingType='BUILDING_COAL_POWER_PLANT';

INSERT OR IGNORE INTO Requirements
		(RequirementId,											RequirementType)
SELECT	'REQUIRES_CITY_HAS_FOSSIL_FUEL_POWER_PLANT_ETHIOPIA',	'REQUIREMENT_CITY_HAS_BUILDING'
FROM	Buildings
WHERE	BuildingType='BUILDING_FOSSIL_FUEL_POWER_PLANT';
--------------------------------------------------------------

-- RequirementArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,											Name,			Value)
VALUES	('REQUIRES_CITY_HAS_WORKSHOP_ETHIOPIA',					'BuildingType',	'BUILDING_WORKSHOP'),
		('REQUIRES_CITY_HAS_FACTORY_ETHIOPIA',					'BuildingType',	'BUILDING_FACTORY'),
		('REQUIRES_CITY_HAS_POWER_PLANT_ETHIOPIA',				'BuildingType',	'BUILDING_POWER_PLANT');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,											Name,			Value)
SELECT	'REQUIRES_CITY_HAS_COAL_POWER_PLANT_ETHIOPIA',			'BuildingType',	'BUILDING_COAL_POWER_PLANT'
FROM	Buildings
WHERE	BuildingType='BUILDING_COAL_POWER_PLANT';

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,											Name,			Value)
SELECT	'REQUIRES_CITY_HAS_FOSSIL_FUEL_POWER_PLANT_ETHIOPIA',	'BuildingType',	'BUILDING_FOSSIL_FUEL_POWER_PLANT'
FROM	Buildings
WHERE	BuildingType='BUILDING_FOSSIL_FUEL_POWER_PLANT';
--------------------------------------------------------------

-- RequirementSetRequirements
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('BUILDING_IS_WORKSHOP_ETHIOPIA',		'REQUIRES_CITY_HAS_WORKSHOP_ETHIOPIA'),
		('BUILDING_IS_FACTORY_ETHIOPIA',		'REQUIRES_CITY_HAS_FACTORY_ETHIOPIA'),
		('BUILDING_IS_POWER_PLANT_ETHIOPIA',	'REQUIRES_CITY_HAS_POWER_PLANT_ETHIOPIA');

INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'BUILDING_IS_POWER_PLANT_ETHIOPIA',		'REQUIRES_CITY_HAS_COAL_POWER_PLANT_ETHIOPIA'
FROM	Buildings
WHERE	BuildingType='BUILDING_COAL_POWER_PLANT';

INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'BUILDING_IS_POWER_PLANT_ETHIOPIA',		'REQUIRES_CITY_HAS_FOSSIL_FUEL_POWER_PLANT_ETHIOPIA'
FROM	Buildings
WHERE	BuildingType='BUILDING_FOSSIL_FUEL_POWER_PLANT';
--------------------------------------------------------------

-- RequirementSets
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('BUILDING_IS_WORKSHOP_ETHIOPIA',		'REQUIREMENTSET_TEST_ALL'),
		('BUILDING_IS_FACTORY_ETHIOPIA',		'REQUIREMENTSET_TEST_ALL'),
		('BUILDING_IS_POWER_PLANT_ETHIOPIA',	'REQUIREMENTSET_TEST_ANY');
--------------------------------------------------------------

-- Modifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO Modifiers
		(ModifierId,																				ModifierType,												SubjectRequirementSetId)
VALUES	('MINOR_CIV_INDUSTRIAL_SMALL_INFLUENCE_ETHIOPIA_BUILDING_PAPAL_PRIMACY_JNR_CSB',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_HAS_SMALL_INFLUENCE_AND_PAPAL_PRIMACY'),
		('MINOR_CIV_INDUSTRIAL_SMALL_INFLUENCE_ETHIOPIA_DISTRICT_PAPAL_PRIMACY_JNR_CSB',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_HAS_SMALL_INFLUENCE_AND_PAPAL_PRIMACY'),
		('MINOR_CIV_INDUSTRIAL_MEDIUM_INFLUENCE_FACTORY_BUILDING_PAPAL_PRIMACY_JNR_CSB',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_HAS_MEDIUM_INFLUENCE_AND_PAPAL_PRIMACY'),
		('MINOR_CIV_INDUSTRIAL_MEDIUM_INFLUENCE_FACTORY_DISTRICT_PAPAL_PRIMACY_JNR_CSB',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_HAS_MEDIUM_INFLUENCE_AND_PAPAL_PRIMACY'),
		('MINOR_CIV_INDUSTRIAL_LARGE_INFLUENCE_POWER_PLANT_BUILDING_PAPAL_PRIMACY_JNR_CSB',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_HAS_LARGE_INFLUENCE_AND_PAPAL_PRIMACY'),
		('MINOR_CIV_INDUSTRIAL_LARGE_INFLUENCE_POWER_PLANT_DISTRICT_PAPAL_PRIMACY_JNR_CSB',			'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',						'PLAYER_HAS_LARGE_INFLUENCE_AND_PAPAL_PRIMACY'),

		('MINOR_CIV_INDUSTRIAL_BUILDING_PRODUCTION_FOR_WORKSHOP_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',	'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_PRODUCTION',	'BUILDING_IS_WORKSHOP_ETHIOPIA'),
		('MINOR_CIV_INDUSTRIAL_DISTRICT_PRODUCTION_FOR_WORKSHOP_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',	'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_DISTRICT_PRODUCTION',	'BUILDING_IS_WORKSHOP_ETHIOPIA'),
		('MINOR_CIV_INDUSTRIAL_BUILDING_PRODUCTION_FOR_FACTORY_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',		'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_PRODUCTION',	'BUILDING_IS_FACTORY_ETHIOPIA'),
		('MINOR_CIV_INDUSTRIAL_DISTRICT_PRODUCTION_FOR_FACTORY_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',		'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_DISTRICT_PRODUCTION',	'BUILDING_IS_FACTORY_ETHIOPIA'),
		('MINOR_CIV_INDUSTRIAL_BUILDING_PRODUCTION_FOR_POWER_PLANT_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',	'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_BUILDING_PRODUCTION',	'BUILDING_IS_POWER_PLANT_ETHIOPIA'),
		('MINOR_CIV_INDUSTRIAL_DISTRICT_PRODUCTION_FOR_POWER_PLANT_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',	'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_DISTRICT_PRODUCTION',	'BUILDING_IS_POWER_PLANT_ETHIOPIA');
--------------------------------------------------------------

-- ModifierArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,																				Name,			Value)
VALUES	('MINOR_CIV_INDUSTRIAL_SMALL_INFLUENCE_ETHIOPIA_BUILDING_PAPAL_PRIMACY_JNR_CSB',			'ModifierId',	'MINOR_CIV_INDUSTRIAL_BUILDING_PRODUCTION_FOR_WORKSHOP_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB'),
		('MINOR_CIV_INDUSTRIAL_SMALL_INFLUENCE_ETHIOPIA_DISTRICT_PAPAL_PRIMACY_JNR_CSB',			'ModifierId',	'MINOR_CIV_INDUSTRIAL_DISTRICT_PRODUCTION_FOR_WORKSHOP_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB'),
		('MINOR_CIV_INDUSTRIAL_MEDIUM_INFLUENCE_FACTORY_BUILDING_PAPAL_PRIMACY_JNR_CSB',			'ModifierId',	'MINOR_CIV_INDUSTRIAL_BUILDING_PRODUCTION_FOR_FACTORY_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB'),
		('MINOR_CIV_INDUSTRIAL_MEDIUM_INFLUENCE_FACTORY_DISTRICT_PAPAL_PRIMACY_JNR_CSB',			'ModifierId',	'MINOR_CIV_INDUSTRIAL_DISTRICT_PRODUCTION_FOR_FACTORY_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB'),
		('MINOR_CIV_INDUSTRIAL_LARGE_INFLUENCE_POWER_PLANT_BUILDING_PAPAL_PRIMACY_JNR_CSB',			'ModifierId',	'MINOR_CIV_INDUSTRIAL_BUILDING_PRODUCTION_FOR_POWER_PLANT_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB'),
		('MINOR_CIV_INDUSTRIAL_LARGE_INFLUENCE_POWER_PLANT_DISTRICT_PAPAL_PRIMACY_JNR_CSB',			'ModifierId',	'MINOR_CIV_INDUSTRIAL_DISTRICT_PRODUCTION_FOR_POWER_PLANT_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB'),

		('MINOR_CIV_INDUSTRIAL_BUILDING_PRODUCTION_FOR_WORKSHOP_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',	'Amount',		2),
		('MINOR_CIV_INDUSTRIAL_DISTRICT_PRODUCTION_FOR_WORKSHOP_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',	'Amount',		2),
		('MINOR_CIV_INDUSTRIAL_BUILDING_PRODUCTION_FOR_FACTORY_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',		'Amount',		4),
		('MINOR_CIV_INDUSTRIAL_DISTRICT_PRODUCTION_FOR_FACTORY_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',		'Amount',		4),
		('MINOR_CIV_INDUSTRIAL_BUILDING_PRODUCTION_FOR_POWER_PLANT_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',	'Amount',		6),
		('MINOR_CIV_INDUSTRIAL_DISTRICT_PRODUCTION_FOR_POWER_PLANT_ETHIOPIA_PAPAL_PRIMACY_JNR_CSB',	'Amount',		6);
--------------------------------------------------------------

-- TraitModifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('MINOR_CIV_INDUSTRIAL_TRAIT',	'MINOR_CIV_INDUSTRIAL_SMALL_INFLUENCE_ETHIOPIA_BUILDING_PAPAL_PRIMACY_JNR_CSB'),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MINOR_CIV_INDUSTRIAL_SMALL_INFLUENCE_ETHIOPIA_DISTRICT_PAPAL_PRIMACY_JNR_CSB'),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MINOR_CIV_INDUSTRIAL_MEDIUM_INFLUENCE_FACTORY_BUILDING_PAPAL_PRIMACY_JNR_CSB'),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MINOR_CIV_INDUSTRIAL_MEDIUM_INFLUENCE_FACTORY_DISTRICT_PAPAL_PRIMACY_JNR_CSB'),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MINOR_CIV_INDUSTRIAL_LARGE_INFLUENCE_POWER_PLANT_BUILDING_PAPAL_PRIMACY_JNR_CSB'),
		('MINOR_CIV_INDUSTRIAL_TRAIT',	'MINOR_CIV_INDUSTRIAL_LARGE_INFLUENCE_POWER_PLANT_DISTRICT_PAPAL_PRIMACY_JNR_CSB');
--------------------------------------------------------------