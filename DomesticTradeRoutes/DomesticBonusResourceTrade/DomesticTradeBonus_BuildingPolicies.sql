INSERT INTO Types
		(Type,							Kind)
VALUES	('POLICY_LEU_HERBAL_MEDICINE',				'KIND_POLICY'),
--		Type:  SLOT_ECONOMIC
--		Civic: CIVIC_CRAFTSMANSHIP
--		+1 Science from Granaries.
		('POLICY_LEU_RITUAL_LIBATION',				'KIND_POLICY'),
--		Type:  SLOT_ECONOMIC
--		Civic: CIVIC_CRAFTSMANSHIP
--		+2 Faith from Breweries.
		('POLICY_LEU_FOOD_BANKS',					'KIND_POLICY'),
--		Type:  SLOT_DIPLOMATIC
--		Civic: CIVIC_RAPID_DEPLOYMENT
--		+1 Favor per turn from Granaries.
		('POLICY_LEU_BEER_GARDENS',					'KIND_POLICY');
--		Type:  SLOT_ECONOMIC
--		Civic: CIVIC_CULTURAL_HERITAGE
--		+8 Tourism from Breweries.



INSERT INTO Policies
		(PolicyType,							Name,												Description,									PrereqCivic,					GovernmentSlotType)
VALUES	('POLICY_LEU_HERBAL_MEDICINE',			'LOC_POLICY_LEU_HERBAL_MEDICINE_NAME',				'LOC_POLICY_LEU_HERBAL_MEDICINE_DESCRIPTION',			'CIVIC_CRAFTSMANSHIP',			'SLOT_ECONOMIC'),
		('POLICY_LEU_RITUAL_LIBATION',			'LOC_POLICY_LEU_RITUAL_LIBATION_NAME',				'LOC_POLICY_LEU_RITUAL_LIBATION_DESCRIPTION',			'CIVIC_CRAFTSMANSHIP',			'SLOT_ECONOMIC'),
		('POLICY_LEU_FOOD_BANKS',				'LOC_POLICY_LEU_FOOD_BANKS_NAME',					'LOC_POLICY_LEU_FOOD_BANKS_DESCRIPTION',				'CIVIC_RAPID_DEPLOYMENT',		'SLOT_DIPLOMATIC'),
		('POLICY_LEU_BEER_GARDENS',				'LOC_POLICY_LEU_BEER_GARDENS_NAME',					'LOC_POLICY_LEU_BEER_GARDENS_DESCRIPTION',				'CIVIC_CULTURAL_HERITAGE',		'SLOT_ECONOMIC');

INSERT INTO PolicyModifiers
		(PolicyType,						ModifierId)
VALUES	('POLICY_LEU_HERBAL_MEDICINE',		'LEU_GRANARY_SCIENCE'),
		('POLICY_LEU_RITUAL_LIBATION',		'LEU_BREWERY_FAITH'),
		--MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE
		-- YieldType
		-- Amount
		-- BuildingType
		('POLICY_LEU_FOOD_BANKS',			'LEU_GRANARY_NO_FOOD'),
		('POLICY_LEU_FOOD_BANKS',			'LEU_GRANARY_FAVOR'),
		--MODIFIER_PLAYER_ADJUST_BUILDING_FAVOR
		-- BuildingType
		-- Favor
		('POLICY_LEU_BEER_GARDENS',			'LEU_BREWERY_NO_GOLD'),
		('POLICY_LEU_BEER_GARDENS',			'LEU_BREWERY_TOURISM');
		--MODIFIER_PLAYER_DISTRICTS_ADJUST_TOURISM_CHANGE
		-- Amount
		-- DISTRICT_IS_CITY_CENTER_ANCIENT

INSERT INTO Modifiers
		(ModifierId,					ModifierType,												SubjectRequirementSetId)
VALUES	('LEU_GRANARY_SCIENCE',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',		null),
		('LEU_BREWERY_FAITH',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',		null),
		('LEU_GRANARY_NO_FOOD',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',		null),
		('LEU_BREWERY_NO_GOLD',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',		null),
		('LEU_GRANARY_FAVOR',			'MODIFIER_PLAYER_ADJUST_BUILDING_FAVOR',					null),
		('LEU_BREWERY_TOURISM',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_TOURISM_CHANGE',			'LEU_DISTRICT_IS_CITY_CENTER_BREWERY');


INSERT INTO ModifierArguments
		(ModifierId,							Name,						Value)
VALUES	('LEU_GRANARY_SCIENCE',					'BuildingType',				'BUILDING_GRANARY'),
		('LEU_GRANARY_SCIENCE',					'YieldType',				'YIELD_SCIENCE'),
		('LEU_GRANARY_SCIENCE',					'Amount',					1),
		--
		('LEU_BREWERY_FAITH',					'BuildingType',				'BUILDING_LEU_BREWERY'),
		('LEU_BREWERY_FAITH',					'YieldType',				'YIELD_FAITH'),
		('LEU_BREWERY_FAITH',					'Amount',					2),
		--
		('LEU_GRANARY_NO_FOOD',					'BuildingType',				'BUILDING_GRANARY'),
		('LEU_GRANARY_NO_FOOD',					'YieldType',				'YIELD_FOOD'),
		('LEU_GRANARY_NO_FOOD',					'Amount',					-1),
		--
		('LEU_BREWERY_NO_GOLD',					'BuildingType',				'BUILDING_LEU_BREWERY'),
		('LEU_BREWERY_NO_GOLD',					'YieldType',				'YIELD_GOLD'),
		('LEU_BREWERY_NO_GOLD',					'Amount',					-1),
		--
		('LEU_GRANARY_FAVOR',					'BuildingType',				'BUILDING_LEU_BREWERY'),
		('LEU_GRANARY_FAVOR',					'Favor',					1),
		--
		('LEU_BREWERY_TOURISM',					'Amount',					8);

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('LEU_DISTRICT_IS_CITY_CENTER_BREWERY',		'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('LEU_DISTRICT_IS_CITY_CENTER_BREWERY',		'REQUIRES_DISTRICT_IS_CITY_CENTER'),
		('LEU_DISTRICT_IS_CITY_CENTER_BREWERY',		'REQUIRES_LEU_TR_HAS_BREWERY');
		


		