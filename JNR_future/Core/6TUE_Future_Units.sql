-- 6TUE_Future_Units
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,							Kind)
VALUES	('UNIT_JNR_FUTURE_MELEE',		'KIND_UNIT'),
		('UNIT_JNR_FUTURE_ANTI_CAV',	'KIND_UNIT'),
		('UNIT_JNR_FUTURE_RECON',		'KIND_UNIT'),
		('UNIT_JNR_FUTURE_RANGED',		'KIND_UNIT'),
		('UNIT_JNR_FUTURE_SIEGE',		'KIND_UNIT'),
		('UNIT_JNR_FUTURE_LIGHT_CAV',	'KIND_UNIT'),
		('UNIT_JNR_FUTURE_HEAVY_CAV',	'KIND_UNIT'),
		('UNIT_JNR_FUTURE_NAV_MELEE',	'KIND_UNIT'),
		('UNIT_JNR_FUTURE_NAV_RANGED',	'KIND_UNIT'),
		('UNIT_JNR_FUTURE_NAV_RAIDER',	'KIND_UNIT'),
		('UNIT_JNR_FUTURE_NAV_CARRIER',	'KIND_UNIT'),
		('UNIT_JNR_FUTURE_FIGHTER',		'KIND_UNIT'),
		('UNIT_JNR_FUTURE_BOMBER',		'KIND_UNIT');
--------------------------------------------------------------

-- Units
--------------------------------------------------------------
INSERT OR IGNORE INTO Units
		(UnitType,						Domain,			FormationClass,					PseudoYieldType,					PrereqDistrict,			PromotionClass,						PrereqTech,					Cost,	StrategicResource,		Combat,	RangedCombat,	Bombard,	BaseSightRange,	BaseMoves,	Range,	ZoneOfControl,	CanTargetAir,	AntiAirCombat,	WMDCapable,	Stackable,	PurchaseYield,	AdvisorType,		Name,									Description)
VALUES	('UNIT_JNR_FUTURE_MELEE',		'DOMAIN_LAND',	'FORMATION_CLASS_LAND_COMBAT',	NULL,								NULL,					'PROMOTION_CLASS_MELEE',			'TECH_CYBERNETICS',			810,	'RESOURCE_OIL',			95,		0,				0,			2,				3,			0,		1,				0,				0,				0,			0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_MELEE_NAME',		'LOC_UNIT_JNR_FUTURE_MELEE_DESCRIPTION'),
		('UNIT_JNR_FUTURE_ANTI_CAV',	'DOMAIN_LAND',	'FORMATION_CLASS_LAND_COMBAT',	NULL,								NULL,					'PROMOTION_CLASS_ANTI_CAVALRY',		'TECH_CYBERNETICS',			780,	NULL,					95,		0,				0,			2,				2,			0,		1,				0,				0,				0,			0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_ANTI_CAV_NAME',	'LOC_UNIT_JNR_FUTURE_ANTI_CAV_DESCRIPTION'),
		('UNIT_JNR_FUTURE_RECON',		'DOMAIN_LAND',	'FORMATION_CLASS_LAND_COMBAT',	NULL,								NULL,					'PROMOTION_CLASS_RECON',			'TECH_CYBERNETICS',			750,	NULL,					75,		85,				0,			2,				3,			2,		0,				0,				0,				0,			0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_RECON_NAME',		'LOC_UNIT_JNR_FUTURE_RECON_DESCRIPTION'),
		('UNIT_JNR_FUTURE_RANGED',		'DOMAIN_LAND',	'FORMATION_CLASS_LAND_COMBAT',	NULL,								NULL,					'PROMOTION_CLASS_RANGED',			'TECH_PREDICTIVE_SYSTEMS',	780,	NULL,					85,		100,			0,			2,				2,			2,		0,				0,				0,				0,			0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_RANGED_NAME',		'LOC_UNIT_JNR_FUTURE_RANGED_DESCRIPTION'),
		('UNIT_JNR_FUTURE_SIEGE',		'DOMAIN_LAND',	'FORMATION_CLASS_LAND_COMBAT',	NULL,								NULL,					'PROMOTION_CLASS_SIEGE',			'TECH_PREDICTIVE_SYSTEMS',	840,	'RESOURCE_OIL',			80,		0,				110,		3,				3,			3,		0,				0,				0,				0,			0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_SIEGE_NAME',		'LOC_UNIT_JNR_FUTURE_SIEGE_DESCRIPTION'),
		('UNIT_JNR_FUTURE_LIGHT_CAV',	'DOMAIN_LAND',	'FORMATION_CLASS_LAND_COMBAT',	NULL,								NULL,					'PROMOTION_CLASS_LIGHT_CAVALRY',	'TECH_SMART_MATERIALS',		840,	'RESOURCE_ALUMINUM',	100,	0,				0,			3,				4,			0,		1,				1,				0,				0,			0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_LIGHT_CAV_NAME',	'LOC_UNIT_JNR_FUTURE_LIGHT_CAV_DESCRIPTION'),
		('UNIT_JNR_FUTURE_HEAVY_CAV',	'DOMAIN_LAND',	'FORMATION_CLASS_LAND_COMBAT',	NULL,								NULL,					'PROMOTION_CLASS_HEAVY_CAVALRY',	'TECH_SMART_MATERIALS',		840,	'RESOURCE_URANIUM',		105,	0,				0,			2,				3,			0,		1,				0,				0,				0,			0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_HEAVY_CAV_NAME',	'LOC_UNIT_JNR_FUTURE_HEAVY_CAV_DESCRIPTION'),
		('UNIT_JNR_FUTURE_NAV_MELEE',	'DOMAIN_SEA',	'FORMATION_CLASS_NAVAL',		'PSEUDOYIELD_UNIT_NAVAL_COMBAT',	NULL,					'PROMOTION_CLASS_NAVAL_MELEE',		'TECH_SMART_MATERIALS',		780,	'RESOURCE_URANIUM',		100,	0,				0,			3,				4,			0,		1,				0,				110,			0,			0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_NAV_MELEE_NAME',	'LOC_UNIT_JNR_FUTURE_NAV_MELEE_DESCRIPTION'),
		('UNIT_JNR_FUTURE_NAV_RANGED',	'DOMAIN_SEA',	'FORMATION_CLASS_NAVAL',		'PSEUDOYIELD_UNIT_NAVAL_COMBAT',	NULL,					'PROMOTION_CLASS_NAVAL_RANGED',		'TECH_PREDICTIVE_SYSTEMS',	840,	'RESOURCE_URANIUM',		85,		100,			0,			3,				5,			3,		1,				1,				115,			0,			0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_NAV_RANGED_NAME',	'LOC_UNIT_JNR_FUTURE_NAV_RANGED_DESCRIPTION'),
		('UNIT_JNR_FUTURE_NAV_RAIDER',	'DOMAIN_SEA',	'FORMATION_CLASS_NAVAL',		'PSEUDOYIELD_UNIT_NAVAL_COMBAT',	NULL,					'PROMOTION_CLASS_NAVAL_RAIDER',		'TECH_ADVANCED_AI',			840,	'RESOURCE_URANIUM',		90,		95,				0,			2,				4,			2,		0,				0,				0,				1,			0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_NAV_RAIDER_NAME',	'LOC_UNIT_JNR_FUTURE_NAV_RAIDER_DESCRIPTION'),
		('UNIT_JNR_FUTURE_NAV_CARRIER',	'DOMAIN_SEA',	'FORMATION_CLASS_NAVAL',		'PSEUDOYIELD_UNIT_NAVAL_COMBAT',	NULL,					'PROMOTION_CLASS_NAVAL_CARRIER',	'TECH_OFFWORLD_MISSION',	780,	'RESOURCE_URANIUM',		80,		0,				0,			2,				4,			0,		1,				0,				0,				0,			0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_NAV_CARRIER_NAME',	'LOC_UNIT_JNR_FUTURE_NAV_CARRIER_DESCRIPTION'),
		('UNIT_JNR_FUTURE_FIGHTER',		'DOMAIN_AIR',	'FORMATION_CLASS_AIR',			'PSEUDOYIELD_UNIT_AIR_COMBAT',		'DISTRICT_AERODROME',	'PROMOTION_CLASS_AIR_FIGHTER',		'TECH_ADVANCED_AI',			840,	'RESOURCE_ALUMINUM',	125,	125,			0,			5,				14,			8,		0,				1,				0,				0,			1,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_FIGHTER_NAME',		'LOC_UNIT_JNR_FUTURE_FIGHTER_DESCRIPTION'),
		('UNIT_JNR_FUTURE_BOMBER',		'DOMAIN_AIR',	'FORMATION_CLASS_AIR',			'PSEUDOYIELD_UNIT_AIR_COMBAT',		'DISTRICT_AERODROME',	'PROMOTION_CLASS_AIR_BOMBER',		'TECH_ADVANCED_AI',			890,	'RESOURCE_ALUMINUM',	105,	0,				130,		5,				25,			25,		0,				1,				0,				1,			1,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_UNIT_JNR_FUTURE_BOMBER_NAME',		'LOC_UNIT_JNR_FUTURE_BOMBER_DESCRIPTION');

UPDATE Units SET AirSlots = 4 WHERE UnitType='UNIT_JNR_FUTURE_NAV_CARRIER';

UPDATE Units SET Maintenance = 2 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_MECHANIZED_INFANTRY')	WHERE UnitType='UNIT_JNR_FUTURE_MELEE';
UPDATE Units SET Maintenance = 2 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_MODERN_AT')				WHERE UnitType='UNIT_JNR_FUTURE_ANTI_CAV';
UPDATE Units SET Maintenance = 3 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_SPEC_OPS')				WHERE UnitType='UNIT_JNR_FUTURE_RECON';
UPDATE Units SET Maintenance = 4 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_MACHINE_GUN')			WHERE UnitType='UNIT_JNR_FUTURE_RANGED';
UPDATE Units SET Maintenance = 2 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_ROCKET_ARTILLERY')		WHERE UnitType='UNIT_JNR_FUTURE_SIEGE';
UPDATE Units SET Maintenance = 3 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_HELICOPTER')				WHERE UnitType='UNIT_JNR_FUTURE_LIGHT_CAV';
UPDATE Units SET Maintenance = 2 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_MODERN_ARMOR')			WHERE UnitType='UNIT_JNR_FUTURE_HEAVY_CAV';
UPDATE Units SET Maintenance = 3 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_DESTROYER')				WHERE UnitType='UNIT_JNR_FUTURE_NAV_MELEE';
UPDATE Units SET Maintenance = 2 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_MISSILE_CRUISER')		WHERE UnitType='UNIT_JNR_FUTURE_NAV_RANGED';
UPDATE Units SET Maintenance = 2 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_NUCLEAR_SUBMARINE')		WHERE UnitType='UNIT_JNR_FUTURE_NAV_RAIDER';
UPDATE Units SET Maintenance = 3 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_AIRCRAFT_CARRIER')		WHERE UnitType='UNIT_JNR_FUTURE_NAV_CARRIER';
UPDATE Units SET Maintenance = 2 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_JET_FIGHTER')			WHERE UnitType='UNIT_JNR_FUTURE_FIGHTER';
UPDATE Units SET Maintenance = 2 + (SELECT Maintenance FROM Units WHERE UnitType='UNIT_JET_BOMBER')				WHERE UnitType='UNIT_JNR_FUTURE_BOMBER';
--------------------------------------------------------------

-- Units_XP2
--------------------------------------------------------------
INSERT OR IGNORE INTO Units_XP2
		(UnitType,						ResourceCost,	ResourceMaintenanceAmount,	ResourceMaintenanceType)
VALUES	('UNIT_JNR_FUTURE_MELEE',		1,				1,							'RESOURCE_OIL'),
--		('UNIT_JNR_FUTURE_ANTI_CAV',	1,				1,							''),
--		('UNIT_JNR_FUTURE_RECON',		1,				1,							''),
--		('UNIT_JNR_FUTURE_RANGED',		1,				1,							''),
		('UNIT_JNR_FUTURE_SIEGE',		1,				1,							'RESOURCE_OIL'),
		('UNIT_JNR_FUTURE_LIGHT_CAV',	1,				1,							'RESOURCE_ALUMINUM'),
		('UNIT_JNR_FUTURE_HEAVY_CAV',	5,				0,							NULL),
		('UNIT_JNR_FUTURE_NAV_MELEE',	5,				0,							NULL),
		('UNIT_JNR_FUTURE_NAV_RANGED',	5,				0,							NULL),
		('UNIT_JNR_FUTURE_NAV_RAIDER',	5,				0,							NULL),
		('UNIT_JNR_FUTURE_NAV_CARRIER',	5,				0,							NULL),
		('UNIT_JNR_FUTURE_FIGHTER',		1,				1,							'RESOURCE_ALUMINUM'),
		('UNIT_JNR_FUTURE_BOMBER',		1,				1,							'RESOURCE_ALUMINUM');
--------------------------------------------------------------

-- UnitUpgrades
--------------------------------------------------------------
INSERT OR REPLACE INTO UnitUpgrades
		(Unit,							UpgradeUnit)
VALUES	('UNIT_MECHANIZED_INFANTRY',	'UNIT_JNR_FUTURE_MELEE'),
		('UNIT_MODERN_AT',				'UNIT_JNR_FUTURE_ANTI_CAV'),
		('UNIT_SPEC_OPS',				'UNIT_JNR_FUTURE_RECON'),
		('UNIT_MACHINE_GUN',			'UNIT_JNR_FUTURE_RANGED'),
		('UNIT_ROCKET_ARTILLERY',		'UNIT_JNR_FUTURE_SIEGE'),
		('UNIT_HELICOPTER',				'UNIT_JNR_FUTURE_LIGHT_CAV'),
		('UNIT_MODERN_ARMOR',			'UNIT_JNR_FUTURE_HEAVY_CAV'),
		('UNIT_DESTROYER',				'UNIT_JNR_FUTURE_NAV_MELEE'),
		('UNIT_MISSILE_CRUISER',		'UNIT_JNR_FUTURE_NAV_RANGED'),
		('UNIT_NUCLEAR_SUBMARINE',		'UNIT_JNR_FUTURE_NAV_RAIDER'),
		('UNIT_AIRCRAFT_CARRIER',		'UNIT_JNR_FUTURE_NAV_CARRIER'),
		('UNIT_JET_FIGHTER',			'UNIT_JNR_FUTURE_FIGHTER'),
		('UNIT_JET_BOMBER',				'UNIT_JNR_FUTURE_BOMBER');
--------------------------------------------------------------

-- TypeTags
--------------------------------------------------------------
INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_MELEE',		Tag
FROM	TypeTags
WHERE	Type='UNIT_MECHANIZED_INFANTRY';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_ANTI_CAV',		Tag
FROM	TypeTags
WHERE	Type='UNIT_MODERN_AT';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_RECON',		Tag
FROM	TypeTags
WHERE	Type='UNIT_SPEC_OPS';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_RANGED',		Tag
FROM	TypeTags
WHERE	Type='UNIT_MACHINE_GUN';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_SIEGE',		Tag
FROM	TypeTags
WHERE	Type='UNIT_ROCKET_ARTILLERY';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_LIGHT_CAV',	Tag
FROM	TypeTags
WHERE	Type='UNIT_HELICOPTER';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_HEAVY_CAV',	Tag
FROM	TypeTags
WHERE	Type='UNIT_MODERN_ARMOR';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_NAV_MELEE',	Tag
FROM	TypeTags
WHERE	Type='UNIT_DESTROYER';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_NAV_RANGED',	Tag
FROM	TypeTags
WHERE	Type='UNIT_MISSILE_CRUISER';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_NAV_RAIDER',	Tag
FROM	TypeTags
WHERE	Type='UNIT_NUCLEAR_SUBMARINE';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_NAV_CARRIER',	Tag
FROM	TypeTags
WHERE	Type='UNIT_AIRCRAFT_CARRIER';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_FIGHTER',		Tag
FROM	TypeTags
WHERE	Type='UNIT_JET_FIGHTER';

INSERT OR IGNORE INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_JNR_FUTURE_BOMBER',		Tag
FROM	TypeTags
WHERE	Type='UNIT_JET_BOMBER';
--------------------------------------------------------------

-- UnitAiInfos
--------------------------------------------------------------
INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_MELEE',		AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_MECHANIZED_INFANTRY';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_ANTI_CAV',		AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_MODERN_AT';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_RECON',		AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_SPEC_OPS';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_RANGED',		AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_MACHINE_GUN';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_SIEGE',		AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_ROCKET_ARTILLERY';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_LIGHT_CAV',	AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_HELICOPTER';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_HEAVY_CAV',	AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_MODERN_ARMOR';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_NAV_MELEE',	AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_DESTROYER';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_NAV_RANGED',	AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_MISSILE_CRUISER';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_NAV_RAIDER',	AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_NUCLEAR_SUBMARINE';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_NAV_CARRIER',	AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_AIRCRAFT_CARRIER';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_FIGHTER',		AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_JET_FIGHTER';

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,						AiType)
SELECT	'UNIT_JNR_FUTURE_BOMBER',		AiType
FROM	UnitAiInfos
WHERE	UnitType='UNIT_JET_BOMBER';
--------------------------------------------------------------