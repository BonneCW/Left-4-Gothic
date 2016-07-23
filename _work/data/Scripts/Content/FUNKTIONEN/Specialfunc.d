instance Mein_Schleifen_Trigger (oCTriggerScript);

FUNC VOID SPECIALFUNC_01 ()
{
	// Es wird gleich MEM_Timer genutzt, der muss initialisiert sein
	MEM_InitGlobalInst();

	// Triggernachricht senden
	Wld_SendTrigger ("SPECIALTRIGGER"); //ruft meineSchleifenFunktion auf

	// Funktionsteil

	if (CurrentLevel2 != 0)
	{
		if (CurrentLevel == 0) // Erster Spielstart
		{
			CurrentLevel = CurrentLevel2;

			Offline_Modus = FALSE;
			ValidateUserPasswort = 0;
		}
		else if (CurrentLevel != CurrentLevel2) // Levelwechsel
		{
			CurrentLevel = CurrentLevel2;
		}
		else	// Spielstand geladen
		{
			Offline_Modus = FALSE;
			ValidateUserPasswort = 1;

			Mod_OnlineMode = 0;

			if (STR_ToInt(online_playtime_s) > 0)
			{
				CURL_Send(ConcatStrings(ConcatStrings(ConcatStrings("http://www.teutonicteam.de/gomon/tauschen/actualizePlaytime.php?name=", username), "&game=5&time="), online_playtime_s));
			};

			online_playtime = 0;
		};

		CurrentLevel2 = 0;
	};

	if (GetInput)
	{
		if (MEM_KeyState(KEY_RETURN) == KEY_PRESSED)
		{
			B_EndEingabe();

			if (STR_Len(username) == 0)
			{
				PrintScreen	("Bitte Username eingeben", -1, 45, FONT_SCREEN, 1);

				username = eingabe;
			}
			else if (STR_Len(passwort) == 0)
			{
				PrintScreen	("Bitte Passwort eingeben", -1, 45, FONT_SCREEN, 1);

				passwort = eingabe;
			};
		}
		else
		{
			if (STR_Len(username) == 0)
			{
				PrintScreen	("Bitte Username eingeben", -1, 45, FONT_SCREEN, 1);

				eingabe = B_GetEingabe(eingabe);
			}
			else if (STR_Len(passwort) == 0)
			{
				PrintScreen	("Bitte Passwort eingeben", -1, 45, FONT_SCREEN, 1);

				eingabe = B_GetEingabe(eingabe);
			};
		};

		PrintScreen	(eingabe, -1, -1, FONT_SCREENSMALL, 1);
	};

	if (OldCPU == FALSE)
	&& (CurrentLevel != STARTRAUM_ZEN)
	{
		// Hero verfolgen, wenn er läuft oder im Kampfmodus ist

		if (C_BodyStateContains(hero, BS_RUN))
		|| (!Npc_IsInFightMode(hero, FMODE_NONE))
		{
			if (Mod_Charakter != 4)
			{
				if (Char_Magie.aivar[AIV_Moving] == FALSE)
				&& (!Npc_IsDead(Char_Magie))
				{
					B_StartOtherRoutine	(Char_Magie,	"ZIEL");
					Char_Magie.aivar[AIV_MOVING] = TRUE;
				};
			};
			if (Mod_Charakter != 3)
			{
				if (Char_Bogen.aivar[AIV_Moving] == FALSE)
				&& (!Npc_IsDead(Char_Bogen))
				{
					B_StartOtherRoutine	(Char_Bogen,	"ZIEL");
					Char_Bogen.aivar[AIV_MOVING] = TRUE;
				};
			};
			if (Mod_Charakter != 2)
			{
				if (Char_Zweihand.aivar[AIV_Moving] == FALSE)
				&& (!Npc_IsDead(Char_Zweihand))
				{
					B_StartOtherRoutine	(Char_Zweihand,	"ZIEL");
					Char_Zweihand.aivar[AIV_MOVING] = TRUE;
				};
			};
			if (Mod_Charakter != 1)
			{
				if (Char_Einhand.aivar[AIV_Moving] == FALSE)
				&& (!Npc_IsDead(Char_Einhand))
				{
					B_StartOtherRoutine	(Char_Einhand,	"ZIEL");
					Char_Einhand.aivar[AIV_MOVING] = TRUE;
				};
			};
		};

		// Trank-Management

		TrankManager();

		// ManaTrank-Management

		ManaTrankManager();

		// Wiederbelebungs-Management

		WiederbelebungsManager();

		// Wiederbelebung durchchecken

		CheckWiederbelebung();

		// Tränke entfernen und Meldung Printen, wenn zu viele Tränke gesammelt

		if (Npc_HasItems(hero, ItPo_Health) == 0)
		&& (Mod_Spawn_Trank == 1)
		{
			CreateInvItems	(hero, ItPo_Health, 1);

			Mod_Spawn_Trank = 0;
		};

		if (Npc_HasItems(hero, ItPo_Health) >= 2)
		{
			B_Say_Overlay	(hero, NULL, "$TOOMUCHPOTIONHEALTH");

			AI_DropItem	(hero, ItPo_Health);

			Mod_Spawn_Trank = 1;

			//Print	("Du kannst nur einen Trank haben!");
		};

		if (!Npc_IsInFightMode(hero, FMODE_NONE))
		{
			Char_Magie.noFocus = TRUE;
			Char_Bogen.noFocus = TRUE;
			Char_Zweihand.noFocus = TRUE;
			Char_Einhand.noFocus = TRUE;
		}
		else
		{
			Char_Magie.noFocus = FALSE;
			Char_Bogen.noFocus = FALSE;
			Char_Zweihand.noFocus = FALSE;
			Char_Einhand.noFocus = FALSE;
		};

		// Gegner markieren

		Npc_GetTarget	(hero);

		var C_NPC HeroTarget;
		HeroTarget = Hlp_GetNpc	(other);

		if (Hlp_IsValidNpc(other))
		&& (Npc_GetDistToNpc(other, hero) > FIGHT_DIST_RANGED_OUTER)
		{
			other.aivar[AIV_MARKIERT] = 5;
		};

		if (Npc_GetDistToWP(Char_Einhand, "KNAST") > 1000)
		&& (LesterKnast == 1)
		{
			AI_StandUp	(Char_Einhand);
			Npc_ClearAIQueue	(Char_Einhand);
			AI_Teleport	(Char_Einhand, "KNAST");

			LesterRettung = 0;
		};

		if (Npc_GetDistToWP(Char_Zweihand, "KNAST") > 1000)
		&& (GornKnast == 1)
		{
			AI_StandUp	(Char_Zweihand);
			Npc_ClearAIQueue	(Char_Zweihand);
			AI_Teleport	(Char_Zweihand, "KNAST");

			GornRettung = 0;
		};

		if (Npc_GetDistToWP(Char_Bogen, "KNAST") > 1000)
		&& (DiegoKnast == 1)
		{
			AI_StandUp	(Char_Bogen);
			Npc_ClearAIQueue	(Char_Bogen);
			AI_Teleport	(Char_Bogen, "KNAST");

			DiegoRettung = 0;
		};

		if (Npc_GetDistToWP(Char_Magie, "KNAST") > 1000)
		&& (MiltenKnast == 1)
		{
			AI_StandUp	(Char_Magie);
			Npc_ClearAIQueue	(Char_Magie);
			AI_Teleport	(Char_Magie, "KNAST");

			MiltenRettung = 0;
		};

		if (Npc_GetDistToWP(hero, "KNAST") > 1000)
		&& (HeroKnast == 1)
		{
			AI_StandUp	(hero);
			Npc_ClearAIQueue	(hero);
			AI_Teleport	(hero, "KNAST");
		};
	};

	ShowBars();

	// Triggerscript holen:
	var int ptr; ptr = MEM_SearchVobByName ("SPECIALTRIGGER");
	MEM_AssignInst (Mein_Schleifen_Trigger, ptr);
	
	Mein_Schleifen_Trigger._zCVob_nextOnTimer = MEM_Timer.totalTimeFloat; //wäre eigentlich jetzt schon wieder dran, wird aber erst im nächsten Frame bemerkt
};