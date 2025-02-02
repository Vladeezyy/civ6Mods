-- Savannah_Suk_Identities
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,								Kind)
VALUES	('REGION_SUK_JNR_SAVANNAH',			'KIND_SUK_REGION'),
		('IDENTITY_SUK_JNR_SILVOPASTURE',	'KIND_SUK_URBANIDENTITY');
--------------------------------------------------------------

-- Suk_Regions
--------------------------------------------------------------
INSERT OR IGNORE INTO Suk_Regions
		(RegionType,				Name)
VALUES	('REGION_SUK_JNR_SAVANNAH',	NULL);
--------------------------------------------------------------

-- Suk_UrbanIdentities
--------------------------------------------------------------
INSERT OR IGNORE INTO Suk_UrbanIdentities
		(IdentityType,						RegionOnly)
VALUES	('IDENTITY_SUK_JNR_SILVOPASTURE',	1);
--------------------------------------------------------------

-- Suk_UrbanIdentity_PlotProperties
--------------------------------------------------------------
INSERT OR IGNORE INTO Suk_UrbanIdentity_PlotProperties
		(IdentityType,						PropertyName,						PropertyValue,	CityOnly)
VALUES	('IDENTITY_SUK_JNR_SILVOPASTURE',	'IDENTITY_SUK_JNR_SILVOPASTURE',	1,				0);
--------------------------------------------------------------

-- Suk_UrbanIdentity_Regions
--------------------------------------------------------------
INSERT OR IGNORE INTO Suk_UrbanIdentity_Regions
		(RegionType,				IdentityType)
VALUES	('REGION_SUK_JNR_SAVANNAH',	'IDENTITY_SUK_FOG_DESERTS'),
		('REGION_SUK_JNR_SAVANNAH',	'IDENTITY_SUK_UNDERGROUND_AQUIFERS'),
		('REGION_SUK_JNR_SAVANNAH',	'IDENTITY_SUK_IDYLLIC_SCENERY'),
		('REGION_SUK_JNR_SAVANNAH',	'IDENTITY_SUK_MASSIVE_TREES'),
		('REGION_SUK_JNR_SAVANNAH',	'IDENTITY_SUK_OMINOUS_FOREST'),
		
		('REGION_SUK_JNR_SAVANNAH',	'IDENTITY_SUK_JNR_SILVOPASTURE'),
		('REGION_SUK_FOREST',		'IDENTITY_SUK_JNR_SILVOPASTURE');
--------------------------------------------------------------

-- Requirements
--------------------------------------------------------------
INSERT OR IGNORE INTO Requirements
		(RequirementId,												RequirementType)
VALUES	('PLOT_ADJACENT_TO_FOREST_REQUIREMENT_JNR',					'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'),
		('PLOT_ADJACENT_TO_JNR_SAVANNAH_REQUIREMENT',				'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'),
		('REQUIRES_SUK_JNR_SILVOPASTURE_ADJACENT_FOREST_SAVANNAH',	'REQUIREMENT_REQUIREMENTSET_IS_MET'),
		('REQUIRES_SUK_JNR_SILVOPASTURE_NEAR_COMMERCIAL_HUB',		'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),
		('REQUIRES_PLOT_IDENTITY_SUK_JNR_SILVOPASTURE',				'REQUIREMENT_PLOT_PROPERTY_MATCHES'),
		('REQUIRES_PLOT_HAS_LUMBER_MILL',							'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
--------------------------------------------------------------

-- RequirementArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,												Name,				Value)
VALUES	('PLOT_ADJACENT_TO_FOREST_REQUIREMENT_JNR',					'FeatureType',		'FEATURE_FOREST'),
		('PLOT_ADJACENT_TO_JNR_SAVANNAH_REQUIREMENT',				'FeatureType',		'FEATURE_JNR_SAVANNAH'),
		('REQUIRES_SUK_JNR_SILVOPASTURE_ADJACENT_FOREST_SAVANNAH',	'RequirementSetId',	'SUK_IDENTITY_JNR_SILVOPASTURE_ADJACENT_FOREST_SAVANNAH_REQUIREMENTS'),
		('REQUIRES_SUK_JNR_SILVOPASTURE_NEAR_COMMERCIAL_HUB',		'DistrictType',		'DISTRICT_COMMERCIAL_HUB'),
		('REQUIRES_SUK_JNR_SILVOPASTURE_NEAR_COMMERCIAL_HUB',		'MaxRange',			3),
		('REQUIRES_PLOT_IDENTITY_SUK_JNR_SILVOPASTURE',				'PropertyName',		'IDENTITY_SUK_JNR_SILVOPASTURE'),
		('REQUIRES_PLOT_HAS_LUMBER_MILL',							'ImprovementType',	'IMPROVEMENT_LUMBER_MILL');
--------------------------------------------------------------

-- RequirementSets
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,														RequirementSetType)
VALUES	('SUK_IDENTITY_JNR_SILVOPASTURE_ADJACENT_FOREST_SAVANNAH_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY'),
		('SUK_IDENTITY_JNR_SILVOPASTURE_FARM_REQUIREMENTS',						'REQUIREMENTSET_TEST_ALL'),
		('SUK_IDENTITY_JNR_SILVOPASTURE_PASTURE_REQUIREMENTS',					'REQUIREMENTSET_TEST_ALL'),
		('SUK_IDENTITY_JNR_SILVOPASTURE_COMMERCIAL_HUB_REQUIREMENTS',			'REQUIREMENTSET_TEST_ALL'),
		('SUK_IDENTITY_JNR_SILVOPASTURE_LUMBER_REQUIREMENTS',					'REQUIREMENTSET_TEST_ALL');
--------------------------------------------------------------

-- RequirementSetRequirements
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,														RequirementId)
VALUES	('SUK_IDENTITY_JNR_SILVOPASTURE_ADJACENT_FOREST_SAVANNAH_REQUIREMENTS',	'PLOT_ADJACENT_TO_FOREST_REQUIREMENT_JNR'),
		('SUK_IDENTITY_JNR_SILVOPASTURE_ADJACENT_FOREST_SAVANNAH_REQUIREMENTS',	'PLOT_ADJACENT_TO_JNR_SAVANNAH_REQUIREMENT'),
		
		('SUK_IDENTITY_JNR_SILVOPASTURE_FARM_REQUIREMENTS',						'REQUIRES_PLOT_HAS_FARM'),
		('SUK_IDENTITY_JNR_SILVOPASTURE_FARM_REQUIREMENTS',						'REQUIRES_SUK_JNR_SILVOPASTURE_ADJACENT_FOREST_SAVANNAH'),
		
		('SUK_IDENTITY_JNR_SILVOPASTURE_PASTURE_REQUIREMENTS',					'REQUIRES_PLOT_HAS_PASTURE'),
		('SUK_IDENTITY_JNR_SILVOPASTURE_PASTURE_REQUIREMENTS',					'REQUIRES_SUK_JNR_SILVOPASTURE_ADJACENT_FOREST_SAVANNAH'),

		('SUK_IDENTITY_JNR_SILVOPASTURE_COMMERCIAL_HUB_REQUIREMENTS',			'REQUIRES_SUK_JNR_SILVOPASTURE_NEAR_COMMERCIAL_HUB'),
		('SUK_IDENTITY_JNR_SILVOPASTURE_COMMERCIAL_HUB_REQUIREMENTS',			'REQUIRES_PLOT_HAS_PASTURE'),
		('SUK_IDENTITY_JNR_SILVOPASTURE_COMMERCIAL_HUB_REQUIREMENTS',			'REQUIRES_PLOT_IDENTITY_SUK_JNR_SILVOPASTURE'),
		
		('SUK_IDENTITY_JNR_SILVOPASTURE_LUMBER_REQUIREMENTS',					'REQUIRES_PLOT_HAS_LUMBER_MILL'),
		('SUK_IDENTITY_JNR_SILVOPASTURE_LUMBER_REQUIREMENTS',					'REQUIRES_PLOT_IDENTITY_SUK_JNR_SILVOPASTURE');
--------------------------------------------------------------

-- Modifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO Modifiers
		(ModifierId,										ModifierType,									SubjectRequirementSetId)
VALUES	('IDENTITY_SUK_JNR_SILVOPASTURE_FARM_ADJACENT',		'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',	'SUK_IDENTITY_JNR_SILVOPASTURE_FARM_REQUIREMENTS'),
		('IDENTITY_SUK_JNR_SILVOPASTURE_PASTURE_ADJACENT',	'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',	'SUK_IDENTITY_JNR_SILVOPASTURE_PASTURE_REQUIREMENTS'),
		('IDENTITY_SUK_JNR_SILVOPASTURE_PASTURE_CULTURE',	'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',	'SUK_IDENTITY_JNR_SILVOPASTURE_COMMERCIAL_HUB_REQUIREMENTS'),
		('IDENTITY_SUK_JNR_SILVOPASTURE_LUMBERMILL_MALUS',	'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',	'SUK_IDENTITY_JNR_SILVOPASTURE_LUMBER_REQUIREMENTS');
--------------------------------------------------------------

-- ModifierArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('IDENTITY_SUK_JNR_SILVOPASTURE_FARM_ADJACENT',		'YieldType',	'YIELD_FOOD'),
		('IDENTITY_SUK_JNR_SILVOPASTURE_FARM_ADJACENT',		'Amount',		1),
		('IDENTITY_SUK_JNR_SILVOPASTURE_PASTURE_ADJACENT',	'YieldType',	'YIELD_FOOD'),
		('IDENTITY_SUK_JNR_SILVOPASTURE_PASTURE_ADJACENT',	'Amount',		1),
		('IDENTITY_SUK_JNR_SILVOPASTURE_PASTURE_CULTURE',	'YieldType',	'YIELD_CULTURE'),
		('IDENTITY_SUK_JNR_SILVOPASTURE_PASTURE_CULTURE',	'Amount',		2),
		('IDENTITY_SUK_JNR_SILVOPASTURE_LUMBERMILL_MALUS',	'YieldType',	'YIELD_PRODUCTION'),
		('IDENTITY_SUK_JNR_SILVOPASTURE_LUMBERMILL_MALUS',	'Amount',		-1);
--------------------------------------------------------------

-- Suk_UrbanIdentity_Modifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO Suk_UrbanIdentity_Modifiers
		(IdentityType,						ModifierId)
VALUES	('IDENTITY_SUK_JNR_SILVOPASTURE',	'IDENTITY_SUK_JNR_SILVOPASTURE_FARM_ADJACENT'),
		('IDENTITY_SUK_JNR_SILVOPASTURE',	'IDENTITY_SUK_JNR_SILVOPASTURE_PASTURE_ADJACENT'),
		('IDENTITY_SUK_JNR_SILVOPASTURE',	'IDENTITY_SUK_JNR_SILVOPASTURE_PASTURE_CULTURE'),
		('IDENTITY_SUK_JNR_SILVOPASTURE',	'IDENTITY_SUK_JNR_SILVOPASTURE_LUMBERMILL_MALUS');
--------------------------------------------------------------