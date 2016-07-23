//************************
//	Skeleton Prototype
//************************

PROTOTYPE Mst_Default_Skeleton(C_Npc)			
{
	//----- Monster ----
	name							=	"Skelett";
	guild							=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_SKELETON;
	level							=	30;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	100; //+50 Waffe
	attribute	[ATR_DEXTERITY]		=	150;
	attribute	[ATR_HITPOINTS_MAX]	=	150;
	attribute	[ATR_HITPOINTS]		=	150;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
		
	//----- Damage Types ----
	damagetype 						=	DAM_EDGE;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----
	fight_tactic	=	FAI_HUMAN_STRONG;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};

//***************
//	Visuals
//***************

func void B_SetVisuals_Skeleton()
{
	Mdl_SetVisual			(self,	"HumanS.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_1hST1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_2hST2.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_CBowT1.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_skeleton.mds");
	Mdl_ApplyOverlayMds 	(self,	"humans_BowT2.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Ske_Body2",	DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};

INSTANCE MiltenSkelett (Mst_Default_Skeleton)
{
	name							=	"Beschworenes Skelett";
	guild							=	GIL_SUMMONED_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_SUMMONED_SKELETON;
	level							=	0; //30
	noFocus = TRUE;

	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	100; //+50 Waffe
	attribute	[ATR_DEXTERITY]		=	150;
	attribute	[ATR_HITPOINTS_MAX]	=	150;
	attribute	[ATR_HITPOINTS]		=	150;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

	//----- Protection ----
	protection[PROT_EDGE] = -1;
	protection[PROT_POINT] = -1;	
	protection[PROT_MAGIC] = -1;	
	protection[PROT_FLY] = -1;
	
	fight_tactic	=	FAI_HUMAN_NORMAL;
	
	// ------ visual ------
	B_SetVisuals_Skeleton();
	
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude (self, ATT_FRIENDLY); 
	
	start_aistate = ZS_MM_Rtn_Summoned;

	protection	[PROT_POINT]		=	-1; 

	EquipItem (self, ItMw_2H_Sword_M_01);
};