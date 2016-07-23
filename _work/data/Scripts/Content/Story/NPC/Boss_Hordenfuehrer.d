//*********************
//	Zombie Prototype	
//*********************

PROTOTYPE Mst_Default_Hordenfuehrer (C_Npc)			
{
	//----- Monster ----
	name							=	"Hordenführer";
	guild							=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_ZOMBIE;
	level							=	20;

	aivar[AIV_MagicUser] = 2;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	50;
	attribute	[ATR_DEXTERITY]		=	0;
	attribute	[ATR_HITPOINTS_MAX]	=	1000;
	attribute	[ATR_HITPOINTS]		=	1000;
	attribute	[ATR_MANA_MAX] 		=	10000;
	attribute	[ATR_MANA] 			=	10000;

	//----- Protection ----
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;	
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Type ----
	damagetype 						=	DAM_BLUNT;
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf Taktik ----
	fight_tactic	=	FAI_ZOMBIE;
	
	//----- Senses & Ranges ----
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************

//-------------------------------------------------------------
// Zwei Hautfarben mit jeweils zwei Gesichtstexturen
//-------------------------------------------------------------
func void B_SetVisuals_Hordenfuehrer()
{
	Mdl_SetVisual			(self,	"Humans.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"Hum_Body_Naked0",		0,			0,			"Zom_Head", 2,  		DEFAULT,	ITAR_PAL_SKEL);
};

INSTANCE Hordenfuehrer		(Mst_Default_Hordenfuehrer)
{
	B_SetVisuals_Hordenfuehrer();

	//Npc_SetToFistMode(self);
};