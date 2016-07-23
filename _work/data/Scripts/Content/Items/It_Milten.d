INSTANCE ItMw_Milten_01 (C_Item)
{	
	name 				=	"Kampfstab";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal  		= 	20;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_RangerStaff;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_020_2h_Nov_Staff_01.3DS"; 

	description			= 	name;

	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMW_Milten_02 (C_Item)
{	
	name 				=	"Magierstab";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal  		= 	40;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Stab01;		
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMW_MageStaff_Good_2H_01.3DS"; 
	effect				=	"SPELLFX_MAGESTAFF1";

	description			= 	name;

	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Milten_03 (C_Item) 
{	
	name 				=	"Stabkeule";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			= 	70;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Stabkeule;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	0;
	visual 				=	"ItMw_032_2h_staff_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRu_Milten_01 (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_FireBolt.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_FIREBOLT;
	mag_circle			=	0;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			=	NAME_SPL_Firebolt;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
			
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_COST_FIREBOLT;
	
	TEXT	[2]			=	NAME_Dam_Magic;			
	COUNT	[2]			=	SPL_DAMAGE_FIREBOLT;
	
	TEXT	[5]			=	NAME_Value;				
	COUNT	[5]			=	value;
};

INSTANCE ItRu_Milten_02 (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_InstantFireball.3DS";
	material			=	MAT_STONE;
	
	mag_circle			= 	0;
	spell				= 	SPL_InstantFireball;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			= 	NAME_SPL_InstantFireball;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;		
	
	TEXT	[1]			=	NAME_Manakosten;							
	COUNT	[1]			=	SPL_COST_InstantFireball;
	
	TEXT	[2]			=	NAME_Dam_Magic;	
	COUNT	[2]			=	SPL_DAMAGE_InstantFireball;
	
	TEXT	[5]			=	NAME_Value;									
	COUNT	[5]			=	value;
};

INSTANCE ItRu_Milten_03 (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_Water01.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Geyser;
	mag_circle			=	0;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_Geyser;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_Geyser;
	
	TEXT	[2]			=	NAME_Damage;			
	COUNT	[2]			=	SPL_DAMAGE_Geyser;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ItRu_Milten_04 (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_LightningFlash.3DS";
	material			=	MAT_STONE;
	
	mag_circle			=	0;
	spell				= 	SPL_LightningFlash;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	description			=	NAME_SPL_LightningFlash;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_Cost_LightningFlash;
	
	TEXT	[2]			=	NAME_Dam_Magic;			
	COUNT	[2]			=	SPL_Damage_LightningFlash;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ItRu_Milten_05 (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_IceWave.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_ICEWAVE;
	mag_circle 			=	0;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_IceWave;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_IceWave;
	
	TEXT	[2]			=	NAME_Damage;				
	COUNT	[2]			=	60;
	
	TEXT	[3]			=	NAME_Sec_Duration;				
	COUNT	[3]			=	SPL_TIME_FREEZE;
	
	TEXT	[4]			=	NAME_DamagePerSec;				
	COUNT	[4]			=	SPL_FREEZE_DAMAGE;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ItRu_Milten_06 (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_Firerain.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_FIRERAIN;
	mag_circle 			= 	0;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			=	NAME_SPL_Firerain;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_FIRERAIN;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_FIRERAIN;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ItRu_Milten_Summoner (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_SumSkel;

	visual				=	"ItRu_SumSkel.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_SUMMONSKELETON;
	mag_circle			= 	0;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_SummonSkeleton;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_SUMMONSKELETON;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ItMw_Milten_01_World (C_Item)
{	
	name 				=	"Kampfstab";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal  		= 	20;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_RangerStaff;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_020_2h_Nov_Staff_01.3DS"; 

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= 	name;

	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMW_Milten_02_World (C_Item)
{	
	name 				=	"Magierstab";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal  		= 	40;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Stab01;		
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMW_MageStaff_Good_2H_01.3DS"; 

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= 	name;

	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Milten_03_World (C_Item) 
{	
	name 				=	"Stabkeule";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			= 	70;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Stabkeule;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	0;
	visual 				=	"ItMw_032_2h_staff_03.3DS";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRu_Milten_01_World (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_FireBolt.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_FIREBOLT;
	mag_circle			=	0;

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			=	NAME_SPL_Firebolt;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
			
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_COST_FIREBOLT;
	
	TEXT	[2]			=	NAME_Dam_Magic;			
	COUNT	[2]			=	SPL_DAMAGE_FIREBOLT;
	
	TEXT	[5]			=	NAME_Value;				
	COUNT	[5]			=	value;
};

INSTANCE ItRu_Milten_02_World (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_InstantFireball.3DS";
	material			=	MAT_STONE;
	
	mag_circle			= 	0;
	spell				= 	SPL_InstantFireball;

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= 	NAME_SPL_InstantFireball;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;		
	
	TEXT	[1]			=	NAME_Manakosten;							
	COUNT	[1]			=	SPL_COST_InstantFireball;
	
	TEXT	[2]			=	NAME_Dam_Magic;	
	COUNT	[2]			=	SPL_DAMAGE_InstantFireball;
	
	TEXT	[5]			=	NAME_Value;									
	COUNT	[5]			=	value;
};

INSTANCE ItRu_Milten_03_World (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_Water01.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Geyser;
	mag_circle			=	0;

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			=	NAME_SPL_Geyser;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_Geyser;
	
	TEXT	[2]			=	NAME_Damage;			
	COUNT	[2]			=	SPL_DAMAGE_Geyser;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ItRu_Milten_04_World (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_LightningFlash.3DS";
	material			=	MAT_STONE;
	
	mag_circle			=	0;
	spell				= 	SPL_LightningFlash;

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};
	
	description			=	NAME_SPL_LightningFlash;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_Cost_LightningFlash;
	
	TEXT	[2]			=	NAME_Dam_Magic;			
	COUNT	[2]			=	SPL_Damage_LightningFlash;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ItRu_Milten_05_World (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_IceWave.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_ICEWAVE;
	mag_circle 			=	0;

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			=	NAME_SPL_IceWave;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_IceWave;
	
	TEXT	[2]			=	NAME_Damage;				
	COUNT	[2]			=	60;
	
	TEXT	[3]			=	NAME_Sec_Duration;				
	COUNT	[3]			=	SPL_TIME_FREEZE;
	
	TEXT	[4]			=	NAME_DamagePerSec;				
	COUNT	[4]			=	SPL_FREEZE_DAMAGE;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ItRu_Milten_06_World (C_Item)
{
	name 				=	NAME_Rune;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_Firerain.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_FIRERAIN;
	mag_circle 			= 	0;

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			=	NAME_SPL_Firerain;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_FIRERAIN;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_FIRERAIN;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};