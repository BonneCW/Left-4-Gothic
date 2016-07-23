instance Char_Magie (Npc_Default)
{
	// ------ NSC ------
	name 		= "Milten"; 
	guild 		= GIL_NONE;
	id 			= 13;
	voice 		= 3;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//----------AIVARS--------------
	attribute[ATR_STRENGTH] 		= 50;
	attribute[ATR_DEXTERITY] 		= 0;
	attribute[ATR_MANA_MAX] 		= 300;
	attribute[ATR_MANA] 			= 300;
	attribute[ATR_HITPOINTS_MAX]	= 180;
	attribute[ATR_HITPOINTS] 		= 180;	

	protection[PROT_EDGE] = -1;
	protection[PROT_POINT] = -1;	
	protection[PROT_MAGIC] = -1;	
	protection[PROT_FLY] = -1;													

	aivar[AIV_PARTYMEMBER] = TRUE;	
		
	B_RaiseFightTalent (self, NPC_TALENT_1H, 0);
	B_RaiseFightTalent (self, NPC_TALENT_2H, 60);
	B_RaiseFightTalent (self, NPC_TALENT_BOW, 0);
	B_RaiseFightTalent (self, NPC_TALENT_CROSSBOW, 0);													
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------		
	EquipItem	(self, ItMW_Milten_01);

	CreateInvItems	(self, ItRu_Milten_01, 1);
	CreateInvItems	(self, ItRu_Milten_Summoner, 1);

	// Starttrank

	CreateInvItems	(self, ItPo_Health, 1);
	
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Milten, BodyTex_N, ITAR_KDF_L);
	Mdl_ApplyOverlayMds	(self, "HUMANS_2HST1.MDS");
	
	// ------ Kampf-Talente ------	

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_13;
};

FUNC VOID Rtn_Start_13()
{	
	TA_Follow_Player 	(08,00,20,00,"START");
	TA_Follow_Player	(20,00,08,00,"START");
};

FUNC VOID Rtn_Wait_13()
{	
	TA_Stand_Guarding 	(08,00,20,00,MiltenWaypoint);
	TA_Stand_Guarding	(20,00,08,00,MiltenWaypoint);
};

FUNC VOID Rtn_Knast_13()
{	
	TA_Stand_Guarding 	(08,00,20,00,"KNAST");
	TA_Stand_Guarding	(20,00,08,00,"KNAST");
};

FUNC VOID Rtn_Rettung_13()
{	
	TA_RunToWP 	(08,00,20,00,"KNAST");
	TA_RunToWP	(20,00,08,00,"KNAST");
};