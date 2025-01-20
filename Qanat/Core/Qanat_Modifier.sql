-- LHM_Modifier
-- Author: Ithildin
-- DateCreated: 2/24/2024 12:38:34 AM
--------------------------------------------------------------
INSERT OR REPLACE INTO BuildingModifiers (BuildingType, ModifierId)
VALUES	('BUILDING_KAREZ',							'MODFEAT_KAREZ_VALID_IMPROVEMENT'),
		('BUILDING_KAREZ',							'MODFEAT_KAREZ_NO_FRESH_WATER_HOUSING'),
		('BUILDING_KAREZ',							'MODFEAT_KAREZ_FRESH_WATER_HOUSING'),
		('BUILDING_KAREZ',							'TRAIT_WORK_DESERT_MOUNTAIN');

INSERT INTO ImprovementModifiers (ImprovementType, ModifierId)
VALUES	('IMPROVEMENT_KAREZ',						'MODFEAT_KAREZ_NO_FRESH_WATER_HOUSING'),
		('IMPROVEMENT_KAREZ',						'MODFEAT_KAREZ_FRESH_WATER_HOUSING_SUB'),
		('IMPROVEMENT_KAREZ',						'STEPWELL_HOUSING_WITHTECH');

INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, SubjectStackLimit)
VALUES	('MODFEAT_KAREZ_VALID_IMPROVEMENT',			'MODIFIER_PLAYER_ADJUST_VALID_IMPROVEMENT',				NULL),
		('MODFEAT_KAREZ_NO_FRESH_WATER_HOUSING',	'MODIFIER_LAREZ_CITY_ADJUST_NO_FRESH_WATER_HOUSING',	1),
		('MODFEAT_KAREZ_FRESH_WATER_HOUSING',		'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_HOUSING',			1),
		('MODFEAT_KAREZ_FRESH_WATER_HOUSING_SUB',	'MODIFIER_SINGLE_CITY_ADJUST_IMPROVEMENT_HOUSING',		1);

INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('MODFEAT_KAREZ_VALID_IMPROVEMENT',			'ImprovementType', 'IMPROVEMENT_KAREZ'),
		('MODFEAT_KAREZ_NO_FRESH_WATER_HOUSING',	'NoHousing',		1),
		('MODFEAT_KAREZ_FRESH_WATER_HOUSING',		'Amount',			3),
		('MODFEAT_KAREZ_FRESH_WATER_HOUSING_SUB',	'Amount',			3);

INSERT OR REPLACE INTO Types (Type, Kind)
VALUES	('MODIFIER_LAREZ_CITY_ADJUST_NO_FRESH_WATER_HOUSING', 'KIND_MODIFIER');

INSERT OR REPLACE INTO DynamicModifiers (ModifierType, CollectionType, EffectType)
VALUES	('MODIFIER_LAREZ_CITY_ADJUST_NO_FRESH_WATER_HOUSING', 'COLLECTION_OWNER', 'EFFECT_ADJUST_NO_FRESH_WATER_HOUSING');

INSERT OR REPLACE INTO Improvement_Adjacencies (ImprovementType, YieldChangeId)
SELECT	ImprovementType, 'Karez_Food'
FROM	Improvement_YieldChanges WHERE YieldType = 'YIELD_FOOD';

--For CS Karez
INSERT OR REPLACE INTO BuildingModifiers (BuildingType, ModifierId)
SELECT	'BUILDING_KAREZ',							'MODFEAT_KAREZ_VALID_'||ImprovementType
FROM	Improvements WHERE ImprovementType = 'IMPROVEMENT_PHANTA_CS_GAOCHANG_KAREZ';

INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType)
SELECT	'MODFEAT_KAREZ_VALID_'||ImprovementType,	'MODIFIER_PLAYER_ADJUST_VALID_IMPROVEMENT'
FROM	Improvements WHERE ImprovementType = 'IMPROVEMENT_PHANTA_CS_GAOCHANG_KAREZ';

INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value)
SELECT	'MODFEAT_KAREZ_VALID_'||ImprovementType,	'ImprovementType', ImprovementType
FROM	Improvements WHERE ImprovementType = 'IMPROVEMENT_PHANTA_CS_GAOCHANG_KAREZ';

UPDATE	Improvement_Adjacencies
SET		YieldChangeId = 'Karez_FoodEX'
WHERE	ImprovementType = 'IMPROVEMENT_PHANTA_CS_GAOCHANG_KAREZ' AND YieldChangeId = 'Karez_Food';