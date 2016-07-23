instance Char_Zweihand (Npc_Default)
{
	// ------ NSC ------
	name 		= "Gorn"; 
	guild 		= GIL_NONE;
	id 			= 12;
	voice 		= 12;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//----------AIVARS--------------
	attribute[ATR_STRENGTH] 		= 150;
	attribute[ATR_DEXTERITY] 		= 0;
	attribute[ATR_MANA_MAX] 		= 0;
	attribute[ATR_MANA] 			= 0;
	attribute[ATR_HITPOINTS_MAX]	= 300;
	attribute[ATR_HITPOINTS] 		= 300;		

	protection[PROT_EDGE] = -1;
	protection[PROT_POINT] = -1;	
	protection[PROT_MAGIC] = -1;	
	protection[PROT_FLY] = -1;													

	aivar[AIV_PARTYMEMBER] = TRUE;
		
	B_RaiseFightTalent (self, NPC_TALENT_1H, 0);
	B_RaiseFightTalent (self, NPC_TALENT_2H, 100);
	B_RaiseFightTalent (self, NPC_TALENT_BOW, 0);
	B_RaiseFightTalent (self, NPC_TALENT_CROSSBOW, 0);

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------		
	EquipItem	(self, ItMw_Gorn_01);

	// Starttrank

	CreateInvItems	(self, ItPo_Health, 1);
	
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_B_Gorn, BodyTex_B, ITAR_SLD_H);
	Mdl_ApplyOverlayMds	(self, "HUMANS_2HST2.MDS");
	
	// ------ Kampf-Talente ------		

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_12;
};

FUNC VOID Rtn_Start_12()
{	
	TA_Follow_Player 	(08,00,20,00,"START");
	TA_Follow_Player	(20,00,08,00,"START");
};

FUNC VOID Rtn_Wait_12()
{	
	TA_Stand_Guarding 	(08,00,20,00,GornWaypoint);
	TA_Stand_Guarding	(20,00,08,00,GornWaypoint);
};

FUNC VOID Rtn_Knast_12()
{	
	TA_Stand_Guarding 	(08,00,20,00,"KNAST");
	TA_Stand_Guarding	(20,00,08,00,"KNAST");
};

FUNC VOID Rtn_Rettung_12()
{	
	TA_RunToWP 	(08,00,20,00,"KNAST");
	TA_RunToWP	(20,00,08,00,"KNAST");
};