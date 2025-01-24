-- UC_PRD_Text_MODE_Corporations
-- Author: JNR
--------------------------------------------------------------

-- Information for translators: see information further below for instructions on how to help with translating this mod.

-- English
--------------------------------------------------------------
INSERT OR REPLACE INTO EnglishText
		(Tag,														Text)
VALUES	('LOC_BUILDING_KEIRETSU_NAME_UC_JNR',						'Keiretsu'),
		('LOC_BUILDING_KEIRETSU_DESCRIPTION_UC_JNR',				'A building unique to Japan. +25% [ICON_Production] Production towards city projects.[NEWLINE]Strategic Resource Stockpiles increased +20 (on Standard Speed).[NEWLINE][NEWLINE]Domestic [ICON_TradeRoute] Trade Routes to this city gain +1 [ICON_Production] Production.'),
		('LOC_BUILDING_JNR_MODE_MACHINES_NAME',						'Machines Factory'),
		('LOC_BUILDING_JNR_MODE_MACHINES_DESCRIPTION',				'Its [ICON_Production] Production bonus is extended to all City Centers within 6 tiles that do not already have a bonus from a Product-creating building.[NEWLINE]Allows this City to create Products based on the [ICON_RESOURCE_JNR_MACHINES] Machines resource:[NEWLINE]{LOC_PRODUCT_JNR_MACHINES_BONUS_DESCRIPTION}'),
		('LOC_BUILDING_JNR_MODE_FERTILIZERS_NAME',					'Fertilizer Plant'),
		('LOC_BUILDING_JNR_MODE_FERTILIZERS_DESCRIPTION',			'Its [ICON_Production] Production and [ICON_Food] Food bonus is extended to all City Centers within 6 tiles that do not already have a bonus from a Product-creating building.[NEWLINE]Allows this City to create Products based on the [ICON_RESOURCE_JNR_FERTILIZERS] Fertilizer resource:[NEWLINE]{LOC_PRODUCT_JNR_FERTILIZERS_BONUS_DESCRIPTION}'),
		('LOC_BUILDING_JNR_MODE_ELECTRONICS_NAME',					'Electronics Factory'),
		('LOC_BUILDING_JNR_MODE_ELECTRONICS_DESCRIPTION',			'Its [ICON_Production] Production and [ICON_Science] Science bonus is extended to all City Centers within 6 tiles that do not already have a bonus from a Product-creating building.[NEWLINE]Allows this City to create Products based on the [ICON_RESOURCE_JNR_ELECTRONICS] Electronics resource:[NEWLINE]{LOC_PRODUCT_JNR_ELECTRONICS_BONUS_DESCRIPTION}'),
		('LOC_BUILDING_JNR_MODE_SOUVENIRS_NAME',					'Souvenirs Factory'),
		('LOC_BUILDING_JNR_MODE_SOUVENIRS_DESCRIPTION',				'Its [ICON_Production] Production and [ICON_Culture] Culture bonus is extended to all City Centers within 6 tiles that do not already have a bonus from a Product-creating building.[NEWLINE]Allows this City to create Products based on the [ICON_RESOURCE_JNR_SOUVENIRS] Souvenirs resource:[NEWLINE]{LOC_PRODUCT_JNR_SOUVENIRS_BONUS_DESCRIPTION}'),
		('LOC_BUILDING_JNR_MODE_PHARMA_NAME',						'Pharmaceutical Plant'),
		('LOC_BUILDING_JNR_MODE_PHARMA_DESCRIPTION',				'Its [ICON_Production] Production and [ICON_Faith] Faith bonus is extended to all City Centers within 6 tiles that do not already have a bonus from a Product-creating building.[NEWLINE]Allows this City to create Products based on the [ICON_RESOURCE_JNR_PHARMA] Pharmaceuticals resource:[NEWLINE]{LOC_PRODUCT_JNR_PHARMA_BONUS_DESCRIPTION}'),
		('LOC_BUILDING_JNR_MODE_PLASTICS_NAME',						'Polymer Plant'),
		('LOC_BUILDING_JNR_MODE_PLASTICS_DESCRIPTION',				'Its [ICON_Production] Production and [ICON_Gold] Gold bonus is extended to all City Centers within 6 tiles that do not already have a bonus from a Product-creating building.[NEWLINE]Allows this City to create Products based on the [ICON_RESOURCE_JNR_PLASTICS] Plastics resource:[NEWLINE]{LOC_PRODUCT_JNR_PLASTICS_BONUS_DESCRIPTION}'),
		('LOC_RESOURCE_JNR_MACHINES_NAME',							'Machines'),
		('LOC_RESOURCE_JNR_FERTILIZERS_NAME',						'Fertilizer'),
		('LOC_RESOURCE_JNR_ELECTRONICS_NAME',						'Electronics'),
		('LOC_RESOURCE_JNR_SOUVENIRS_NAME',							'Souvenirs'),
		('LOC_RESOURCE_JNR_PHARMA_NAME',							'Pharmaceuticals'),
		('LOC_RESOURCE_JNR_PLASTICS_NAME',							'Plastics'),
		('LOC_RESOURCE_JNR_MACHINES__NAME',							'Machines'),
		('LOC_RESOURCE_JNR_FERTILIZERS__NAME',						'Fertilizer'),
		('LOC_RESOURCE_JNR_ELECTRONICS__NAME',						'Electronics'),
		('LOC_RESOURCE_JNR_SOUVENIRS__NAME',						'Souvenirs'),
		('LOC_RESOURCE_JNR_PHARMA__NAME',							'Pharmaceuticals'),
		('LOC_RESOURCE_JNR_PLASTICS__NAME',							'Plastics'),
		('LOC_GREATWORK_PRODUCT_JNR_MACHINES_X_NAME',				'Mass-produced Machines'),
		('LOC_GREATWORK_PRODUCT_JNR_FERTILIZERS_X_NAME',			'Mass-produced Fertilizer'),
		('LOC_GREATWORK_PRODUCT_JNR_ELECTRONICS_X_NAME',			'Mass-produced Electronic Gadgets'),
		('LOC_GREATWORK_PRODUCT_JNR_SOUVENIRS_X_NAME',				'Mass-produced Souvenirs'),
		('LOC_GREATWORK_PRODUCT_JNR_PHARMA_X_NAME',					'Mass-produced Pharmaceuticals'),
		('LOC_GREATWORK_PRODUCT_JNR_PLASTICS_X_NAME',				'Mass-produced Plastic Goods'),
		('LOC_PRODUCT_JNR_MACHINES_BONUS_DESCRIPTION',				'[NEWLINE]+1 [ICON_Production] Production to all improved tiles in this city.[NEWLINE]Requires 30 [ICON_RESOURCE_IRON] Iron to begin construction.'),
		('LOC_PRODUCT_JNR_FERTILIZERS_BONUS_DESCRIPTION',			'[NEWLINE]+2 [ICON_Food] Food to all types of Farms in this city.[NEWLINE]Requires 30 [ICON_RESOURCE_NITER] Niter to begin construction.'),
		('LOC_PRODUCT_JNR_ELECTRONICS_BONUS_DESCRIPTION',			'[NEWLINE]+5% [ICON_Science] Science, [ICON_Culture] Culture, and [ICON_Faith] Faith in this city.[NEWLINE]BUT: Enemy Spies operate at 2 levels higher in this city.'),
		('LOC_PRODUCT_JNR_SOUVENIRS_BONUS_DESCRIPTION',				'[NEWLINE]+25% [ICON_Tourism] Tourism pressure from this city towards other civilizations in the Modern era.[NEWLINE]BUT: -1 [ICON_AMENITIES] Amenity in this city and further -1 [ICON_AMENITIES] Amenity from every district in this city adjacent to a wonder.'),
		('LOC_PRODUCT_JNR_PHARMA_BONUS_DESCRIPTION',				'[NEWLINE]+0.5 [ICON_Food] Food  per turn for each [ICON_Citizen] Citizen in the city.[NEWLINE]Tier 3 Commercial Hub and Harbor buildings and Airports in this city provide +1 [ICON_Favor] Diplomatic Favor per turn.[NEWLINE]BUT: [NEWLINE]-0.5 [ICON_Gold] Gold  per turn for each [ICON_Citizen] Citizen in the city.'),
		('LOC_PRODUCT_JNR_PLASTICS_BONUS_DESCRIPTION',				'[NEWLINE]+10 [ICON_Gold] Gold from each Neighborhood in this city.[NEWLINE]BUT: -2 Appeal to all tiles in this city.'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_MACHINES_NAME',			'[ICON_RESOURCE_JNR_MACHINES] Machines Factory: Create New Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_MACHINES_SHORT_NAME',		'[ICON_RESOURCE_JNR_MACHINES] Create New Machines Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_MACHINES_DESCRIPTION',		'Create a new product for the world based on the [ICON_RESOURCE_JNR_MACHINES] Machines resource.[NEWLINE]WARNING: Product will be lost permanently on creation if no free slot is available in any of your cities.{LOC_PRODUCT_JNR_MACHINES_BONUS_DESCRIPTION}'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_FERTILIZERS_NAME',			'[ICON_RESOURCE_JNR_FERTILIZERS] Fertilizer Plant: Create New Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_FERTILIZERS_SHORT_NAME',	'[ICON_RESOURCE_JNR_FERTILIZERS] Create New Fertilizer Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_FERTILIZERS_DESCRIPTION',	'Create a new product for the world based on the [ICON_RESOURCE_JNR_FERTILIZERS] Fertilizer resource.[NEWLINE]WARNING: Product will be lost permanently on creation if no free slot is available in any of your cities.{LOC_PRODUCT_JNR_FERTILIZERS_BONUS_DESCRIPTION}'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_ELECTRONICS_NAME',			'[ICON_RESOURCE_JNR_ELECTRONICS] Electronics Factory: Create New Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_ELECTRONICS_SHORT_NAME',	'[ICON_RESOURCE_JNR_ELECTRONICS] Create New Electronics Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_ELECTRONICS_DESCRIPTION',	'Create a new product for the world based on the [ICON_RESOURCE_JNR_ELECTRONICS] Electronics resource.[NEWLINE]WARNING: Product will be lost permanently on creation if no free slot is available in any of your cities.{LOC_PRODUCT_JNR_ELECTRONICS_BONUS_DESCRIPTION}'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_SOUVENIRS_NAME',			'[ICON_RESOURCE_JNR_SOUVENIRS] Souvenirs Factory: Create New Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_SOUVENIRS_SHORT_NAME',		'[ICON_RESOURCE_JNR_SOUVENIRS] Create New Souvenirs Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_SOUVENIRS_DESCRIPTION',	'Create a new product for the world based on the [ICON_RESOURCE_JNR_SOUVENIRS] Souvenirs resource.[NEWLINE]WARNING: Product will be lost permanently on creation if no free slot is available in any of your cities.{LOC_PRODUCT_JNR_SOUVENIRS_BONUS_DESCRIPTION}'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_PHARMA_NAME',				'[ICON_RESOURCE_JNR_PHARMA] Pharmaceutical Plant: Create New Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_PHARMA_SHORT_NAME',		'[ICON_RESOURCE_JNR_PHARMA] Create New Pharmaceuticals Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_PHARMA_DESCRIPTION',		'Create a new product for the world based on the [ICON_RESOURCE_JNR_PHARMA] Pharmaceuticals resource.[NEWLINE]WARNING: Product will be lost permanently on creation if no free slot is available in any of your cities.{LOC_PRODUCT_JNR_PHARMA_BONUS_DESCRIPTION}'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_PLASTICS_NAME',			'[ICON_RESOURCE_JNR_PLASTICS] Polymer Plant: Create New Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_PLASTICS_SHORT_NAME',		'[ICON_RESOURCE_JNR_PLASTICS] Create New Plastic Goods Product'),
		('LOC_PROJECT_CREATE_PRODUCT_JNR_PLASTICS_DESCRIPTION',		'Create a new product for the world based on the [ICON_RESOURCE_JNR_PLASTICS] Plastics resource.[NEWLINE]WARNING: Product will be lost permanently on creation if no free slot is available in any of your cities.{LOC_PRODUCT_JNR_PLASTICS_BONUS_DESCRIPTION}');
--------------------------------------------------------------