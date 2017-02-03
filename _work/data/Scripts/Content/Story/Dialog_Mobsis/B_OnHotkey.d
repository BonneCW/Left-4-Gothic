////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
///
///		Script functions for HOTKEYS (called by the engine)
///
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

// Hotkey M

func int PLAYER_HOTKEY_SCREEN_MAP()
{
	//B_ENDPRODUCTIONDIALOG();
	//Mod_InMenu = FALSE;
};

// Hotkey P

func void PLAYER_HOTKEY_LAME_POTION()
{
	/*if (Mod_InMenu == FALSE) {
		PLAYER_MOBSI_PRODUCTION	= MOBSI_MONOLOG;

		Mod_InMenu = TRUE;

		AI_ProcessInfos (hero);
	};*/
};

// Hotkey H

func void PLAYER_HOTKEY_LAME_HEAL ()
{
	var C_NPC HealObject;

	Npc_GetTarget(hero);

	HealObject = Hlp_GetNpc(other);

	if (!C_NpcIsdown(HealObject))
	&& (!Npc_IsInState(HealObject, ZS_Attack))
	&& (!C_BodyStateContains(HealObject, BS_ITEMINTERACT))
	&& (HealObject.aivar[AIV_WirdVersorgt] == FALSE)
	&& (Npc_HasItems(hero, ItPo_Health) == 1)
	&& (Npc_HasItems(HealObject, ItPo_Health) == 0)
	&& (HealObject.attribute[ATR_HITPOINTS] <= HealObject.attribute[ATR_HITPOINTS_MAX]/2)
	&& (Npc_GetDistToNpc(hero, HealObject) < 300)
	{
		HealObject.aivar[AIV_WirdVersorgt] = TRUE;
		B_GiveInvItems	(hero, HealObject, ItPo_Health, 1);
		B_UseItem	(HealObject, ItPo_Health);

		if (hero.voice == 3)
		{
			MiltenPoints += 1;
		}
		else if (hero.voice == 11)
		{
			DiegoPoints += 1;
		}
		else if (hero.voice == 12)
		{
			GornPoints += 1;
		}
		else if (hero.voice == 13)
		{
			LesterPoints += 1;
		};
	}
	else if (Hlp_IsValidNpc(HealObject))
	{
		if (Npc_IsInState(HealObject, ZS_Attack))
		{
			B_Say_Overlay	(hero, NULL, "$CANTGIVEPOTIONATTACK");
		}
		else if (C_BodyStateContains(HealObject, BS_ITEMINTERACT))
		{
			B_Say_Overlay	(hero, NULL, "$CANTGIVEPOTIONPOTION");
		}
		else if (HealObject.aivar[AIV_WirdVersorgt] == TRUE)
		{
			B_Say_Overlay	(hero, NULL, "$CANTGIVEPOTIONOTHERONE");
		}
		else if (Npc_HasItems(hero, ItPo_Health) == 0)
		{
			B_Say_Overlay	(hero, NULL, "$CANTGIVEPOTIONDONTHAVEPOTION");
		}
		else if (Npc_HasItems(HealObject, ItPo_Health) == 1)
		{
			B_Say_Overlay	(hero, NULL, "$CANTGIVEPOTIONHASPOTION");
		}
		else if (HealObject.attribute[ATR_HITPOINTS] > HealObject.attribute[ATR_HITPOINTS_MAX]/2)
		{
			B_Say_Overlay	(hero, NULL, "$CANTGIVEPOTIONHASHP");
		}
		else if (Npc_GetDistToNpc(hero, HealObject) >= 300)
		{
			B_Say_Overlay	(hero, NULL, "$CANTGIVEPOTIONTOOFAR");
		};
	};

	if (!Hlp_IsValidNpc(HealObject))
	{
		if (Npc_GetDistToNpc(hero, Magier) < 200)
		&& (Npc_IsInState(Magier, ZS_Unconscious))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (Magier.aivar[AIV_WirdVersorgt] == FALSE)
		{
			Magier.aivar[AIV_WirdVersorgt] = 5;
			Magier.aivar[AIV_Versorgungszeit] = 0;

			AI_PlayAni	(hero, "T_PLUNDER");

			if (hero.voice == 3)
			{
				MiltenPoints += 2;
			}
			else if (hero.voice == 11)
			{
				DiegoPoints += 2;
			}
			else if (hero.voice == 12)
			{
				GornPoints += 2;
			}
			else if (hero.voice == 13)
			{
				LesterPoints += 2;
			};
		}
		else if (Npc_GetDistToNpc(hero, Bogenschuetze) < 200)
		&& (Npc_IsInState(Bogenschuetze, ZS_Unconscious))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (Bogenschuetze.aivar[AIV_WirdVersorgt] == FALSE)
		{
			Bogenschuetze.aivar[AIV_WirdVersorgt] = 5;
			Bogenschuetze.aivar[AIV_Versorgungszeit] = 0;

			AI_PlayAni	(hero, "T_PLUNDER");

			if (hero.voice == 3)
			{
				MiltenPoints += 2;
			}
			else if (hero.voice == 11)
			{
				DiegoPoints += 2;
			}
			else if (hero.voice == 12)
			{
				GornPoints += 2;
			}
			else if (hero.voice == 13)
			{
				LesterPoints += 2;
			};
		}
		else if (Npc_GetDistToNpc(hero, Zweihandkaempfer) < 200)
		&& (Npc_IsInState(Zweihandkaempfer, ZS_Unconscious))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (Zweihandkaempfer.aivar[AIV_WirdVersorgt] == FALSE)
		{
			Zweihandkaempfer.aivar[AIV_WirdVersorgt] = 5;
			Zweihandkaempfer.aivar[AIV_Versorgungszeit] = 0;

			AI_PlayAni	(hero, "T_PLUNDER");

			if (hero.voice == 3)
			{
				MiltenPoints += 2;
			}
			else if (hero.voice == 11)
			{
				DiegoPoints += 2;
			}
			else if (hero.voice == 12)
			{
				GornPoints += 2;
			}
			else if (hero.voice == 13)
			{
				LesterPoints += 2;
			};
		}
		else if (Npc_GetDistToNpc(hero, Einhandkaempfer) < 200)
		&& (Npc_IsInState(Einhandkaempfer, ZS_Unconscious))
		&& (!C_BodyStateContains(hero, BS_ITEMINTERACT))
		&& (Einhandkaempfer.aivar[AIV_WirdVersorgt] == FALSE)
		{
			Einhandkaempfer.aivar[AIV_WirdVersorgt] = 5;
			Einhandkaempfer.aivar[AIV_Versorgungszeit] = 0;

			AI_PlayAni	(hero, "T_PLUNDER");

			if (hero.voice == 3)
			{
				MiltenPoints += 2;
			}
			else if (hero.voice == 11)
			{
				DiegoPoints += 2;
			}
			else if (hero.voice == 12)
			{
				GornPoints += 2;
			}
			else if (hero.voice == 13)
			{
				LesterPoints += 2;
			};
		};
	};
};
