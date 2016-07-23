instance PC_Hero (NPC_DEFAULT)
{
	// ------ SC ------
	name 		= "Ich";
	guild		= GIL_NONE;
	id			= 0;
	voice		= 15;
	level		= 0;
	Npctype		= NPCTYPE_MAIN;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= 0;
	exp_next		= 500;
	lp				= 0;
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 100;
	attribute[ATR_DEXTERITY] 		= 100;
	attribute[ATR_MANA_MAX] 		= 300;
	attribute[ATR_MANA] 			= 300;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS] 		= 200;

	protection[PROT_EDGE] = -1;
	protection[PROT_POINT] = -1;		
	protection[PROT_MAGIC] = -1;	
	protection[PROT_FLY] = -1;											

	aivar[AIV_PARTYMEMBER] = TRUE;	

	// Starttrank

	CreateInvItems	(self, ItPo_Health, 1);
	
	// ------ visuals ------
	//B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", FACE_N_Player, BodyTex_N, NO_ARMOR);
	
	Mdl_SetVisual (self,"HUMANS.MDS");
	// ------ Visual ------ "body_Mesh",		bodyTex			SkinColor	headMesh,			faceTex,		teethTex,	armorInstance	
	Mdl_SetVisualBody (self, "hum_body_Naked0", 9,				0,			"Hum_Head_Pony", 	FACE_N_Player,	0, 			NO_ARMOR);
	
	// ------ Kampf-Talente ------

	self.senses			=	SENSE_HEAR | SENSE_SEE;
	self.senses_range	=	PERC_DIST_ACTIVE_MAX;

	Npc_SetPercTime		(self, 1);

	Npc_PercEnable  	(self, PERC_ASSESSDAMAGE, B_AssessDamage_Hero);
	//Npc_PercEnable  	(self, PERC_ASSESSMAGIC, B_AssessMagic_Hero);
};