//***************************
//	Stonegolem Prototype			
//***************************

PROTOTYPE Mst_Default_Boomer (C_Npc)			
{
	//----- Monster ----
	name							=	"Boomer";
	guild							=	GIL_STONEGOLEM;
	aivar[AIV_MM_REAL_ID]			= 	ID_STONEGOLEM;
	level							=	500;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	35;
	attribute	[ATR_DEXTERITY]		=	125;
	attribute	[ATR_HITPOINTS_MAX]	=	300;
	attribute	[ATR_HITPOINTS]		=	300;
	attribute	[ATR_MANA_MAX] 		=	100;
	attribute	[ATR_MANA] 			=	100;
	
	//----- Protections ----
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;	
	protection	[PROT_MAGIC]		=	0;
	
	//---- Damage Types ----
	damagetype 						=	DAM_BLUNT;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_STONEGOLEM;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = TRUE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

//-------------------------------------------------------------
func void B_SetVisuals_Boomer()
{
	Mdl_SetVisual			(self,	"Golem.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Gol_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

//******************
//	Stone Golem   	
//******************

INSTANCE Boomer	(Mst_Default_Boomer)
{
	B_SetVisuals_Boomer();
	Npc_SetToFistMode	(self);
};