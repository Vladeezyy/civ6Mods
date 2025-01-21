--==========================================================================================================================
-- Authors: Amatheria, Zegangani
-- Resourceful Monopolies & Corporartions Mode Icons
--==========================================================================================================================
-- IconTextureAtlases
-------------------------------------	
INSERT OR IGNORE INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,		Filename)
VALUES  ('ICON_ATLAS_RES2_MODE_PRODUCTS',				256,	 	8,				8,					'Resourceful2_256_MnC.dds'),
		('ICON_ATLAS_RES2_MODE_PRODUCTS',				64,	 		8,				8,					'Resourceful2_64_MnC.dds'),
		('ICON_ATLAS_RES2_MODE_PRODUCTS',				50,	 		8,				8,					'Resourceful2_50_MnC.dds'),
		('ICON_ATLAS_RES2_MODE_PRODUCTS',				38,	 		8,				8,					'Resourceful2_38_MnC.dds'),
		('ICON_ATLAS_RES2_MODE_PRODUCTS',				32,	 		8,				8,					'Resourceful2_32_MnC.dds'),
		('ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			256,		8,				8,					'Resourceful2_256_MnC_FOW.dds');
	
-------------------------------------
-- IconDefinitions
-------------------------------------	
INSERT OR REPLACE INTO IconDefinitions	
		(Name,														Atlas, 										"Index")
VALUES  ('ICON_MONOPOLIES_AND_CORPS_RESOURCE_CAVIAR',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				4),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_CORAL',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				7),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_PLATINUM',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				9),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_LAPIS',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				18),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_RUBY',					'ICON_ATLAS_RES2_MODE_PRODUCTS',				36),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_MAPLE',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				45),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_SANDALWOOD',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				54),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_POPPIES',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				60),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_BAMBOO',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				20),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_SAKURA',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				30),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_EBONY',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				21),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_CASHMERE',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				12),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_TRAVERTINE',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				16),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_ALABASTER',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				24),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_GOLD2',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				11),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_SPONGE',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				32),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_SEA_URCHIN',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				29),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_ORCA',					'ICON_ATLAS_RES2_MODE_PRODUCTS',				33),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_WOLF',					'ICON_ATLAS_RES2_MODE_PRODUCTS',				34),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_TIGER',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				35),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_LION',					'ICON_ATLAS_RES2_MODE_PRODUCTS',				37),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_TOXINS',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				40),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_HONEY',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				41),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_HONEY2',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				41),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_SAFFRON',				'ICON_ATLAS_RES2_MODE_PRODUCTS',				44),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_STRAWBERRY',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				53),
		
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_CAVIAR_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			4),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_CORAL_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			7),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_PLATINUM_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			9),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_LAPIS_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			18),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_RUBY_FOW',				'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			36),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_MAPLE_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			45),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_SANDALWOOD_FOW',		'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			54),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_POPPIES_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			60),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_BAMBOO_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			20),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_SAKURA_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			30),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_EBONY_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			21),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_CASHMERE_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			12),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_TRAVERTINE_FOW',		'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			16),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_ALABASTER_FOW',		'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			24),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_GOLD2_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			11),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_SPONGE_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			32),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_SEA_URCHIN_FOW',		'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			29),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_ORCA_FOW',				'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			33),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_WOLF_FOW',				'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			34),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_TIGER_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			35),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_LION_FOW',				'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			37),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_TOXINS_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			40),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_HONEY_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			41),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_HONEY2_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			41),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_SAFFRON_FOW',			'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			44),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_STRAWBERRY_FOW',		'ICON_ATLAS_RES2_MODE_FOW_PRODUCTS',			53),
		
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_CAVIAR',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				4),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_CORAL',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				7),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_PLATINUM',		'ICON_ATLAS_RES2_MODE_PRODUCTS',				9),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_LAPIS',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				18),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_RUBY',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				36),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_MAPLE',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				45),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_SANDALWOOD',		'ICON_ATLAS_RES2_MODE_PRODUCTS',				54),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_POPPIES',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				60),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_BAMBOO',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				20),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_SAKURA',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				30),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_EBONY',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				21),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_CASHMERE',		'ICON_ATLAS_RES2_MODE_PRODUCTS',				12),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_TRAVERTINE',		'ICON_ATLAS_RES2_MODE_PRODUCTS',				16),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_ALABASTER',		'ICON_ATLAS_RES2_MODE_PRODUCTS',				24),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_GOLD2',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				11),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_SPONGE',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				32),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_SEA_URCHIN',		'ICON_ATLAS_RES2_MODE_PRODUCTS',				29),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_ORCA',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				33),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_WOLF',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				34),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_TIGER',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				35),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_LION',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				37),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_TOXINS',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				40),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_HONEY',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				41),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_HONEY2',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				41),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_SAFFRON',			'ICON_ATLAS_RES2_MODE_PRODUCTS',				44),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_STRAWBERRY',		'ICON_ATLAS_RES2_MODE_PRODUCTS',				53);

--==========================================================================================================================
--==========================================================================================================================