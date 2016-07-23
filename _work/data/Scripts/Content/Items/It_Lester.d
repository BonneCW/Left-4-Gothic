INSTANCE ItMw_Lester_01 (C_Item)
{	
	name 				=	"Edles Schwert";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	30;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert1;		
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_035_1h_Sword_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Lester_02 (C_Item)
{	
	name 				=	"Langschwert";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	60;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_037_1h_sword_long_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Lester_03 (C_Item) 
{	
	name 				=	"Rubinklinge";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal			= 	90;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	0;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Lester_04 (C_Item)
{	
	name 				=	"Runenschwert";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	120;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Runenschwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_055_1h_sword_long_05.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Lester_05 (C_Item)
{	
	name 				=	"Orkschlächter";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	150;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Orkschlaechter;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_065_1h_sword_bastard_04.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Lester_06 (C_Item) 
{	
	name 				=	"Innos Zorn";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD | ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal			= 	180;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Blessed_1H_3;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	0;
	visual 				=	"ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Lester_01_World (C_Item)
{	
	name 				=	"Edles Schwert";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	30;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert1;		
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_035_1h_Sword_04.3DS";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Lester_02_World (C_Item)
{	
	name 				=	"Langschwert";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	60;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Schwert2;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_037_1h_sword_long_02.3DS";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Lester_03_World (C_Item) 
{	
	name 				=	"Rubinklinge";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal			= 	90;
	damagetype			=	DAM_EDGE;		
	range    			=  	Range_Rubinklinge;	

	cond_atr[2]   		= 	ATR_STRENGTH;  
	cond_value[2]  		= 	0;
	visual 				=	"ItMw_050_1h_sword_05.3DS";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Lester_04_World (C_Item)
{	
	name 				=	"Runenschwert";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	120;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Runenschwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_055_1h_sword_long_05.3DS";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Lester_05_World (C_Item)
{	
	name 				=	"Orkschlächter";  

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal  		= 	150;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Orkschlaechter;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	0;
	visual 				=	"ItMw_065_1h_sword_bastard_04.3DS";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Lester_06_World (C_Item) 
{	
	name 				=	"Innos Zorn";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_SWD | ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal			= 	180;
	damagetype			=	DAM_EDGE;
	range    			=  	Range_Blessed_1H_3;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	0;
	visual 				=	"ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";

	if (Mod_Schwierigkeitsgrad == 1)
	{
		effect		=	"MARK_WEAPON";
	};

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};