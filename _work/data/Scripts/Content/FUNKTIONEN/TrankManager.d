FUNC VOID TrankManager ()
{
	// Trankmanagement

	// Held ist nicht Magier

	if (Mod_Charakter != 4)
	{
		// Selber versorgen wenn geschwächt und Trank dabei

		if (Char_Magie.attribute[ATR_HITPOINTS] < Char_Magie.attribute[ATR_HITPOINTS_MAX]/2)
		&& (Npc_HasItems(Char_Magie, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		{
			B_UseItem	(Char_Magie, ItPo_Health);
		};

		// Ansonsten die anderen checken (überhaupt dabei, geschwächt, wird noch nicht versorgt und hat auch keinen Trank)

		if (Mod_Charakter != 3)
		&& (Char_Bogen.attribute[ATR_HITPOINTS] < Char_Bogen.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Bogen.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Bogen, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Magie, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Magie, Char_Bogen) < 300)
		{
			Char_Bogen.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Magie, Char_Bogen);
			B_GiveInvItems	(Char_Magie, Char_Bogen, ItPo_Health, 1);
			B_UseItem	(Char_Bogen, ItPo_Health);

			MiltenPoints += 1;

			PrintDebug ("Punkte: Milten + 1 für Trank");

			return;
		};

		if (Mod_Charakter != 2)
		&& (Char_Zweihand.attribute[ATR_HITPOINTS] < Char_Zweihand.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Zweihand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Zweihand, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Magie, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Magie, Char_Zweihand) < 300)
		{
			Char_Zweihand.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Magie, Char_Zweihand);
			B_GiveInvItems	(Char_Magie, Char_Zweihand, ItPo_Health, 1);
			B_UseItem	(Char_Zweihand, ItPo_Health);

			MiltenPoints += 1;

			PrintDebug ("Punkte: Milten + 1 für Trank");

			return;
		};

		if (Mod_Charakter != 1)
		&& (Char_Einhand.attribute[ATR_HITPOINTS] < Char_Einhand.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Einhand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Einhand, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Magie, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Magie, Char_Einhand) < 300)
		{
			Char_Einhand.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Magie, Char_Einhand);
			B_GiveInvItems	(Char_Magie, Char_Einhand, ItPo_Health, 1);
			B_UseItem	(Char_Einhand, ItPo_Health);

			MiltenPoints += 1;

			PrintDebug ("Punkte: Milten + 1 für Trank");

			return;
		};

		if (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX]/4)
		&& (hero.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(hero, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Magie, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_NpcIsDown(hero))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (C_BodyStateContains(hero, BS_STAND))
		&& (Npc_GetDistToNpc(Char_Magie, hero) < 300)
		{
			hero.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Magie, hero);
			B_GiveInvItems	(Char_Magie, hero, ItPo_Health, 1);
			B_UseItem	(hero, ItPo_Health);

			MiltenPoints += 1;

			PrintDebug ("Punkte: Milten + 1 für Trank");

			return;
		};
	};

	// Held ist nicht Bogen

	if (Mod_Charakter != 3)
	{
		// Selber versorgen wenn geschwächt und Trank dabei

		if (Char_Bogen.attribute[ATR_HITPOINTS] < Char_Bogen.attribute[ATR_HITPOINTS_MAX]/2)
		&& (Npc_HasItems(Char_Bogen, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		{
			B_UseItem	(Char_Bogen, ItPo_Health);
		};

		// Ansonsten die anderen checken (überhaupt dabei, geschwächt, wird noch nicht versorgt und hat auch keinen Trank)

		if (Mod_Charakter != 4)
		&& (Char_Magie.attribute[ATR_HITPOINTS] < Char_Magie.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Magie.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Magie, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Bogen, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Bogen, Char_Magie) < 300)
		{
			Char_Magie.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Bogen, Char_Magie);
			B_GiveInvItems	(Char_Bogen, Char_Magie, ItPo_Health, 1);
			B_UseItem	(Char_Magie, ItPo_Health);

			DiegoPoints += 1;

			PrintDebug ("Punkte: Diego + 1 für Trank");

			return;
		};

		if (Mod_Charakter != 2)
		&& (Char_Zweihand.attribute[ATR_HITPOINTS] < Char_Zweihand.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Zweihand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Zweihand, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Bogen, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Bogen, Char_Zweihand) < 300)
		{
			Char_Zweihand.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Bogen, Char_Zweihand);
			B_GiveInvItems	(Char_Bogen, Char_Zweihand, ItPo_Health, 1);
			B_UseItem	(Char_Zweihand, ItPo_Health);

			DiegoPoints += 1;

			PrintDebug ("Punkte: Diego + 1 für Trank");

			return;
		};

		if (Mod_Charakter != 1)
		&& (Char_Einhand.attribute[ATR_HITPOINTS] < Char_Einhand.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Einhand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Einhand, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Bogen, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Bogen, Char_Einhand) < 300)
		{
			Char_Einhand.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Bogen, Char_Einhand);
			B_GiveInvItems	(Char_Bogen, Char_Einhand, ItPo_Health, 1);
			B_UseItem	(Char_Einhand, ItPo_Health);

			DiegoPoints += 1;

			PrintDebug ("Punkte: Diego + 1 für Trank");

			return;
		};

		if (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX]/4)
		&& (hero.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(hero, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Bogen, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (!C_NpcIsDown(hero))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Bogen, hero) < 300)
		&& (C_BodyStateContains(hero, BS_STAND))
		{
			hero.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Bogen, hero);
			B_GiveInvItems	(Char_Bogen, hero, ItPo_Health, 1);
			B_UseItem	(hero, ItPo_Health);

			DiegoPoints += 1;

			PrintDebug ("Punkte: Diego + 1 für Trank");

			return;
		};
	};

	// Held ist nicht Zweihand

	if (Mod_Charakter != 2)
	{
		// Selber versorgen wenn geschwächt und Trank dabei

		if (Char_Zweihand.attribute[ATR_HITPOINTS] < Char_Zweihand.attribute[ATR_HITPOINTS_MAX]/2)
		&& (Npc_HasItems(Char_Zweihand, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		{
			B_UseItem	(Char_Zweihand, ItPo_Health);
		};

		// Ansonsten die anderen checken (überhaupt dabei, geschwächt, wird noch nicht versorgt und hat auch keinen Trank)

		if (Mod_Charakter != 3)
		&& (Char_Bogen.attribute[ATR_HITPOINTS] < Char_Bogen.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Bogen.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Bogen, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Zweihand, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Zweihand, Char_Bogen) < 300)
		{
			Char_Bogen.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Zweihand, Char_Bogen);
			B_GiveInvItems	(Char_Zweihand, Char_Bogen, ItPo_Health, 1);
			B_UseItem	(Char_Bogen, ItPo_Health);

			GornPoints += 1;

			PrintDebug ("Punkte: Gorn + 1 für Trank");

			return;
		};

		if (Mod_Charakter != 4)
		&& (Char_Magie.attribute[ATR_HITPOINTS] < Char_Magie.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Magie.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Magie, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Zweihand, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Zweihand, Char_Magie) < 300)
		{
			Char_Magie.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Zweihand, Char_Magie);
			B_GiveInvItems	(Char_Zweihand, Char_Magie, ItPo_Health, 1);
			B_UseItem	(Char_Magie, ItPo_Health);

			GornPoints += 1;

			PrintDebug ("Punkte: Gorn + 1 für Trank");

			return;
		};

		if (Mod_Charakter != 1)
		&& (Char_Einhand.attribute[ATR_HITPOINTS] < Char_Einhand.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Einhand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Einhand, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Zweihand, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Zweihand, Char_Einhand) < 300)
		{
			Char_Einhand.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Zweihand, Char_Einhand);
			B_GiveInvItems	(Char_Zweihand, Char_Einhand, ItPo_Health, 1);
			B_UseItem	(Char_Einhand, ItPo_Health);

			GornPoints += 1;

			PrintDebug ("Punkte: Gorn + 1 für Trank");

			return;
		};

		if (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX]/4)
		&& (hero.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(hero, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Zweihand, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_NpcIsDown(hero))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Zweihand, hero) < 300)
		&& (C_BodyStateContains(hero, BS_STAND))
		{
			hero.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Zweihand, hero);
			B_GiveInvItems	(Char_Zweihand, hero, ItPo_Health, 1);
			B_UseItem	(hero, ItPo_Health);

			GornPoints += 1;

			PrintDebug ("Punkte: Gorn + 1 für Trank");

			return;
		};
	};

	// Held ist nicht Einhand

	if (Mod_Charakter != 1)
	{
		// Selber versorgen wenn geschwächt und Trank dabei

		if (Char_Einhand.attribute[ATR_HITPOINTS] < Char_Einhand.attribute[ATR_HITPOINTS_MAX]/2)
		&& (Npc_HasItems(Char_Einhand, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		{
			B_UseItem	(Char_Einhand, ItPo_Health);
		};

		// Ansonsten die anderen checken (überhaupt dabei, geschwächt, wird noch nicht versorgt und hat auch keinen Trank)

		if (Mod_Charakter != 3)
		&& (Char_Bogen.attribute[ATR_HITPOINTS] < Char_Bogen.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Bogen.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Bogen, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Einhand, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (!Npc_IsInState(Char_Bogen, ZS_Attack))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_NpcIsDown(Char_Bogen))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Bogen, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Einhand, Char_Bogen) < 300)
		{
			Char_Bogen.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Einhand, Char_Bogen);
			B_GiveInvItems	(Char_Einhand, Char_Bogen, ItPo_Health, 1);
			B_UseItem	(Char_Bogen, ItPo_Health);

			LesterPoints += 1;

			PrintDebug ("Punkte: Lester + 1 für Trank");

			return;
		};

		if (Mod_Charakter != 2)
		&& (Char_Zweihand.attribute[ATR_HITPOINTS] < Char_Zweihand.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Zweihand.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Zweihand, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Einhand, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (!Npc_IsInState(Char_Zweihand, ZS_Attack))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Zweihand, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Einhand, Char_Zweihand) < 300)
		{
			Char_Zweihand.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Einhand, Char_Zweihand);
			B_GiveInvItems	(Char_Einhand, Char_Zweihand, ItPo_Health, 1);
			B_UseItem	(Char_Zweihand, ItPo_Health);

			LesterPoints += 1;

			PrintDebug ("Punkte: Lester + 1 für Trank");

			return;
		};

		if (Mod_Charakter != 4)
		&& (Char_Magie.attribute[ATR_HITPOINTS] < Char_Magie.attribute[ATR_HITPOINTS_MAX]/4)
		&& (Char_Magie.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(Char_Magie, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Einhand, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Einhand, Char_Magie) < 300)
		{
			Char_Einhand.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Einhand, Char_Magie);
			B_GiveInvItems	(Char_Einhand, Char_Magie, ItPo_Health, 1);
			B_UseItem	(Char_Magie, ItPo_Health);

			LesterPoints += 1;

			PrintDebug ("Punkte: Lester + 1 für Trank");

			return;
		};

		if (hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX]/4)
		&& (hero.aivar[AIV_WirdVersorgt] == FALSE)
		&& (Npc_HasItems(hero, ItPo_Health) == 0)
		&& (Npc_HasItems(Char_Einhand, ItPo_Health) == 1)
		&& (!Npc_IsInState(Char_Einhand, ZS_Attack))
		&& (!C_NpcIsDown(Char_Einhand))
		&& (!C_NpcIsDown(hero))
		&& (!C_BodyStateContains(Char_Einhand, BS_ITEMINTERACT))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (Npc_GetDistToNpc(Char_Einhand, hero) < 300)
		&& (C_BodyStateContains(hero, BS_STAND))
		{
			hero.aivar[AIV_WirdVersorgt] = TRUE;

			AI_GotoNpc	(Char_Einhand, hero);
			B_GiveInvItems	(Char_Einhand, hero, ItPo_Health, 1);
			B_UseItem	(hero, ItPo_Health);

			LesterPoints += 1;

			PrintDebug ("Punkte: Lester + 1 für Trank");

			return;
		};
	};
};