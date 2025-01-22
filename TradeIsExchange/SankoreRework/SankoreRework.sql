

DELETE FROM BuildingModifiers
WHERE ModifierId LIKE '%SANKORE_TRADE%';

DELETE FROM Building_YieldChanges
WHERE BuildingType = 'BUILDING_UNIVERSITY_SANKORE';

-- Trade Routes sent from this city provide +1 Science and +2 Faith for every follower of your founded or majority Religion at the city of Origin. 
-- +2 Science and +1 Faith for every  Trade Route to this city. Other civilization's Trade Routes provide +2 Science for them.
-- Trade Routes from your Civilization exert +8 Religious Pressure to the Destination city, and receive +4 Religious Pressure from it.
--
-- +2 Great Scientist Points per turn.
-- +2 Science
-- +2 Faith
--
-- Must be built on a Desert or Desert Hills tile next to a Campus with a University

INSERT INTO Building_YieldChanges
		(BuildingType,						YieldType,			YieldChange)
VALUES	('BUILDING_UNIVERSITY_SANKORE',		'YIELD_SCIENCE',	2),
		('BUILDING_UNIVERSITY_SANKORE',		'YIELD_FAITH',		2);
	
-- Just a simple explanation for anyone checking this for reference, we are using plot properties with
-- powers of two, this way we can reach up to 127 followers of the city

INSERT INTO Types
		(Type,													Kind)
VALUES	('MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',		'KIND_MODIFIER');

INSERT INTO DynamicModifiers
		(ModifierType,											CollectionType,						EffectType)
VALUES	('MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',		'COLLECTION_CITY_DISTRICTS',		'EFFECT_ATTACH_MODIFIER');


INSERT INTO BuildingModifiers
		(BuildingType,						ModifierId)
VALUES	('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_1_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_2_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_4_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_8_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_16_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_32_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_64_ATTACH'),
		--
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_1_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_2_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_4_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_8_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_16_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_32_ATTACH'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_64_ATTACH'),
		--
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_TRADE_TO_THIS_CITY_SCIENCE'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_TRADE_TO_THIS_CITY_FAITH'),
		--
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_TRADE_TO_THIS_CITY_SCIENCE_OTHER_PLAYER'),
		--
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_DESTINATION_PRESSURE'),
		('BUILDING_UNIVERSITY_SANKORE',		'LEU_SANKORE_ORIGIN_PRESSURE');


-- For the record, the reason I'm attaching the modifier to the city center is that currently the Lua adds the properties to the city center's plot 
-- and I really didnt want to change that since that property could be useful for other stuff.
INSERT INTO Modifiers
		(ModifierId,												ModifierType,															SubjectRequirementSetId)
VALUES	('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_1_ATTACH',		'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_2_ATTACH',		'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_4_ATTACH',		'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_8_ATTACH',		'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_16_ATTACH',		'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_32_ATTACH',		'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_64_ATTACH',		'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		--
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_1_ATTACH',			'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_2_ATTACH',			'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_4_ATTACH',			'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_8_ATTACH',			'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_16_ATTACH',		'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_32_ATTACH',		'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_64_ATTACH',		'MODIFIER_LEU_SNK_CITY_DISTRICTS_ATTACH_MODIFIER',						'LEU_SANKORE_IS_CITY_CENTER'),
		--
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_1',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_1'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_2',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_2'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_4',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_4'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_8',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_8'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_16',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_16'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_32',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_32'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_64',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_64'),
		--
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_1',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_1'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_2',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_2'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_4',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_4'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_8',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_8'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_16',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_16'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_32',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_32'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_64',				'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',		'LEU_SANKORE_HAS_FOLLOWERS_64'),
		--
		('LEU_SANKORE_TRADE_TO_THIS_CITY_SCIENCE',					'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FROM_OTHERS',			null),
		('LEU_SANKORE_TRADE_TO_THIS_CITY_FAITH',					'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_FROM_OTHERS',			null),
		--
		('LEU_SANKORE_TRADE_TO_THIS_CITY_SCIENCE_OTHER_PLAYER',		'MODIFIER_SINGLE_CITY_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS',				null),
		--
		('LEU_SANKORE_DESTINATION_PRESSURE',						'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_RELIGIOUS_PRESSURE',				null),
		('LEU_SANKORE_ORIGIN_PRESSURE',								'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_RELIGIOUS_PRESSURE',				null);
		-- Amount
		-- YieldType													

-- As for the Modifier Arguments, make sure they are multiplied by the number since that's how it all gets summed up.
INSERT INTO ModifierArguments
		(ModifierId,												Name,				Value)
VALUES	('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_1_ATTACH',		'ModifierId',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_1'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_1_ATTACH',			'ModifierId',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_1'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_2_ATTACH',		'ModifierId',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_2'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_2_ATTACH',			'ModifierId',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_2'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_4_ATTACH',		'ModifierId',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_4'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_4_ATTACH',			'ModifierId',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_4'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_8_ATTACH',		'ModifierId',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_8'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_8_ATTACH',			'ModifierId',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_8'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_16_ATTACH',		'ModifierId',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_16'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_16_ATTACH',		'ModifierId',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_16'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_32_ATTACH',		'ModifierId',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_32'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_32_ATTACH',		'ModifierId',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_32'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_64_ATTACH',		'ModifierId',		'LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_64'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_64_ATTACH',		'ModifierId',		'LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_64'),
		--
		--
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_1',				'YieldType',		'YIELD_SCIENCE'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_1',				'Amount',			1),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_1',				'YieldType',		'YIELD_FAITH'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_1',				'Amount',			1),
		--
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_2',				'YieldType',		'YIELD_SCIENCE'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_2',				'Amount',			2),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_2',				'YieldType',		'YIELD_FAITH'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_2',				'Amount',			2),
		--
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_4',				'YieldType',		'YIELD_SCIENCE'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_4',				'Amount',			4),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_4',				'YieldType',		'YIELD_FAITH'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_4',				'Amount',			4),
		--
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_8',				'YieldType',		'YIELD_SCIENCE'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_8',				'Amount',			8),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_8',				'YieldType',		'YIELD_FAITH'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_8',				'Amount',			8),
		--
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_16',				'YieldType',		'YIELD_SCIENCE'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_16',				'Amount',			16),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_16',				'YieldType',		'YIELD_FAITH'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_16',				'Amount',			16),
		--
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_32',				'YieldType',		'YIELD_SCIENCE'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_32',				'Amount',			32),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_32',				'YieldType',		'YIELD_FAITH'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_32',				'Amount',			32),
		--
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_64',				'YieldType',		'YIELD_SCIENCE'),
		('LEU_SANKORE_SCIENCE_TRADE_FROM_FOLLOWERS_64',				'Amount',			64),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_64',				'YieldType',		'YIELD_FAITH'),
		('LEU_SANKORE_FAITH_TRADE_FROM_FOLLOWERS_64',				'Amount',			64),
		--
		--
		--
		('LEU_SANKORE_TRADE_TO_THIS_CITY_SCIENCE',					'YieldType',		'YIELD_SCIENCE'),
		('LEU_SANKORE_TRADE_TO_THIS_CITY_SCIENCE',					'Amount',			2),
		--
		('LEU_SANKORE_TRADE_TO_THIS_CITY_FAITH',					'YieldType',		'YIELD_FAITH'),
		('LEU_SANKORE_TRADE_TO_THIS_CITY_FAITH',					'Amount',			1),
		--
		('LEU_SANKORE_TRADE_TO_THIS_CITY_SCIENCE_OTHER_PLAYER',		'YieldType',		'YIELD_SCIENCE'),
		('LEU_SANKORE_TRADE_TO_THIS_CITY_SCIENCE_OTHER_PLAYER',		'Amount',			2),
		--
		('LEU_SANKORE_DESTINATION_PRESSURE',						'Amount',			700),
		('LEU_SANKORE_DESTINATION_PRESSURE',						'Origin',			0),
		('LEU_SANKORE_DESTINATION_PRESSURE',						'Destination',		1),
		--
		('LEU_SANKORE_ORIGIN_PRESSURE',								'Amount',			300),
		('LEU_SANKORE_ORIGIN_PRESSURE',								'Origin',			1),
		('LEU_SANKORE_ORIGIN_PRESSURE',								'Destination',		0);
		--

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('LEU_SANKORE_HAS_FOLLOWERS_1',			'REQUIREMENTSET_TEST_ALL'),
		('LEU_SANKORE_HAS_FOLLOWERS_2',			'REQUIREMENTSET_TEST_ALL'),
		('LEU_SANKORE_HAS_FOLLOWERS_4',			'REQUIREMENTSET_TEST_ALL'),
		('LEU_SANKORE_HAS_FOLLOWERS_8',			'REQUIREMENTSET_TEST_ALL'),
		('LEU_SANKORE_HAS_FOLLOWERS_16',		'REQUIREMENTSET_TEST_ALL'),
		('LEU_SANKORE_HAS_FOLLOWERS_32',		'REQUIREMENTSET_TEST_ALL'),
		('LEU_SANKORE_HAS_FOLLOWERS_64',		'REQUIREMENTSET_TEST_ALL'),
		--
		('LEU_SANKORE_IS_CITY_CENTER',			'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements	
		(RequirementSetId,							RequirementId)
VALUES	('LEU_SANKORE_HAS_FOLLOWERS_1',				'REQUIRES_LEU_SANKORE_PROPERTY_1'),
		('LEU_SANKORE_HAS_FOLLOWERS_2',				'REQUIRES_LEU_SANKORE_PROPERTY_2'),
		('LEU_SANKORE_HAS_FOLLOWERS_4',				'REQUIRES_LEU_SANKORE_PROPERTY_4'),
		('LEU_SANKORE_HAS_FOLLOWERS_8',				'REQUIRES_LEU_SANKORE_PROPERTY_8'),
		('LEU_SANKORE_HAS_FOLLOWERS_16',			'REQUIRES_LEU_SANKORE_PROPERTY_16'),
		('LEU_SANKORE_HAS_FOLLOWERS_32',			'REQUIRES_LEU_SANKORE_PROPERTY_32'),
		('LEU_SANKORE_HAS_FOLLOWERS_64',			'REQUIRES_LEU_SANKORE_PROPERTY_64'),
		--
		('LEU_SANKORE_IS_CITY_CENTER',				'REQUIRES_DISTRICT_IS_CITY_CENTER');

-- Each of these is gonna check the property at the plot. (I'm assuming the plot will be the city since that's the Owner but we shall see)
INSERT INTO Requirements
		(RequirementId,								RequirementType)
VALUES	('REQUIRES_LEU_SANKORE_PROPERTY_1',			'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_SANKORE_PROPERTY_2',			'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_SANKORE_PROPERTY_4',			'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_SANKORE_PROPERTY_8',			'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_SANKORE_PROPERTY_16',		'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_SANKORE_PROPERTY_32',		'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_LEU_SANKORE_PROPERTY_64',		'REQUIREMENT_PLOT_PROPERTY_MATCHES');


-- Unlike Modifier Arguments, the property checks for 1, no need to multiply here, but the properties do need to follow the same numbers
INSERT INTO RequirementArguments
		(RequirementId,								Name,				Value)
VALUES	('REQUIRES_LEU_SANKORE_PROPERTY_1',			'PropertyName',		'LEU_NUM_FOLLOWERS_MAJORITY_RELIGION_1'),
		('REQUIRES_LEU_SANKORE_PROPERTY_1',			'PropertyMinimum',			1),
		('REQUIRES_LEU_SANKORE_PROPERTY_2',			'PropertyName',		'LEU_NUM_FOLLOWERS_MAJORITY_RELIGION_2'),
		('REQUIRES_LEU_SANKORE_PROPERTY_2',			'PropertyMinimum',			1),
		('REQUIRES_LEU_SANKORE_PROPERTY_4',			'PropertyName',		'LEU_NUM_FOLLOWERS_MAJORITY_RELIGION_4'),
		('REQUIRES_LEU_SANKORE_PROPERTY_4',			'PropertyMinimum',			1),
		('REQUIRES_LEU_SANKORE_PROPERTY_8',			'PropertyName',		'LEU_NUM_FOLLOWERS_MAJORITY_RELIGION_8'),
		('REQUIRES_LEU_SANKORE_PROPERTY_8',			'PropertyMinimum',			1),
		('REQUIRES_LEU_SANKORE_PROPERTY_16',		'PropertyName',		'LEU_NUM_FOLLOWERS_MAJORITY_RELIGION_16'),
		('REQUIRES_LEU_SANKORE_PROPERTY_16',		'PropertyMinimum',			1),
		('REQUIRES_LEU_SANKORE_PROPERTY_32',		'PropertyName',		'LEU_NUM_FOLLOWERS_MAJORITY_RELIGION_32'),
		('REQUIRES_LEU_SANKORE_PROPERTY_32',		'PropertyMinimum',			1),
		('REQUIRES_LEU_SANKORE_PROPERTY_64',		'PropertyName',		'LEU_NUM_FOLLOWERS_MAJORITY_RELIGION_64'),
		('REQUIRES_LEU_SANKORE_PROPERTY_64',		'PropertyMinimum',			1);
	
-- And the rest is making sure the lua file applies the property at the city plot.	