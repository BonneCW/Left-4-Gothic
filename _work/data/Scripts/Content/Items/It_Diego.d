INSTANCE ItMw_Diego_01 (C_Item)
{	
	name 				=	"Degen";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	20;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_VLKSchwert;	

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_018_1h_SwordCane_01.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Diego_02 (C_Item)
{	
	name 				=	"Meisterdegen";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	40;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Meisterdegen;

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_065_1h_SwordCane_02.3ds";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Diego_03 (C_Item)
{	
	name 				=	"Betty";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE|ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	70;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_ElBastardo;		

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

instance ItRw_Diego_01 (C_Item)
{
	name 				=	"Kurzbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	40;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_L_01.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

instance ItRw_Diego_02 (C_Item)
{
	name 				=	"Jagdbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	70;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_M_01.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

instance ItRw_Diego_03 (C_Item)
{
	name 				=	"Ulmenbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	100;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_M_02.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Diego_04 (C_Item)
{
	name 				=	"Buchenbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	130;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_M_04.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Diego_05 (C_Item)
{
	name 				=	"Kriegsbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	170;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_H_03.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Diego_06 (C_Item)
{
	name 				=	"Drachenbogen";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	200;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_H_04.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Diego_01_World (C_Item)
{	
	name 				=	"Degen";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	20;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_VLKSchwert;	

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_018_1h_SwordCane_01.3ds";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Diego_02_World (C_Item)
{	
	name 				=	"Meisterdegen";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	40;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Meisterdegen;

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_065_1h_SwordCane_02.3ds";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Diego_03_World (C_Item)
{	
	name 				=	"Betty";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_AXE|ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	70;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_ElBastardo;		

	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_065_1h_sword_bastard_03.3DS";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

instance ItRw_Diego_01_World (C_Item)
{
	name 				=	"Kurzbogen";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	40;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_L_01.mms";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

instance ItRw_Diego_02_World (C_Item)
{
	name 				=	"Jagdbogen";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	70;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_M_01.mms";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

instance ItRw_Diego_03_World (C_Item)
{
	name 				=	"Ulmenbogen";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	100;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_M_02.mms";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Diego_04_World (C_Item)
{
	name 				=	"Buchenbogen";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	130;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_M_04.mms";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Diego_05_World (C_Item)
{
	name 				=	"Kriegsbogen";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	170;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_H_03.mms";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItRw_Diego_06_World (C_Item)
{
	name 				=	"Drachenbogen";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	0;

	damageTotal			=	200;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	0;
	visual 				=	"ItRw_Bow_H_04.mms";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};