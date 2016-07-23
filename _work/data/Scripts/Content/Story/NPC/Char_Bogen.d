instance Char_Bogen (Npc_Default)
{
	// ------ NSC ------
	name 		= "Diego"; 
	guild 		= GIL_NONE;
	id 			= 10;
	voice 		= 11;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//----------AIVARS--------------
	attribute[ATR_STRENGTH] 		= 50;
	attribute[ATR_DEXTERITY] 		= 100;
	attribute[ATR_MANA_MAX] 		= 0;
	attribute[ATR_MANA] 			= 0;
	attribute[ATR_HITPOINTS_MAX]	= 200;
	attribute[ATR_HITPOINTS] 		= 200;		

	protection[PROT_EDGE] = -1;
	protection[PROT_POINT] = -1;		
	protection[PROT_MAGIC] = -1;	
	protection[PROT_FLY] = -1;											

	aivar[AIV_PARTYMEMBER] = TRUE;	
		
	B_RaiseFightTalent (self, NPC_TALENT_1H, 60);
	B_RaiseFightTalent (self, NPC_TALENT_2H, 0);
	B_RaiseFightTalent (self, NPC_TALENT_BOW, 100);
	B_RaiseFightTalent (self, NPC_TALENT_CROSSBOW, 0);													
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------		
	EquipItem	(self, ItMw_Diego_01);	
	EquipItem	(self, ItRw_Diego_01);
	CreateInvItems	(self, ItRw_Arrow, 50);

	// Starttrank

	CreateInvItems	(self, ItPo_Health, 1);
	
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_L_Diego, BodyTex_L, ITAR_DIEGO);
	Mdl_ApplyOverlayMds	(self, "HUMANS_1HST1.MDS");
	Mdl_ApplyOverlayMds	(self, "HUMANS_BOWT2.MDS");
	
	// ------ Kampf-Talente ------		

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_10;
};

FUNC VOID Rtn_Start_10()
{	
	TA_Follow_Player 	(08,00,20,00,"START");
	TA_Follow_Player	(20,00,08,00,"START");
};

FUNC VOID Rtn_Wait_10()
{	
	TA_Stand_Guarding 	(08,00,20,00,DiegoWaypoint);
	TA_Stand_Guarding	(20,00,08,00,DiegoWaypoint);
};

FUNC VOID Rtn_Knast_10()
{	
	TA_Stand_Guarding 	(08,00,20,00,"KNAST");
	TA_Stand_Guarding	(20,00,08,00,"KNAST");
};

FUNC VOID Rtn_Rettung_10()
{	
	TA_RunToWP 	(08,00,20,00,"KNAST");
	TA_RunToWP	(20,00,08,00,"KNAST");
};