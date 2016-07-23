//**********************
//	Hunter Prototype		
//**********************

PROTOTYPE Mst_Default_Hunter(C_Npc)			
{
	//----- Monster ----
	name							=	"Hunter";
	guild							=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]			= 	ID_SKELETON;
	level							=	500; //30
	
	//----- Attribute ----	
	attribute	[ATR_STRENGTH]		=	75;	//FlyDamage
	attribute	[ATR_DEXTERITY]		=	100;
	attribute	[ATR_HITPOINTS_MAX]	=	1000;
	attribute	[ATR_HITPOINTS]		=	1000;
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
//	damage		[DAM_INDEX_BLUNT]	=	0;
//	damage		[DAM_INDEX_EDGE]	=	0;
//	damage		[DAM_INDEX_POINT]	=	0;
//	damage		[DAM_INDEX_FIRE]	=	0;
//	damage		[DAM_INDEX_FLY]		=	0;
//	damage		[DAM_INDEX_MAGIC]	=	0;

	//----- Kampf-Taktik ----	
	fight_tactic	=	FAI_GOBBO;

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


func void B_SetVisuals_Hunter()
{
	Mdl_SetVisual			(self,	"Humans.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody		(self,	"hum_body_Naked0",		DEFAULT,	DEFAULT,	"Hum_Head_Bald",			DEFAULT,  	DEFAULT,	-1);

	Mdl_ApplyOverlayMDS	(self, "HUNTER.MDS");
};
//***********
//	Hunter    
//***********
INSTANCE Hunter	(Mst_Default_Hunter)
{	
	B_SetVisuals_Hunter();
	Npc_SetToFistMode(self);
};