
DELETE FROM BuildingModifiers
WHERE ModifierId = 'JEBELBARKAL_GRANT_FOUR_IRON_PER_TURN';


DELETE FROM Building_YieldChanges
WHERE BuildingType = 'BUILDING_JEBEL_BARKAL';

UPDATE Buildings
SET RegionalRange = 0
WHERE BuildingType = 'BUILDING_JEBEL_BARKAL';

-- +2 Faith to Domestic Trade Routes sent to this city for every improved Strategic or Bonus Resource in this city. 
-- +2 Gold to Domestic Trade Routes sent to this city for every Mine or Quarry over a Resource in this city. 
-- +1 Gold to all your International Trade Routes for every Domestic :TradeRoute: Trade Route sent to this city. 
-- 
-- +1 Iron per turn from Bonus Resources improved by Mines or Quarries.
--
-- May be built in Desert Hills or Plains Hills.
--
-- +2 Faith
-- +1 Great Merchant Points
-- 

--INSERT INTO Building_ValidTerrains
--		(BuildingType,				TerrainType)
--VALUES	('BUILDING_JEBEL_BARKAL',	'TERRAIN_PLAINS_HILLS');

INSERT INTO Building_GreatPersonPoints
		(BuildingType,				GreatPersonClassType,				PointsPerTurn)
VALUES	('BUILDING_JEBEL_BARKAL',	'GREAT_PERSON_CLASS_MERCHANT',		1);

INSERT INTO Building_YieldChanges
		(BuildingType,				YieldType,		YieldChange)
VALUES	('BUILDING_JEBEL_BARKAL',	'YIELD_FAITH',	2);

-- ImprovementModifiers
INSERT INTO ImprovementModifiers
		(ImprovementType,				ModifierID)
VALUES	('IMPROVEMENT_FARM',			'LEU_JEB_STRATEGIC_BONUS_FAITH_TRADE'),
		('IMPROVEMENT_PLANTATION',		'LEU_JEB_STRATEGIC_BONUS_FAITH_TRADE'),
		('IMPROVEMENT_PASTURE',			'LEU_JEB_STRATEGIC_BONUS_FAITH_TRADE'),
		('IMPROVEMENT_CAMP',			'LEU_JEB_STRATEGIC_BONUS_FAITH_TRADE'),
		('IMPROVEMENT_FISHING_BOATS',	'LEU_JEB_STRATEGIC_BONUS_FAITH_TRADE'),
		('IMPROVEMENT_MINE',			'LEU_JEB_STRATEGIC_BONUS_FAITH_TRADE'),
		('IMPROVEMENT_QUARRY',			'LEU_JEB_STRATEGIC_BONUS_FAITH_TRADE'),
		--
		('IMPROVEMENT_MINE',			'LEU_JEB_RESOURCE_GOLD_TRADE'),
		('IMPROVEMENT_QUARRY',			'LEU_JEB_RESOURCE_GOLD_TRADE'),
		--
		('IMPROVEMENT_MINE',			'LEU_JEB_IRON_BONUS'),
		('IMPROVEMENT_QUARRY',			'LEU_JEB_IRON_BONUS');
		
INSERT INTO Modifiers
		(ModifierId,								ModifierType,													OwnerRequirementSetId,						SubjectRequirementSetId)
VALUES	('LEU_JEB_STRATEGIC_BONUS_FAITH_TRADE',		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		'LEU_JEB_HAS_BONUS_OR_STRATEGIC',			'LEU_HAS_JEBEL'),
		('LEU_JEB_RESOURCE_GOLD_TRADE',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',		'LEU_JEB_HAS_ANY_RESOURCE',					'LEU_HAS_JEBEL'),
		('LEU_JEB_IRON_BONUS',						'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			'LEU_JEB_HAS_BONUS',						'LEU_HAS_JEBEL_ANYWHERE');

INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value)
VALUES	('LEU_JEB_STRATEGIC_BONUS_FAITH_TRADE',		'YieldType',		'YIELD_FAITH'),
		('LEU_JEB_STRATEGIC_BONUS_FAITH_TRADE',		'Amount',			2),
		('LEU_JEB_STRATEGIC_BONUS_FAITH_TRADE',		'Domestic',			1),
		--
		('LEU_JEB_RESOURCE_GOLD_TRADE',				'YieldType',		'YIELD_GOLD'),
		('LEU_JEB_RESOURCE_GOLD_TRADE',				'Amount',			2),
		('LEU_JEB_RESOURCE_GOLD_TRADE',				'Domestic',			1),
		--
		('LEU_JEB_IRON_BONUS',						'ResourceType',		'RESOURCE_IRON'),
		('LEU_JEB_IRON_BONUS',						'Amount',			1);
		
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('LEU_JEB_HAS_BONUS',						'REQUIREMENTSET_TEST_ALL'),
		('LEU_JEB_HAS_BONUS_OR_STRATEGIC',			'REQUIREMENTSET_TEST_ANY'),
		('LEU_JEB_HAS_ANY_RESOURCE',				'REQUIREMENTSET_TEST_ALL'),
		('LEU_HAS_JEBEL',							'REQUIREMENTSET_TEST_ALL'),
		('LEU_HAS_JEBEL_ANYWHERE',					'REQUIREMENTSET_TEST_ALL');


INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('LEU_JEB_HAS_BONUS',					'REQUIRES_PLOT_HAS_BONUS'),
		('LEU_JEB_HAS_BONUS_OR_STRATEGIC',		'REQUIRES_PLOT_HAS_BONUS'),
		('LEU_JEB_HAS_BONUS_OR_STRATEGIC',		'REQUIRES_PLOT_HAS_STRATEGIC'),
		('LEU_JEB_HAS_ANY_RESOURCE',			'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'),
		--
		('LEU_HAS_JEBEL',						'REQUIRES_LEU_HAS_JEBEL_BARKAL'),
		('LEU_HAS_JEBEL_ANYWHERE',				'REQUIRES_LEU_HAS_JEBEL_BARKAL_ANYWHERE');

INSERT INTO Requirements
		(RequirementId,										RequirementType,									Inverse)
VALUES	('REQUIRES_LEU_HAS_JEBEL_BARKAL',					'REQUIREMENT_CITY_HAS_BUILDING',					0),
		('REQUIRES_LEU_JEB_HAS_NO_LUXURY',					'REQUIREMENT_PLOT_RESOURCE_CLASS_TYPE_MATCHES',		1),
		('REQUIRES_LEU_HAS_JEBEL_BARKAL_ANYWHERE',			'REQUIREMENT_PLAYER_HAS_BUILDING',					0);
		
INSERT INTO RequirementArguments
		(RequirementId,									Name,						Value)
VALUES	('REQUIRES_LEU_HAS_JEBEL_BARKAL',				'BuildingType',				'BUILDING_JEBEL_BARKAL'),
		('REQUIRES_LEU_JEB_HAS_NO_LUXURY',				'ResourceClassType',		'RESOURCECLASS_LUXURY'),
		('REQUIRES_LEU_HAS_JEBEL_BARKAL_ANYWHERE',		'BuildingType',				'BUILDING_JEBEL_BARKAL');

--==================================================================================================================================		
-- Now for Binary Magicks
--==================================================================================================================================
INSERT INTO Types
		(Type,													Kind)
VALUES	('MODIFIER_LEU_JEB_CITY_DISTRICTS_ATTACH_MODIFIER',		'KIND_MODIFIER');

INSERT INTO DynamicModifiers
		(ModifierType,											CollectionType,						EffectType)
VALUES	('MODIFIER_LEU_JEB_CITY_DISTRICTS_ATTACH_MODIFIER',		'COLLECTION_CITY_DISTRICTS',		'EFFECT_ATTACH_MODIFIER');


INSERT INTO BuildingModifiers
		(BuildingType,						ModifierId)
VALUES	('BUILDING_JEBEL_BARKAL',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_1_ATTACH'),
		('BUILDING_JEBEL_BARKAL',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_2_ATTACH'),
		('BUILDING_JEBEL_BARKAL',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_4_ATTACH'),
		('BUILDING_JEBEL_BARKAL',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_8_ATTACH'),
		('BUILDING_JEBEL_BARKAL',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_16_ATTACH'),
		('BUILDING_JEBEL_BARKAL',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_32_ATTACH'),
		('BUILDING_JEBEL_BARKAL',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_64_ATTACH');


-- For the record, the reason I'm attaching the modifier to the city center is that currently the Lua adds the properties to the city center's plot 
-- and I really didnt want to change that since that property could be useful for other stuff.
INSERT INTO Modifiers
		(ModifierId,										ModifierType,															SubjectRequirementSetId)
VALUES	('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_1_ATTACH',		'MODIFIER_LEU_JEB_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_JEBEL_BARKAL_IS_CITY_CENTER'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_2_ATTACH',		'MODIFIER_LEU_JEB_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_JEBEL_BARKAL_IS_CITY_CENTER'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_4_ATTACH',		'MODIFIER_LEU_JEB_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_JEBEL_BARKAL_IS_CITY_CENTER'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_8_ATTACH',		'MODIFIER_LEU_JEB_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_JEBEL_BARKAL_IS_CITY_CENTER'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_16_ATTACH',		'MODIFIER_LEU_JEB_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_JEBEL_BARKAL_IS_CITY_CENTER'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_32_ATTACH',		'MODIFIER_LEU_JEB_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_JEBEL_BARKAL_IS_CITY_CENTER'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_64_ATTACH',		'MODIFIER_LEU_JEB_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_JEBEL_BARKAL_IS_CITY_CENTER'),
		--
		--
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_1',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			'LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_1'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_2',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			'LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_2'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_4',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			'LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_4'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_8',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			'LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_8'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_16',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			'LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_16'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_32',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			'LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_32'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_64',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',			'LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_64');
		-- Amount
		-- YieldType													

-- As for the Modifier Arguments, make sure they are multiplied by the number since that's how it all gets summed up.
INSERT INTO ModifierArguments
		(ModifierId,											Name,				Value)
VALUES	('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_1_ATTACH',			'ModifierId',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_1'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_2_ATTACH',			'ModifierId',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_2'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_4_ATTACH',			'ModifierId',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_4'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_8_ATTACH',			'ModifierId',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_8'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_16_ATTACH',			'ModifierId',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_16'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_32_ATTACH',			'ModifierId',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_32'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_64_ATTACH',			'ModifierId',		'LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_64'),
		--
		--
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_1',				'YieldType',		'YIELD_GOLD'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_1',				'Amount',			1),
		--
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_2',				'YieldType',		'YIELD_GOLD'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_2',				'Amount',			2),
		--
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_4',				'YieldType',		'YIELD_GOLD'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_4',				'Amount',			4),
		--
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_8',				'YieldType',		'YIELD_GOLD'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_8',				'Amount',			8),
		--
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_16',				'YieldType',		'YIELD_GOLD'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_16',				'Amount',			16),
		--
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_32',				'YieldType',		'YIELD_GOLD'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_32',				'Amount',			32),
		--
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_64',				'YieldType',		'YIELD_GOLD'),
		('LEU_JEB_GOLD_TRADE_FROM_DOMESTIC_64',				'Amount',			64);
		--

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_1',			'REQUIREMENTSET_TEST_ALL'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_2',			'REQUIREMENTSET_TEST_ALL'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_4',			'REQUIREMENTSET_TEST_ALL'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_8',			'REQUIREMENTSET_TEST_ALL'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_16',			'REQUIREMENTSET_TEST_ALL'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_32',			'REQUIREMENTSET_TEST_ALL'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_64',			'REQUIREMENTSET_TEST_ALL'),
		--
		('LEU_JEBEL_BARKAL_IS_CITY_CENTER',					'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements	
		(RequirementSetId,									RequirementId)
VALUES	('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_1',			'REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_1'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_2',			'REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_2'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_4',			'REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_4'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_8',			'REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_8'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_16',			'REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_16'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_32',			'REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_32'),
		('LEU_JEBEL_BARKAL_HAS_DOMESTIC_ROUTES_64',			'REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_64'),
		--
		('LEU_JEBEL_BARKAL_IS_CITY_CENTER',				'REQUIRES_DISTRICT_IS_CITY_CENTER');

-- Each of these is gonna check the property at the plot. (I'm assuming the plot will be the city since that's the Owner but we shall see)
INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_1',		'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_2',		'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_4',		'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_8',		'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_16',		'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_32',		'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_64',		'REQUIREMENT_PLOT_PROPERTY_MATCHES');


-- Unlike Modifier Arguments, the property checks for 1, no need to multiply here, but the properties do need to follow the same numbers
INSERT INTO RequirementArguments
		(RequirementId,										Name,				Value)
VALUES	('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_1',			'PropertyName',				'LEU_NUM_DOMESTIC_TRADE_ROUTES_TO_THIS_CITY_1'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_1',			'PropertyMinimum',			1),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_2',			'PropertyName',				'LEU_NUM_DOMESTIC_TRADE_ROUTES_TO_THIS_CITY_2'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_2',			'PropertyMinimum',			1),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_4',			'PropertyName',				'LEU_NUM_DOMESTIC_TRADE_ROUTES_TO_THIS_CITY_4'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_4',			'PropertyMinimum',			1),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_8',			'PropertyName',				'LEU_NUM_DOMESTIC_TRADE_ROUTES_TO_THIS_CITY_8'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_8',			'PropertyMinimum',			1),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_16',			'PropertyName',				'LEU_NUM_DOMESTIC_TRADE_ROUTES_TO_THIS_CITY_16'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_16',			'PropertyMinimum',			1),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_32',			'PropertyName',				'LEU_NUM_DOMESTIC_TRADE_ROUTES_TO_THIS_CITY_32'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_32',			'PropertyMinimum',			1),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_64',			'PropertyName',				'LEU_NUM_DOMESTIC_TRADE_ROUTES_TO_THIS_CITY_64'),
		('REQUIRES_LEU_JEBEL_BARKAL_PROPERTY_64',			'PropertyMinimum',			1);
	
-- And the rest is making sure the lua file applies the property at the city plot.	
