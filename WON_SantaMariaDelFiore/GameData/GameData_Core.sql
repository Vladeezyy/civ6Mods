--------------------
-- Basics
--------------------

INSERT INTO Types
		(Type,								Kind)
VALUES	('BUILDING_SANTA_MARIA_DEL_FIORE',	'KIND_BUILDING');

INSERT INTO Buildings
		(BuildingType,
		Name,
		Description,
		PrereqCivic,
		AdjacentDistrict,
		Cost,
		AdvisorType,
		MaxWorldInstances,
		IsWonder,
		RequiresPlacement,
		ObsoleteEra,
		Quote)
VALUES	('BUILDING_SANTA_MARIA_DEL_FIORE',
		'LOC_BUILDING_SANTA_MARIA_DEL_FIORE_NAME',
		'LOC_BUILDING_SANTA_MARIA_DEL_FIORE_DESCRIPTION',
		'CIVIC_HUMANISM',
		'DISTRICT_CITY_CENTER',
		920,
		'ADVISOR_GENERIC',
		1,
		1,
		1,
		'ERA_MODERN',
		'LOC_BUILDING_SANTA_MARIA_DEL_FIORE_QUOTE');


INSERT INTO Building_GreatPersonPoints
		(BuildingType,						GreatPersonClassType,				PointsPerTurn)
VALUES	('BUILDING_SANTA_MARIA_DEL_FIORE',	'GREAT_PERSON_CLASS_ENGINEER',		3);

INSERT INTO Building_GreatWorks
		(BuildingType,						GreatWorkSlotType,			NumSlots,	NonUniquePersonYield,	NonUniquePersonTourism)
VALUES	('BUILDING_SANTA_MARIA_DEL_FIORE',	'GREATWORKSLOT_ART',		3,			3,						2);

INSERT INTO Building_ValidTerrains
		(BuildingType,						TerrainType)
VALUES	('BUILDING_SANTA_MARIA_DEL_FIORE',	'TERRAIN_GRASS'),
		('BUILDING_SANTA_MARIA_DEL_FIORE',	'TERRAIN_PLAINS'),
		('BUILDING_SANTA_MARIA_DEL_FIORE',	'TERRAIN_DESERT'),
		('BUILDING_SANTA_MARIA_DEL_FIORE',	'TERRAIN_TUNDRA'),
		('BUILDING_SANTA_MARIA_DEL_FIORE',	'TERRAIN_SNOW');

--------------------
-- Bonuses
--------------------

--==== 1: Grant a free Great Artist when completed.

INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES 
('BUILDING_SANTA_MARIA_DEL_FIORE', 'MODFEAT_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_WONDER');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODFEAT_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_WONDER', 'MODIFIER_SINGLE_CITY_GRANT_GREAT_PERSON_CLASS_IN_CITY', 1, 1, 0, NULL, 'REQSET_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_WONDER');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODFEAT_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_WONDER', 'Amount', '1'), 
('MODFEAT_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_WONDER', 'GreatPersonClassType', 'GREAT_PERSON_CLASS_ARTIST');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_WONDER', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_WONDER', 'REQ_SANTA_MARIA_DEL_FIORE_CAN_RECRUIT_GREAT_ARTIST');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_SANTA_MARIA_DEL_FIORE_CAN_RECRUIT_GREAT_ARTIST', 'REQUIREMENT_PLAYER_CAN_EVER_EARN_GREAT_PERSON_CLASS');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_SANTA_MARIA_DEL_FIORE_CAN_RECRUIT_GREAT_ARTIST', 'GreatPersonClass', 'GREAT_PERSON_CLASS_ARTIST');

--==== 2.1: Grant a free Great Artist when completed.


INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) VALUES 
('MODFEAT_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_ENGINEER', 'MODTYPE_SANTA_MARIA_DEL_FIORE_PLAYER_CITIES_GRANT_GREAT_PERSON_CLASS_IN_CITY', 1, 1, 0, NULL, 'REQSET_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_ENGINEER');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('MODFEAT_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_ENGINEER', 'Amount', '1'), 
('MODFEAT_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_ENGINEER', 'GreatPersonClassType', 'GREAT_PERSON_CLASS_ARTIST');

-- Custom ModifierType

INSERT INTO Types (Type, Kind) VALUES 
('MODTYPE_SANTA_MARIA_DEL_FIORE_PLAYER_CITIES_GRANT_GREAT_PERSON_CLASS_IN_CITY', 'KIND_MODIFIER');

INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType) VALUES 
('MODTYPE_SANTA_MARIA_DEL_FIORE_PLAYER_CITIES_GRANT_GREAT_PERSON_CLASS_IN_CITY', 'COLLECTION_PLAYER_CITIES', 'EFFECT_GRANT_GREAT_PERSON_CLASS_IN_CITY');

-- RequirementSets

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES 
('REQSET_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_ENGINEER', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES 
('REQSET_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_ENGINEER', 'REQ_SANTA_MARIA_DEL_FIORE_CAN_RECRUIT_GREAT_ARTIST'), 
('REQSET_SANTA_MARIA_DEL_FIORE_GREAT_ARTIST_ENGINEER', 'REQ_PHANTA_SANTA_MARIA_DEL_FIORE_CITY');

-- Requirements

INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('REQ_PHANTA_SANTA_MARIA_DEL_FIORE_CITY', 'REQUIREMENT_CITY_HAS_BUILDING');

INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES 
('REQ_PHANTA_SANTA_MARIA_DEL_FIORE_CITY', 'BuildingType', 'BUILDING_SANTA_MARIA_DEL_FIORE');

--==== 2.1 Attach
