INSTANCE Info_Mod_Hero_Start_Charakter (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= Info_Mod_Hero_Start_Charakter_Condition;
	information	= Info_Mod_Hero_Start_Charakter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Charakter wählen";
};

FUNC INT Info_Mod_Hero_Start_Charakter_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MONOLOG)
	&& (Mod_Charakter == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Start_Charakter_Info ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Charakter);

	Info_AddChoice	(Info_Mod_Hero_Start_Charakter, "Zufall - wählt zufällig einen der vier Freunde", Info_Mod_Hero_Start_Charakter_Random);
	Info_AddChoice	(Info_Mod_Hero_Start_Charakter, "Milten - Magie und Stabkampf", Info_Mod_Hero_Start_Charakter_Magie);
	Info_AddChoice	(Info_Mod_Hero_Start_Charakter, "Diego - Bogen und Geschicklichkeitswaffen", Info_Mod_Hero_Start_Charakter_Bogen);
	Info_AddChoice	(Info_Mod_Hero_Start_Charakter, "Gorn - Zweihandäxte", Info_Mod_Hero_Start_Charakter_Zweihand);
	Info_AddChoice	(Info_Mod_Hero_Start_Charakter, "Lester - Einhandschwerter", Info_Mod_Hero_Start_Charakter_Einhand);
};

FUNC VOID Info_Mod_Hero_Start_Charakter_Magie ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Charakter);

	Mod_Charakter = 4;

	B_SetNpcVisual 		(hero, MALE, "Hum_Head_Bald", Face_N_Milten, BodyTex_N, ITAR_KDF_L);
	Mdl_ApplyOverlayMds	(hero, "HUMANS_2HST1.MDS");

	CreateInvItems	(hero, ItMW_Milten_01, 1);

	CreateInvItems	(hero, ItRu_Milten_01, 1);
	CreateInvItems	(hero, ItRu_Milten_Summoner, 1);
		
	B_RaiseFightTalent (hero, NPC_TALENT_1H, 0);
	B_RaiseFightTalent (hero, NPC_TALENT_2H, 60);
	B_RaiseFightTalent (hero, NPC_TALENT_BOW, 0);
	B_RaiseFightTalent (hero, NPC_TALENT_CROSSBOW, 0);

	hero.attribute[ATR_STRENGTH] 		= 50;
	hero.attribute[ATR_DEXTERITY] 		= 0;
	hero.attribute[ATR_MANA_MAX] 		= 300;
	hero.attribute[ATR_MANA] 			= 300;
	hero.attribute[ATR_HITPOINTS_MAX]	= 180;
	hero.attribute[ATR_HITPOINTS] 		= 180;

	hero.name = "Milten";
	hero.voice = 3;
};

FUNC VOID Info_Mod_Hero_Start_Charakter_Bogen ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Charakter);

	Mod_Charakter = 3;

	B_SetNpcVisual 		(hero, MALE, "Hum_Head_Thief", Face_L_Diego, BodyTex_L, ITAR_DIEGO);
	Mdl_SetModelFatness	(hero, 0);
	Mdl_ApplyOverlayMds	(hero, "HUMANS_1HST1.MDS");
	Mdl_ApplyOverlayMds	(hero, "HUMANS_BOWT2.MDS");

	CreateInvItems	(hero, ItRw_Diego_01, 1);
	CreateInvItems	(hero, ItMw_Diego_01, 1);
	CreateInvItems	(hero, ItRw_Arrow, 50);
		
	B_RaiseFightTalent (hero, NPC_TALENT_1H, 60);
	B_RaiseFightTalent (hero, NPC_TALENT_2H, 0);
	B_RaiseFightTalent (hero, NPC_TALENT_BOW, 100);
	B_RaiseFightTalent (hero, NPC_TALENT_CROSSBOW, 0);

	hero.attribute[ATR_STRENGTH] 		= 50;
	hero.attribute[ATR_DEXTERITY] 		= 100;
	hero.attribute[ATR_MANA_MAX] 		= 0;
	hero.attribute[ATR_MANA] 			= 0;
	hero.attribute[ATR_HITPOINTS_MAX]	= 200;
	hero.attribute[ATR_HITPOINTS] 		= 200;	

	hero.name = "Diego";
	hero.voice = 11;
};

FUNC VOID Info_Mod_Hero_Start_Charakter_Zweihand ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Charakter);

	Mod_Charakter = 2;

	B_SetNpcVisual 		(hero, MALE, "Hum_Head_Fighter", Face_B_Gorn, BodyTex_B, ITAR_SLD_H);
	Mdl_ApplyOverlayMds	(hero, "HUMANS_2HST2.MDS");

	CreateInvItems	(hero, ItMw_Gorn_01, 1);
		
	B_RaiseFightTalent (hero, NPC_TALENT_1H, 0);
	B_RaiseFightTalent (hero, NPC_TALENT_2H, 100);
	B_RaiseFightTalent (hero, NPC_TALENT_BOW, 0);
	B_RaiseFightTalent (hero, NPC_TALENT_CROSSBOW, 0);

	hero.attribute[ATR_STRENGTH] 		= 150;
	hero.attribute[ATR_DEXTERITY] 		= 0;
	hero.attribute[ATR_MANA_MAX] 		= 0;
	hero.attribute[ATR_MANA] 			= 0;
	hero.attribute[ATR_HITPOINTS_MAX]	= 300;
	hero.attribute[ATR_HITPOINTS] 		= 300;	

	hero.name = "Gorn";
	hero.voice = 12;
};

FUNC VOID Info_Mod_Hero_Start_Charakter_Einhand ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Charakter);

	Mod_Charakter = 1;

	B_SetNpcVisual 		(hero, MALE, "Hum_Head_Bald",Face_P_Lester, BodyTex_P, ITAR_LESTER);		
	Mdl_SetModelFatness	(hero, 0);
	Mdl_ApplyOverlayMds	(hero, "HUMANS_2HST2.MDS");

	CreateInvItems	(hero, ItMw_Lester_01, 1);
		
	B_RaiseFightTalent (hero, NPC_TALENT_1H, 100);
	B_RaiseFightTalent (hero, NPC_TALENT_2H, 0);
	B_RaiseFightTalent (hero, NPC_TALENT_BOW, 0);
	B_RaiseFightTalent (hero, NPC_TALENT_CROSSBOW, 0);

	hero.attribute[ATR_STRENGTH] 		= 100;
	hero.attribute[ATR_DEXTERITY] 		= 0;
	hero.attribute[ATR_MANA_MAX] 		= 0;
	hero.attribute[ATR_MANA] 			= 0;
	hero.attribute[ATR_HITPOINTS_MAX]	= 250;
	hero.attribute[ATR_HITPOINTS] 		= 250;	

	hero.name = "Lester";
	hero.voice = 13;
};

FUNC VOID Info_Mod_Hero_Start_Charakter_Random ()
{
	var int Randi;
	Randi = r_max(3)+1;

	if (Randi == 1)
	{
		Info_Mod_Hero_Start_Charakter_Einhand();
	}
	else if (Randi == 2)
	{
		Info_Mod_Hero_Start_Charakter_Zweihand();
	}
	else if (Randi == 3)
	{
		Info_Mod_Hero_Start_Charakter_Bogen();
	}
	else if (Randi == 4)
	{
		Info_Mod_Hero_Start_Charakter_Magie();
	};
};

INSTANCE Info_Mod_Hero_Start_Kampagne (C_INFO)
{
	npc		= PC_Hero;
	nr		= 2;
	condition	= Info_Mod_Hero_Start_Kampagne_Condition;
	information	= Info_Mod_Hero_Start_Kampagne_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kampagne wählen";
};

FUNC INT Info_Mod_Hero_Start_Kampagne_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MONOLOG)
	&& (Mod_Kampagne == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Start_Kampagne_Info ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Kampagne);

	Info_AddChoice	(Info_Mod_Hero_Start_Kampagne, "Testlevel", Info_Mod_Hero_Start_Testlevel);
	//Info_AddChoice	(Info_Mod_Hero_Start_Kampagne, "Kampagne 1 - Der verlorene Tempel", Info_Mod_Hero_Start_Kampagne_1);
};

FUNC VOID Info_Mod_Hero_Start_Testlevel ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Kampagne);

	Mod_Kampagne = 1;

	ZombieHorden_Max = 2;
	Tank_Max = 1;
	Boomer_Max = 1;

	// Level #1 Limits setzen

	Tank_Spawnpoints_Levelpart_One_Max = 6;
	Tank_Limit_Levelpart_One_Max = 1;
	Boomer_Spawnpoints_Levelpart_One_Max = 10;
	Boomer_Limit_Levelpart_One_Max = 2;
	Witch_Spawnpoints_Levelpart_One_Max = 4;
	Witch_Limit_Levelpart_One_Max = 1;
	Hunter_Spawnpoints_Levelpart_One_Max = 9;
	Hunter_Limit_Levelpart_One_Max = 1;
	Hordenfuehrer_Spawnpoints_Levelpart_One_Max = 4;
	Hordenfuehrer_Limit_Levelpart_One_Max = 1;
	Spitter_Spawnpoints_Levelpart_One_Max = 4;
	Spitter_Limit_Levelpart_One_Max = 2;
	Smoker_Spawnpoints_Levelpart_One_Max = 4;
	Smoker_Limit_Levelpart_One_Max = 1;
	Zombiehorde_Spawnpoints_Levelpart_One_Max = 24;
	Zombiehorde_Limit_Levelpart_One_Max = 5;
	PotionHealth_Spawnpoints_Levelpart_One_Max = 7;
	PotionHealth_Limit_Levelpart_One_Max = 3;
	PotionMana_Spawnpoints_Levelpart_One_Max = 6;
	PotionMana_Limit_Levelpart_One_Max = 2;
	Koecher_Spawnpoints_Levelpart_One_Max = 2;
	Koecher_Limit_Levelpart_One_Max = 1;
	Weapon_Lester_Level_01 = 3;
	Weapon_Gorn_Level_01 = 3;
	Weapon_Diego_Level_01 = 3;
	Weapon_Milten_Level_01 = 3;
	Weapon_Diego_Second_01 = 2;
	Weapon_Milten_Second_01 = 2;

	// Level #2 Limits setzen

	Tank_Spawnpoints_Levelpart_Two_Max = 0;
	Tank_Limit_Levelpart_Two_Max = 0;
	Boomer_Spawnpoints_Levelpart_Two_Max = 0;
	Boomer_Limit_Levelpart_Two_Max = 0;
	Witch_Spawnpoints_Levelpart_Two_Max = 0;
	Witch_Limit_Levelpart_Two_Max = 0;
	Hunter_Spawnpoints_Levelpart_Two_Max = 0;
	Hunter_Limit_Levelpart_Two_Max = 0;
	Hordenfuehrer_Spawnpoints_Levelpart_Two_Max = 4;
	Hordenfuehrer_Limit_Levelpart_Two_Max = 1;
	Spitter_Spawnpoints_Levelpart_Two_Max = 4;
	Spitter_Limit_Levelpart_Two_Max = 4;
	Smoker_Spawnpoints_Levelpart_Two_Max = 4;
	Smoker_Limit_Levelpart_Two_Max = 0;
	Zombiehorde_Spawnpoints_Levelpart_Two_Max = 0;
	Zombiehorde_Limit_Levelpart_Two_Max = 0;
	PotionHealth_Spawnpoints_Levelpart_Two_Max = 0;
	PotionHealth_Limit_Levelpart_Two_Max = 0;
	PotionMana_Spawnpoints_Levelpart_Two_Max = 0;
	PotionMana_Limit_Levelpart_Two_Max = 0;
	Koecher_Spawnpoints_Levelpart_Two_Max = 0;
	Koecher_Limit_Levelpart_Two_Max = 0;
	Weapon_Lester_Level_02 = 0;
	Weapon_Gorn_Level_02 = 0;
	Weapon_Diego_Level_02 = 0;
	Weapon_Milten_Level_02 = 0;

	// Level #3 Limits setzen

	Tank_Spawnpoints_Levelpart_Three_Max = 0;
	Tank_Limit_Levelpart_Three_Max = 0;
	Boomer_Spawnpoints_Levelpart_Three_Max = 0;
	Boomer_Limit_Levelpart_Three_Max = 0;
	Witch_Spawnpoints_Levelpart_Three_Max = 0;
	Witch_Limit_Levelpart_Three_Max = 0;
	Hunter_Spawnpoints_Levelpart_Three_Max = 0;
	Hunter_Limit_Levelpart_Three_Max = 0;
	Hordenfuehrer_Spawnpoints_Levelpart_Three_Max = 4;
	Hordenfuehrer_Limit_Levelpart_Three_Max = 1;
	Spitter_Spawnpoints_Levelpart_Three_Max = 4;
	Spitter_Limit_Levelpart_Three_Max = 4;
	Smoker_Spawnpoints_Levelpart_Three_Max = 4;
	Smoker_Limit_Levelpart_Three_Max = 0;
	Zombiehorde_Spawnpoints_Levelpart_Three_Max = 0;
	Zombiehorde_Limit_Levelpart_Three_Max = 0;
	PotionHealth_Spawnpoints_Levelpart_Three_Max = 0;
	PotionHealth_Limit_Levelpart_Three_Max = 0;
	PotionMana_Spawnpoints_Levelpart_Three_Max = 0;
	PotionMana_Limit_Levelpart_Three_Max = 0;
	Koecher_Spawnpoints_Levelpart_Three_Max = 0;
	Koecher_Limit_Levelpart_Three_Max = 0;
	Weapon_Lester_Level_03 = 0;
	Weapon_Gorn_Level_03 = 0;
	Weapon_Diego_Level_03 = 0;
	Weapon_Milten_Level_03 = 0;
	Weapon_Diego_Second_02 = 0;
	Weapon_Milten_Second_02 = 0;

	// Level #4 Limits setzen

	Tank_Spawnpoints_Levelpart_Four_Max = 0;
	Tank_Limit_Levelpart_Four_Max = 0;
	Boomer_Spawnpoints_Levelpart_Four_Max = 0;
	Boomer_Limit_Levelpart_Four_Max = 0;
	Witch_Spawnpoints_Levelpart_Four_Max = 0;
	Witch_Limit_Levelpart_Four_Max = 0;
	Hunter_Spawnpoints_Levelpart_Four_Max = 0;
	Hunter_Limit_Levelpart_Four_Max = 0;
	Hordenfuehrer_Spawnpoints_Levelpart_Four_Max = 4;
	Hordenfuehrer_Limit_Levelpart_Four_Max = 1;
	Spitter_Spawnpoints_Levelpart_Four_Max = 4;
	Spitter_Limit_Levelpart_Four_Max = 4;
	Smoker_Spawnpoints_Levelpart_Four_Max = 4;
	Smoker_Limit_Levelpart_Four_Max = 0;
	Zombiehorde_Spawnpoints_Levelpart_Four_Max = 0;
	Zombiehorde_Limit_Levelpart_Four_Max = 0;
	PotionHealth_Spawnpoints_Levelpart_Four_Max = 0;
	PotionHealth_Limit_Levelpart_Four_Max = 0;
	PotionMana_Spawnpoints_Levelpart_Four_Max = 0;
	PotionMana_Limit_Levelpart_Four_Max = 0;
	Koecher_Spawnpoints_Levelpart_Four_Max = 0;
	Koecher_Limit_Levelpart_Four_Max = 0;
	Weapon_Lester_Level_04 = 0;
	Weapon_Gorn_Level_04 = 0;
	Weapon_Diego_Level_04 = 0;
	Weapon_Milten_Level_04 = 0;

	Monster_Max += 7;
};

FUNC VOID Info_Mod_Hero_Start_Kampagne_1 ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Kampagne);

	Mod_Kampagne = 2;

	ZombieHorden_Max = 2;
	Tank_Max = 1;
	Boomer_Max = 1;

	// Level #1 Limits setzen

	Tank_Spawnpoints_Levelpart_One_Max = 6;
	Tank_Limit_Levelpart_One_Max = 1;
	Boomer_Spawnpoints_Levelpart_One_Max = 10;
	Boomer_Limit_Levelpart_One_Max = 3;
	Witch_Spawnpoints_Levelpart_One_Max = 4;
	Witch_Limit_Levelpart_One_Max = 1;
	Hunter_Spawnpoints_Levelpart_One_Max = 9;
	Hunter_Limit_Levelpart_One_Max = 2;
	Hordenfuehrer_Spawnpoints_Levelpart_One_Max = 4;
	Hordenfuehrer_Limit_Levelpart_One_Max = 1;
	Zombiehorde_Spawnpoints_Levelpart_One_Max = 24;
	Zombiehorde_Limit_Levelpart_One_Max = 5;
	PotionHealth_Spawnpoints_Levelpart_One_Max = 7;
	PotionHealth_Limit_Levelpart_One_Max = 3;
	PotionMana_Spawnpoints_Levelpart_One_Max = 6;
	PotionMana_Limit_Levelpart_One_Max = 2;
	Koecher_Spawnpoints_Levelpart_One_Max = 2;
	Koecher_Limit_Levelpart_One_Max = 1;
	Weapon_Lester_Level_01 = 3;
	Weapon_Gorn_Level_01 = 3;
	Weapon_Diego_Level_01 = 3;
	Weapon_Milten_Level_01 = 3;
	Weapon_Diego_Second_01 = 2;
	Weapon_Milten_Second_01 = 2;

	// Level #2 Limits setzen

	Tank_Spawnpoints_Levelpart_Two_Max = 0;
	Tank_Limit_Levelpart_Two_Max = 0;
	Boomer_Spawnpoints_Levelpart_Two_Max = 0;
	Boomer_Limit_Levelpart_Two_Max = 0;
	Witch_Spawnpoints_Levelpart_Two_Max = 0;
	Witch_Limit_Levelpart_Two_Max = 0;
	Hunter_Spawnpoints_Levelpart_Two_Max = 0;
	Hunter_Limit_Levelpart_Two_Max = 0;
	Hordenfuehrer_Spawnpoints_Levelpart_Two_Max = 4;
	Hordenfuehrer_Limit_Levelpart_Two_Max = 1;
	Zombiehorde_Spawnpoints_Levelpart_Two_Max = 0;
	Zombiehorde_Limit_Levelpart_Two_Max = 0;
	PotionHealth_Spawnpoints_Levelpart_Two_Max = 0;
	PotionHealth_Limit_Levelpart_Two_Max = 0;
	PotionMana_Spawnpoints_Levelpart_Two_Max = 0;
	PotionMana_Limit_Levelpart_Two_Max = 0;
	Koecher_Spawnpoints_Levelpart_Two_Max = 0;
	Koecher_Limit_Levelpart_Two_Max = 0;
	Weapon_Lester_Level_02 = 0;
	Weapon_Gorn_Level_02 = 0;
	Weapon_Diego_Level_02 = 0;
	Weapon_Milten_Level_02 = 0;

	// Level #3 Limits setzen

	Tank_Spawnpoints_Levelpart_Three_Max = 0;
	Tank_Limit_Levelpart_Three_Max = 0;
	Boomer_Spawnpoints_Levelpart_Three_Max = 0;
	Boomer_Limit_Levelpart_Three_Max = 0;
	Witch_Spawnpoints_Levelpart_Three_Max = 0;
	Witch_Limit_Levelpart_Three_Max = 0;
	Hunter_Spawnpoints_Levelpart_Three_Max = 0;
	Hunter_Limit_Levelpart_Three_Max = 0;
	Hordenfuehrer_Spawnpoints_Levelpart_Three_Max = 4;
	Hordenfuehrer_Limit_Levelpart_Three_Max = 1;
	Zombiehorde_Spawnpoints_Levelpart_Three_Max = 0;
	Zombiehorde_Limit_Levelpart_Three_Max = 0;
	PotionHealth_Spawnpoints_Levelpart_Three_Max = 0;
	PotionHealth_Limit_Levelpart_Three_Max = 0;
	PotionMana_Spawnpoints_Levelpart_Three_Max = 0;
	PotionMana_Limit_Levelpart_Three_Max = 0;
	Koecher_Spawnpoints_Levelpart_Three_Max = 0;
	Koecher_Limit_Levelpart_Three_Max = 0;
	Weapon_Lester_Level_03 = 0;
	Weapon_Gorn_Level_03 = 0;
	Weapon_Diego_Level_03 = 0;
	Weapon_Milten_Level_03 = 0;
	Weapon_Diego_Second_02 = 0;
	Weapon_Milten_Second_02 = 0;

	// Level #4 Limits setzen

	Tank_Spawnpoints_Levelpart_Four_Max = 0;
	Tank_Limit_Levelpart_Four_Max = 0;
	Boomer_Spawnpoints_Levelpart_Four_Max = 0;
	Boomer_Limit_Levelpart_Four_Max = 0;
	Witch_Spawnpoints_Levelpart_Four_Max = 0;
	Witch_Limit_Levelpart_Four_Max = 0;
	Hunter_Spawnpoints_Levelpart_Four_Max = 0;
	Hunter_Limit_Levelpart_Four_Max = 0;
	Hordenfuehrer_Spawnpoints_Levelpart_Four_Max = 4;
	Hordenfuehrer_Limit_Levelpart_Four_Max = 1;
	Zombiehorde_Spawnpoints_Levelpart_Four_Max = 0;
	Zombiehorde_Limit_Levelpart_Four_Max = 0;
	PotionHealth_Spawnpoints_Levelpart_Four_Max = 0;
	PotionHealth_Limit_Levelpart_Four_Max = 0;
	PotionMana_Spawnpoints_Levelpart_Four_Max = 0;
	PotionMana_Limit_Levelpart_Four_Max = 0;
	Koecher_Spawnpoints_Levelpart_Four_Max = 0;
	Koecher_Limit_Levelpart_Four_Max = 0;
	Weapon_Lester_Level_04 = 0;
	Weapon_Gorn_Level_04 = 0;
	Weapon_Diego_Level_04 = 0;
	Weapon_Milten_Level_04 = 0;

	Monster_Max += 7;
};

INSTANCE Info_Mod_Hero_Start_Schwierigkeitsgrad (C_INFO)
{
	npc		= PC_Hero;
	nr		= 3;
	condition	= Info_Mod_Hero_Start_Schwierigkeitsgrad_Condition;
	information	= Info_Mod_Hero_Start_Schwierigkeitsgrad_Info;
	permanent	= 0;
	important	= 0;
	description	= "Schwierigkeitsgrad wählen";
};

FUNC INT Info_Mod_Hero_Start_Schwierigkeitsgrad_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MONOLOG)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Start_Schwierigkeitsgrad_Info ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Schwierigkeitsgrad);

	Info_AddChoice	(Info_Mod_Hero_Start_Schwierigkeitsgrad, "Schwer", Info_Mod_Hero_Start_Schwierigkeitsgrad_Schwer);
	Info_AddChoice	(Info_Mod_Hero_Start_Schwierigkeitsgrad, "Normal", Info_Mod_Hero_Start_Schwierigkeitsgrad_Normal);
	Info_AddChoice	(Info_Mod_Hero_Start_Schwierigkeitsgrad, "Leicht", Info_Mod_Hero_Start_Schwierigkeitsgrad_Leicht);
};

FUNC VOID Info_Mod_Hero_Start_Schwierigkeitsgrad_Schwer ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Schwierigkeitsgrad);

	Mod_Schwierigkeitsgrad = 3;

	HAI_TIME_UNCONSCIOUS = 30;

	ZombieHorden_Max = 20;
};

FUNC VOID Info_Mod_Hero_Start_Schwierigkeitsgrad_Normal ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Schwierigkeitsgrad);

	Mod_Schwierigkeitsgrad = 2;

	HAI_TIME_UNCONSCIOUS = 30;

	ZombieHorden_Max = 10;
};

FUNC VOID Info_Mod_Hero_Start_Schwierigkeitsgrad_Leicht ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Schwierigkeitsgrad);

	Mod_Schwierigkeitsgrad = 1;

	HAI_TIME_UNCONSCIOUS = 45;

	ZombieHorden_Max = 10;
};

INSTANCE Info_Mod_Hero_Start_Punkte (C_INFO)
{
	npc		= PC_Hero;
	nr		= 4;
	condition	= Info_Mod_Hero_Start_Punkte_Condition;
	information	= Info_Mod_Hero_Start_Punkte_Info;
	permanent	= 0;
	important	= 0;
	description	= "Punkteliste ...";
};

FUNC INT Info_Mod_Hero_Start_Punkte_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MONOLOG)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Start_Punkte_Info ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Punkte);

	Info_AddChoice	(Info_Mod_Hero_Start_Punkte, "... statisch ohne Punkte", Info_Mod_Hero_Start_Punkte_StatAus);
	Info_AddChoice	(Info_Mod_Hero_Start_Punkte, "... statisch mit Punkten", Info_Mod_Hero_Start_Punkte_StatAn);
	Info_AddChoice	(Info_Mod_Hero_Start_Punkte, "... dynamisch ohne Punkte", Info_Mod_Hero_Start_Punkte_DynAus);
	Info_AddChoice	(Info_Mod_Hero_Start_Punkte, "... dynamisch mit Punkten", Info_Mod_Hero_Start_Punkte_DynAn);
};

FUNC VOID Info_Mod_Hero_Start_Punkte_StatAus ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Punkte);

	Mod_Punkte = 4;
};

FUNC VOID Info_Mod_Hero_Start_Punkte_StatAn ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Punkte);

	Mod_Punkte = 3;
};

FUNC VOID Info_Mod_Hero_Start_Punkte_DynAus ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Punkte);

	Mod_Punkte = 2;
};

FUNC VOID Info_Mod_Hero_Start_Punkte_DynAn ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_Punkte);

	Mod_Punkte = 1;
};

INSTANCE Info_Mod_Hero_Start_CPU (C_INFO)
{
	npc		= PC_Hero;
	nr		= 5;
	condition	= Info_Mod_Hero_Start_CPU_Condition;
	information	= Info_Mod_Hero_Start_CPU_Info;
	permanent	= 0;
	important	= 0;
	description	= "CPU wählen";
};

FUNC INT Info_Mod_Hero_Start_CPU_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MONOLOG)
	{
		return 0;
	};
};

FUNC VOID Info_Mod_Hero_Start_CPU_Info ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_CPU);

	Info_AddChoice	(Info_Mod_Hero_Start_CPU, "Langsame CPU", Info_Mod_Hero_Start_CPU_Slow);
	Info_AddChoice	(Info_Mod_Hero_Start_CPU, "Schnelle CPU", Info_Mod_Hero_Start_CPU_Fast);
};

FUNC VOID Info_Mod_Hero_Start_CPU_Slow ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_CPU);

	OldCPU = TRUE;
};

FUNC VOID Info_Mod_Hero_Start_CPU_Fast ()
{
	Info_ClearChoices	(Info_Mod_Hero_Start_CPU);

	OldCPU = FALSE;
};

INSTANCE Info_Mod_Hero_Start_EXIT (C_INFO)
{
	npc		= PC_Hero;
	nr		= 999;
	condition	= Info_Mod_Hero_Start_EXIT_Condition;
	information	= Info_Mod_Hero_Start_EXIT_Info;
	permanent	= 0;
	important	= 0;
	description	= "STARTEN";
};

FUNC INT Info_Mod_Hero_Start_EXIT_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MONOLOG)
	&& (Mod_Charakter > 0)
	&& (Mod_Kampagne > 0)
	&& (Mod_Schwierigkeitsgrad > 0)
	//&& (Npc_KnowsInfo(hero, Info_Mod_Hero_Start_CPU))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hero_Start_Punkte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Start_EXIT_Info ()
{
	B_ENDPRODUCTIONDIALOG();

	Mod_StartCampaign = 1;

	if (Mod_Kampagne == 1)
	{
		AI_Teleport	(hero, "TESTLEVEL");
	}
	else if (Mod_Kampagne == 2)
	{
		AI_Teleport	(hero, "LOSTTEMPLE");
	};
};