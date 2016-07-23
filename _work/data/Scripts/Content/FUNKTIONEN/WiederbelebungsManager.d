FUNC VOID WiederbelebungsManager ()
{
	// Wiederbelebungsmanagement

	// Held ist nicht Magier

	if (Mod_Charakter != 4)
	{
		// Ansonsten die anderen checken (überhaupt dabei, geschwächt, wird noch nicht versorgt und hat auch keinen Trank)

		if (Mod_Charakter != 3)
		&& (Char_Bogen.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (Npc_IsInState(Char_Bogen, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (Char_Magie.aivar[AIV_Belebt] == 0)
		{
			Char_Bogen.aivar[AIV_WirdVersorgt] = 4;

			Char_Magie.aivar[AIV_Belebt] = 3;

			AI_GotoNpc	(Char_Magie, Char_Bogen);
			AI_PlayAni	(Char_Magie, "T_PLUNDER");
			Char_Bogen.aivar[AIV_Versorgungszeit] = 0;

			return;
		};

		if (Mod_Charakter != 2)
		&& (Char_Zweihand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (Npc_IsInState(Char_Zweihand, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (Char_Magie.aivar[AIV_Belebt] == 0)
		{
			Char_Zweihand.aivar[AIV_WirdVersorgt] = 4;

			Char_Magie.aivar[AIV_Belebt] = 2;

			AI_GotoNpc	(Char_Magie, Char_Zweihand);
			AI_PlayAni	(Char_Magie, "T_PLUNDER");
			Char_Zweihand.aivar[AIV_Versorgungszeit] = 0;

			return;
		};

		if (Mod_Charakter != 1)
		&& (Char_Einhand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (Npc_IsInState(Char_Einhand, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (Char_Magie.aivar[AIV_Belebt] == 0)
		{
			Char_Einhand.aivar[AIV_WirdVersorgt] = 4;

			Char_Magie.aivar[AIV_Belebt] = 1;

			AI_GotoNpc	(Char_Magie, Char_Einhand);
			AI_PlayAni	(Char_Magie, "T_PLUNDER");
			Char_Einhand.aivar[AIV_Versorgungszeit] = 0;

			return;
		};

		if (hero.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (Npc_IsInState(hero, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (Char_Magie.aivar[AIV_Belebt] == 0)
		{
			hero.aivar[AIV_WirdVersorgt] = 4;

			Char_Magie.aivar[AIV_Belebt] = 5;

			AI_GotoNpc	(Char_Magie, hero);
			AI_PlayAni	(Char_Magie, "T_PLUNDER");
			hero.aivar[AIV_Versorgungszeit] = 0;

			return;
		};
	};

	// Held ist nicht Bogen

	if (Mod_Charakter != 3)
	{
		// Ansonsten die anderen checken (überhaupt dabei, geschwächt, wird noch nicht versorgt und hat auch keinen Trank)

		if (Mod_Charakter != 4)
		&& (Char_Magie.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (Npc_IsInState(Char_Magie, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (Char_Bogen.aivar[AIV_Belebt] == 0)
		{
			Char_Magie.aivar[AIV_WirdVersorgt] = 3;

			Char_Bogen.aivar[AIV_Belebt] = 4;

			AI_GotoNpc	(Char_Bogen, Char_Magie);
			AI_PlayAni	(Char_Bogen, "T_PLUNDER");
			Char_Magie.aivar[AIV_Versorgungszeit] = 0;

			return;
		};

		if (Mod_Charakter != 2)
		&& (Char_Zweihand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (Npc_IsInState(Char_Zweihand, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (Char_Bogen.aivar[AIV_Belebt] == 0)
		{
			Char_Zweihand.aivar[AIV_WirdVersorgt] = 3;

			Char_Bogen.aivar[AIV_Belebt] = 2;

			AI_GotoNpc	(Char_Bogen, Char_Zweihand);
			AI_PlayAni	(Char_Bogen, "T_PLUNDER");
			Char_Zweihand.aivar[AIV_Versorgungszeit] = 0;

			return;
		};

		if (Mod_Charakter != 1)
		&& (Char_Einhand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_IsInState(Char_Einhand, ZS_Unconscious))
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (Char_Bogen.aivar[AIV_Belebt] == 0)
		{
			Char_Einhand.aivar[AIV_WirdVersorgt] = 3;

			Char_Bogen.aivar[AIV_Belebt] = 1;

			AI_GotoNpc	(Char_Bogen, Char_Einhand);
			AI_PlayAni	(Char_Bogen, "T_PLUNDER");
			Char_Einhand.aivar[AIV_Versorgungszeit] = 0;


			return;
		};

		if (hero.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (Npc_IsInState(hero, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (Char_Bogen.aivar[AIV_Belebt] == 0)
		{
			hero.aivar[AIV_WirdVersorgt] = 3;

			Char_Bogen.aivar[AIV_Belebt] = 5;

			AI_GotoNpc	(Char_Bogen, hero);
			AI_PlayAni	(Char_Bogen, "T_PLUNDER");
			hero.aivar[AIV_Versorgungszeit] = 0;

			return;
		};
	};

	// Held ist nicht Zweihand

	if (Mod_Charakter != 2)
	{
		// Ansonsten die anderen checken (überhaupt dabei, geschwächt, wird noch nicht versorgt und hat auch keinen Trank)

		if (Mod_Charakter != 3)
		&& (Char_Bogen.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (Npc_IsInState(Char_Bogen, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (Char_Zweihand.aivar[AIV_Belebt] == 0)
		{
			Char_Bogen.aivar[AIV_WirdVersorgt] = 2;

			Char_Zweihand.aivar[AIV_Belebt] = 3;

			AI_GotoNpc	(Char_Zweihand, Char_Bogen);
			AI_PlayAni	(Char_Zweihand, "T_PLUNDER");
			Char_Bogen.aivar[AIV_Versorgungszeit] = 0;

			return;
		};

		if (Mod_Charakter != 4)
		&& (Char_Magie.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (Npc_IsInState(Char_Magie, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (Char_Zweihand.aivar[AIV_Belebt] == 0)
		{
			Char_Magie.aivar[AIV_WirdVersorgt] = 2;

			Char_Zweihand.aivar[AIV_Belebt] = 4;

			AI_GotoNpc	(Char_Zweihand, Char_Magie);
			AI_PlayAni	(Char_Zweihand, "T_PLUNDER");
			Char_Magie.aivar[AIV_Versorgungszeit] = 0;

			return;
		};

		if (Mod_Charakter != 1)
		&& (Char_Einhand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (!Npc_IsInState(Char_Einhand, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (Char_Zweihand.aivar[AIV_Belebt] == 0)
		{
			Char_Einhand.aivar[AIV_WirdVersorgt] = 2;

			Char_Zweihand.aivar[AIV_Belebt] = 1;

			AI_GotoNpc	(Char_Zweihand, Char_Einhand);
			AI_PlayAni	(Char_Zweihand, "T_PLUNDER");
			Char_Zweihand.aivar[AIV_Versorgungszeit] = 0;

			return;
		};

		if (hero.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (Npc_IsInState(hero, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (Char_Zweihand.aivar[AIV_Belebt] == 0)
		{
			hero.aivar[AIV_WirdVersorgt] = 2;

			Char_Zweihand.aivar[AIV_Belebt] = 5;

			AI_GotoNpc	(Char_Zweihand, hero);
			AI_PlayAni	(Char_Zweihand, "T_PLUNDER");
			hero.aivar[AIV_Versorgungszeit] = 0;

			return;
		};
	};

	// Held ist nicht Einhand

	if (Mod_Charakter != 1)
	{
		// Ansonsten die anderen checken (überhaupt dabei, geschwächt, wird noch nicht versorgt und hat auch keinen Trank)

		if (Mod_Charakter != 3)
		&& (Char_Bogen.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (Npc_IsInState(Char_Bogen, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (Char_Einhand.aivar[AIV_Belebt] == 0)
		{
			Char_Bogen.aivar[AIV_WirdVersorgt] = 1;

			Char_Einhand.aivar[AIV_Belebt] = 3;

			AI_GotoNpc	(Char_Einhand, Char_Bogen);
			AI_PlayAni	(Char_Einhand, "T_PLUNDER");
			Char_Bogen.aivar[AIV_Versorgungszeit] = 0;

			return;
		};

		if (Mod_Charakter != 2)
		&& (Char_Zweihand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (Npc_IsInState(Char_Zweihand, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (Char_Einhand.aivar[AIV_Belebt] == 0)
		{
			Char_Zweihand.aivar[AIV_WirdVersorgt] = 1;

			Char_Einhand.aivar[AIV_Belebt] = 2;

			AI_GotoNpc	(Char_Einhand, Char_Zweihand);
			AI_PlayAni	(Char_Einhand, "T_PLUNDER");
			Char_Zweihand.aivar[AIV_Versorgungszeit] = 0;

			return;
		};

		if (Mod_Charakter != 4)
		&& (Char_Magie.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (Npc_IsInState(Char_Magie, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (Char_Einhand.aivar[AIV_Belebt] == 0)
		{
			Char_Einhand.aivar[AIV_WirdVersorgt] = 1;

			Char_Einhand.aivar[AIV_Belebt] = 4;

			AI_GotoNpc	(Char_Einhand, Char_Magie);
			AI_PlayAni	(Char_Einhand, "T_PLUNDER");
			Char_Magie.aivar[AIV_Versorgungszeit] = 0;

			return;
		};

		if (hero.aivar[AIV_WirdVersorgt] == FALSE)
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (Npc_IsInState(hero, ZS_Unconscious))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (Char_Einhand.aivar[AIV_Belebt] == 0)
		{
			hero.aivar[AIV_WirdVersorgt] = 1;

			Char_Einhand.aivar[AIV_Belebt] = 5;

			AI_GotoNpc	(Char_Einhand, hero);
			AI_PlayAni	(Char_Einhand, "T_PLUNDER");
			hero.aivar[AIV_Versorgungszeit] = 0;

			return;
		};
	};
};