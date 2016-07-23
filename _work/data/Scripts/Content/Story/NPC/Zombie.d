//*********************
//	Zombie Prototype	
//*********************

PROTOTYPE Mst_Default_Zombie(C_Npc)			
{
	//----- Monster ----
	name							=	"Infizierter";
	guild							=	GIL_ZOMBIE;
	aivar[AIV_MM_REAL_ID]			= 	ID_ZOMBIE;
	level							=	10;
	
	//----- Attribute ----
	attribute	[ATR_STRENGTH]		=	20;
	attribute	[ATR_DEXTERITY]		=	0;
	attribute	[ATR_HITPOINTS_MAX]	=	30;
	attribute	[ATR_HITPOINTS]		=	30;
	attribute	[ATR_MANA_MAX] 		=	0;
	attribute	[ATR_MANA] 			=	0;

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
func void B_SetVisuals_Zombie01()
{
	Mdl_SetVisual			(self,	"Zombie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			0,			"Zom_Head", 0,  		DEFAULT,	-1);
};
//-------------------------------------------------------------
func void B_SetVisuals_Zombie02()
{
	Mdl_SetVisual			(self,	"Zombie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			0,			"Zom_Head", 1,  		DEFAULT,	-1);
};
//-------------------------------------------------------------
func void B_SetVisuals_Zombie03()
{
	Mdl_SetVisual			(self,	"Zombie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"Zom_Head", 0,  		DEFAULT,	-1);
};
//-------------------------------------------------------------
func void B_SetVisuals_Zombie04()
{
	Mdl_SetVisual			(self,	"Zombie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"Zom_Body",		0,			1,			"Zom_Head", 1,  		DEFAULT,	-1);
};
//-------------------------------------------------------------
func void B_SetVisuals_Zombie05()
{
	Mdl_SetVisual			(self,	"Zombie.mds");
	//								Body-Mesh		Body-Tex	Skin-Color	Head-MMS	Head-Tex	Teeth-Tex	ARMOR
	Mdl_SetVisualBody 		(self,	"ZomWoman_Body",		0,			0,			"ZomWoman_Head", 0,  		DEFAULT,	-1);
};

INSTANCE Zombie		(Mst_Default_Zombie)
{
	var int Randi;
	Randi = Hlp_Random(5);

	if (Randi == 0)
	{
		B_SetVisuals_Zombie01();
	}
	else if (Randi == 1)
	{
		B_SetVisuals_Zombie02();
	}
	else if (Randi == 2)
	{
		B_SetVisuals_Zombie03();
	}
	else if (Randi == 3)
	{
		B_SetVisuals_Zombie04();
	}
	else if (Randi == 4)
	{
		B_SetVisuals_Zombie05();

		name	= "Infizierte";
	};

	Npc_SetToFistMode(self);
};