// *******************************************************************
// Startup und Init Funktionen der Level-zen-files
// -----------------------------------------------
// Die STARTUP-Funktionen werden NUR beim ersten Betreten eines Levels 
// (nach NewGame) aufgerufen, die INIT-Funktionen jedesmal
// Die Funktionen müssen so heissen wie die zen-files
// *******************************************************************

// *********
// GLOBAL
// *********

func void STARTUP_GLOBAL()
{
	// wird fuer jede Welt aufgerufen (vor STARTUP_<LevelName>)
	Game_InitGerman();
};

func void INIT_GLOBAL()
{
	// wird fuer jede Welt aufgerufen (vor INIT_<LevelName>)
	Game_InitGerman();

	LeGo_Init(LeGo_All & ~LeGo_Focusnames);

	username = MEM_GetGothOpt("CLOCKWORK", "username");
	passwort = MEM_GetGothOpt("CLOCKWORK", "passwort");

	Wld_SendTrigger	("SPECIALTRIGGER");

	Wld_SendTrigger	("DAUERTRIGGER");

	if (Mod_StartCampaign == 1)
	{
		Mod_StartCampaign = 0;

		Wld_SetTime(r_max(23), r_max(59));

		if (r_max(99) < 5)
		{
			StartRain();
		};

		MEM_WriteInt	(game_holdTime_Address, 1);
	};

	FixPlayerControllsTurnOnNpcAttackMoveBug();

	MEM_SetShowDebug(1);

	ShowManabar(1);

	if (!Hlp_StrCmp(GOTHIC_RESTART, "Y"))
	{
		HookEngine (4349731, 7, "B_ENDGAME");

		GOTHIC_RESTART = "Y";
	};
};

FUNC VOID OldLevel(var int newlevel)
{
	CurrentLevel2 = newlevel;
};


// *********
// Testlevel
// *********

FUNC VOID CharakterSpawnCenter ()
{
	if (Mod_Charakter != 4)
	{
		Wld_InsertNpc	(Char_Magie,	"START");
	};
	if (Mod_Charakter != 3)
	{
		Wld_InsertNpc	(Char_Bogen,	"START");
	};
	if (Mod_Charakter != 2)
	{
		Wld_InsertNpc	(Char_Zweihand,	"START");
	};
	if (Mod_Charakter != 1)
	{
		Wld_InsertNpc	(Char_Einhand,	"START");
	};
};

FUNC VOID HeroLook()
{
	if (Mod_Charakter == 4)
	{
		Npc_RemoveInvItems	(hero, ItAr_KDF_L, 1);
		B_SetNpcVisual 		(hero, MALE, "Hum_Head_Bald", Face_N_Milten, BodyTex_N, ITAR_KDF_L);
		Mdl_ApplyOverlayMds	(hero, "HUMANS_2HST1.MDS");

		hero.name = "Milten";
		hero.voice = 3;
	}
	else if (Mod_Charakter == 3)
	{
		Npc_RemoveInvItems	(hero, ItAr_DIEGO, 1);
		B_SetNpcVisual 		(hero, MALE, "Hum_Head_Thief", Face_L_Diego, BodyTex_L, ITAR_DIEGO);
		Mdl_SetModelFatness	(hero, 0);
		Mdl_ApplyOverlayMds	(hero, "HUMANS_1HST1.MDS");
		Mdl_ApplyOverlayMds	(hero, "HUMANS_BOWT2.MDS");

		hero.name = "Diego";
		hero.voice = 11;
	}
	else if (Mod_Charakter == 2)
	{
		Npc_RemoveInvItems	(hero, ItAr_SLD_H, 1);
		B_SetNpcVisual 		(hero, MALE, "Hum_Head_Fighter", Face_B_Gorn, BodyTex_B, ITAR_SLD_H);
		Mdl_ApplyOverlayMds	(hero, "HUMANS_2HST2.MDS");

		hero.name = "Gorn";
		hero.voice = 12;
	}
	else if (Mod_Charakter == 1)
	{
		Npc_RemoveInvItems	(hero, ItAr_LESTER, 1);
		B_SetNpcVisual 		(hero, MALE, "Hum_Head_Bald",Face_P_Lester, BodyTex_P, ITAR_LESTER);		
		Mdl_SetModelFatness	(hero, 0);
		Mdl_ApplyOverlayMds	(hero, "HUMANS_1HST2.MDS");

		hero.name = "Lester";
		hero.voice = 13;
	};
};


func void STARTUP_Testlevel ()
{
	CharakterSpawnCenter ();

	// Tanks spawnen

	TankSpawner();

	// Boomer spawnen

	BoomerSpawner();

	// Witch spawnen

	WitchSpawner();

	// Hunter spawnen

	HunterSpawner();

	// Hordenführer spawnen

	HordenfuehrerSpawner();

	// Spitter spawnen

	SpitterSpawner();

	// Smoker spawnen

	SmokerSpawner();

	// Zombiehorden spawnen

	ZombiehordenSpawner();

	// Heiltränke spawnen

	PotionHealthSpawner();

	// Manatränke spawnen

	PotionManaSpawner();

	// Köcher spawnen

	KoecherSpawner();

	// Waffen spawnen

	WeaponSpawner();
};

func void INIT_Testlevel ()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();

	HeroLook();

	OldLevel(TESTLEVEL_ZEN);
};


func void STARTUP_LostTemple ()
{
	CharakterSpawnCenter ();

	// Tanks spawnen

	TankSpawner();

	// Boomer spawnen

	BoomerSpawner();

	// Witch spawnen

	WitchSpawner();

	// Hunter spawnen

	HunterSpawner();

	// Zombiehorden spawnen

	ZombiehordenSpawner();

	// Heiltränke spawnen

	PotionHealthSpawner();

	// Manatränke spawnen

	PotionManaSpawner();

	// Köcher spawnen

	KoecherSpawner();

	// Waffen spawnen

	WeaponSpawner();
};

func void INIT_LostTemple ()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();

	HeroLook();

	OldLevel(KAMPAGNEONE_ZEN);
};

func void STARTUP_Startraum ()
{
};

func void INIT_Startraum ()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();

	OldLevel(STARTRAUM_ZEN);
};