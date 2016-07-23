//**********************
//	Tank Prototype		
//**********************

PROTOTYPE Mst_Default_Tank(C_Npc)			
{
	//----- Monster ----
	name							=	"Tank";
	guild							=	GIL_TROLL;
	aivar[AIV_MM_REAL_ID]			= 	ID_TROLL;
	level							=	500; //30
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	75;	//FlyDamage
	attribute	[ATR_DEXTERITY]		=	100;
	attribute	[ATR_HITPOINTS_MAX]	=	5000;
	attribute	[ATR_HITPOINTS]		=	5000;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;
	
	//----- Protections ----	
	protection	[PROT_BLUNT]		=	0;
	protection	[PROT_EDGE]			=	0;
	protection	[PROT_POINT]		=	0;	
	protection	[PROT_FIRE]			=	0;
	protection	[PROT_FLY]			=	0;
	protection	[PROT_MAGIC]		=	0;
	
	//----- Damage Types ----	
	damagetype 						=	DAM_BLUNT;
//	damage		[DAM_INDEX_BLUNT]	=	144;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	1;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_TROLL;

	//----- Senses & Ranges ----	
	senses			= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range	=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime]	= FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	//----- Daily Routine ----
	start_aistate				= ZS_MM_AllScheduler;

	aivar[AIV_MM_RestStart] 	= OnlyRoutine;
};


//*************
//	Visuals
//*************


func void B_SetVisuals_Tank()
{
	Mdl_SetVisual			(self,	"Troll.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"Tro_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);
};
//***********
//	Tank    
//***********
INSTANCE Tank	(Mst_Default_Tank)
{	
	B_SetVisuals_Tank();
	Npc_SetToFistMode(self);
};