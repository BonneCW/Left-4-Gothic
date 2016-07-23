INSTANCE ItMw_Gorn_01 (C_Item)
{	
	name 				=	"Grobe Kriegsaxt";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	40;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld2hAxe;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_035_2h_sld_axe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Gorn_02 (C_Item) 
{	
	name 				=	"Leichte Streitaxt";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal			= 	70;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Streitaxt1;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	0;
	visual 				=	"ItMw_035_2h_Axe_light_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Gorn_03 (C_Item)
{	
	name 				=	"Streitaxt";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	100;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Streitaxt2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_060_2h_axe_heavy_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Gorn_04 (C_Item)
{	
	name 				=	"Schlachtaxt";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	130;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Schlachtaxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_070_2h_axe_heavy_03.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Gorn_05 (C_Item)
{	
	name 				=	"Barbarenstreitaxt";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	170;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Barbarenstreitaxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_075_2h_axe_heavy_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Gorn_06 (C_Item)
{	
	name 				=	"Berserkeraxt";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	200;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Berserkeraxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_080_2h_axe_heavy_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Gorn_01_World (C_Item)
{	
	name 				=	"Grobe Kriegsaxt";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	40;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld2hAxe;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_035_2h_sld_axe_01.3DS";

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

INSTANCE ItMw_Gorn_02_World (C_Item) 
{	
	name 				=	"Leichte Streitaxt";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal			= 	70;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Streitaxt1;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	0;
	visual 				=	"ItMw_035_2h_Axe_light_03.3DS";

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

INSTANCE ItMw_Gorn_03_World (C_Item)
{	
	name 				=	"Streitaxt";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	100;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Streitaxt2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_060_2h_axe_heavy_01.3DS";

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

INSTANCE ItMw_Gorn_04_World (C_Item)
{	
	name 				=	"Schlachtaxt";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	130;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Schlachtaxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_070_2h_axe_heavy_03.3DS";

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

INSTANCE ItMw_Gorn_05_World (C_Item)
{	
	name 				=	"Barbarenstreitaxt";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	170;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Barbarenstreitaxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_075_2h_axe_heavy_04.3DS";

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

INSTANCE ItMw_Gorn_06_World (C_Item)
{	
	name 				=	"Berserkeraxt";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	200;
	damagetype 			=	DAM_EDGE;	
	range    			=  	Range_Berserkeraxt;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_080_2h_axe_heavy_02.3DS";

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