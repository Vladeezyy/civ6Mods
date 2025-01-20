-- Legitimacy_Policies_ModSupport
-- Author: JNR
--------------------------------------------------------------

--------------------------------------------------------------
-- Military		->	Traditional
-- Economic		->	Rational-Legal
-- Diplomatic	->	Charismatic
--------------------------------------------------------------

-- PolicyType
--------------------------------------------------------------
UPDATE Policies SET GovernmentSlotType='SLOT_MILITARY' WHERE PolicyType IN (
		'POLICY_JNR_MEMES',
		'POLICY_JNR_BIODIVERSITY',
		'POLICY_JNR_ORGANIC_FARMING',
		'POLICY_JNR_GREEN_BUILDING',
		'POLICY_JNR_ECOTOURISM',
		'POLICY_JNR_STATE_FAIRS',
		'POLICY_JNR_NATURAL_HARBORS',
		'POLICY_JNR_THALASSOCRACY',
		'POLICY_JNR_FREEDOM_TO_ROAM',
		'POLICY_JNR_FORCED_LABOR',
		'POLICY_6T_DRESSAGE',
		'POLICY_JNR_RED_LIST',
		'POLICY_JNR_AHIMSA',
		'POLICY_JNR_HASTILUDE',

		'POLICY_LEU_HERBAL_MEDICINE',
		'POLICY_LEU_ORAL_TRADITION',
		'POLICY_LEU_RELIGIOUS_TOLERANCE',
		'POLICY_LEU_CATECHESIS',

		'POLICY_LEU_FUR_TRADE',
		'POLICY_LEU_ANIMAL_TRAINING',
		'POLICY_LEU_SAFARI_EXPEDITIONS',
		'POLICY_LEU_SMOKE_HOUSES',
		'POLICY_LEU_WHALESHIPS',
		'POLICY_LEU_ROYAL_MENAGERIES'
);

UPDATE Policies SET GovernmentSlotType='SLOT_ECONOMIC' WHERE PolicyType IN (
		'POLICY_JNR_CONTROLLED_BURNS',
		'POLICY_JNR_SMOG_FILTERS',
		'POLICY_JNR_BIG_SCIENCE',
		'POLICY_JNR_HYDROGEN_ENGINES',
		'POLICY_JNR_FEED_IN_TARIFFS',
		'POLICY_JNR_FISHING_QUOTAS',
		'POLICY_JNR_VSR_ZONES',
		'POLICY_JNR_CARBON_CERTIFICATES',
		'POLICY_JNR_DEREGULATION',
		'POLICY_JNR_CONTAINERIZATION',
		'POLICY_JNR_TIMBER_RAFTING',
		'POLICY_JNR_CANAL_ZONE',
		'POLICY_JNR_TAXONOMY',
		'POLICY_JNR_RESERVOIRS',
		'POLICY_JNR_GARDEN_CITIES',
		'POLICY_JNR_WATER_TREATMENT',
		'POLICY_JNR_STANDARDIZATION',
		'POLICY_JNR_JUST_IN_TIME',
		'POLICY_JNR_DUAL_USE_TECH',
		'POLICY_JNR_QFD',
		'POLICY_JNR_ADMIRALITY_COURT',
		'POLICY_6T_CLINKER',
		'POLICY_JNR_CAPITULACIONES',

		'POLICY_LEU_FOOD_BANKS',
		'POLICY_LEU_OVERLAND_PORTAGE',
		'POLICY_LEU_MAPPA_MUNDI',
		'POLICY_LEU_TELEGRAPH_TROOPS',
		'POLICY_LEU_STRUCTURAL_ADJUSTMENT',
		'POLICY_LEU_PERIPLUS',
		'POLICY_LEU_MODERNIZATION',
		'POLICY_LEU_PAPER_MILLS',

		'POLICY_LEU_CANNERIES',
		'POLICY_LEU_BREEDING_PROGRAMS',
		'POLICY_LEU_EX_SITU_CONSERVATION',
		'POLICY_LEU_ANIMAL_RIGHTS'
);

UPDATE Policies SET GovernmentSlotType='SLOT_DIPLOMATIC' WHERE PolicyType IN (
		'POLICY_JNR_ESOTERICS',
		'POLICY_JNR_FUNDAMENTALISM',
		'POLICY_JNR_ENERGIEWENDE',
		'POLICY_JNR_SCUBA_DIVING',
		'POLICY_JNR_FLOATING_CITIES',
		'POLICY_JNR_VIRTUAL_BEACHES',
		'POLICY_JNR_OCEAN_CLEANUP',
		'POLICY_JNR_FLAGSHIP_STORES',
		'POLICY_JNR_SELF_MANAGEMENT',
		'POLICY_JNR_JOINT_VENTURES',
		'POLICY_JNR_PHILANTHROPY',

		'POLICY_LEU_RITUAL_LIBATION',
		'POLICY_LEU_BEER_GARDENS',
		'POLICY_LEU_TRAVEL_LITERATURE',
		'POLICY_LEU_GRAND_TOUR',
		'POLICY_LEU_LUXURY_FABRICS',
		'POLICY_LEU_PILGRIMAGE_SITES',
		'POLICY_LEU_VOTIVE_OFFERINGS',
		'POLICY_LEU_TELEVANGELISM',

		'POLICY_LEU_WILDLIFE_EMANCIPATION',
		'POLICY_LEU_WILDLIFE_DOCUMENTARIES',
		'POLICY_LEU_BIG_GAME_HUNTING',
		'POLICY_LEU_TROPHY_HUNTING',
		'POLICY_LEU_TROPHY_HUNTING_LATE'
);
--------------------------------------------------------------