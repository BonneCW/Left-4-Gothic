instance Char_Einhand (Npc_Default)
{
	// ------ NSC ------
	name 		= "Lester"; 
	guild 		= GIL_NONE;
	id 			= 11;
	voice 		= 13;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//----------AIVARS--------------
	attribute[ATR_STRENGTH] 		= 100;
	attribute[ATR_DEXTERITY] 		= 0;
	attribute[ATR_MANA_MAX] 		= 0;
	attribute[ATR_MANA] 			= 0;
	attribute[ATR_HITPOINTS_MAX]	= 250;
	attribute[ATR_HITPOINTS] 		= 250;	

	protection[PROT_EDGE] = -1;
	protection[PROT_POINT] = -1;		
	protection[PROT_MAGIC] = -1;	
	protection[PROT_FLY] = -1;												

	aivar[AIV_PARTYMEMBER] = TRUE;	
		
	B_RaiseFightTalent (self, NPC_TALENT_1H, 100);
	B_RaiseFightTalent (self, NPC_TALENT_2H, 0);
	B_RaiseFightTalent (self, NPC_TALENT_BOW, 0);
	B_RaiseFightTalent (self, NPC_TALENT_CROSSBOW, 0);													
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------		
	EquipItem	(self, ItMw_Lester_01);

	// Starttrank

	CreateInvItems	(self, ItPo_Health, 1);
	
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald",Face_P_Lester, BodyTex_P, ITAR_LESTER);		
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "HUMANS_2HST2.MDS");
	
	// ------ Kampf-Talente ------	

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_11;
};

FUNC VOID Rtn_Start_11()
{	
	TA_Follow_Player 	(08,00,20,00,"START");
	TA_Follow_Player	(20,00,08,00,"START");
};

FUNC VOID Rtn_Wait_11()
{	
	TA_Stand_Guarding 	(08,00,20,00,LesterWaypoint);
	TA_Stand_Guarding	(20,00,08,00,LesterWaypoint);
};

FUNC VOID Rtn_Knast_11()
{	
	TA_Stand_Guarding 	(08,00,20,00,"KNAST");
	TA_Stand_Guarding	(20,00,08,00,"KNAST");
};

FUNC VOID Rtn_Rettung_11()
{	
	TA_RunToWP 	(08,00,20,00,"KNAST");
	TA_RunToWP	(20,00,08,00,"KNAST");
};