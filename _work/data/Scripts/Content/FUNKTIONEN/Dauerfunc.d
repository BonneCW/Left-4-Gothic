FUNC VOID DAUERFUNC_01 ()
{
	var int Randi;

	// Spielstart erstmal Username eingeben

	var int Mod_OnlineMode2;
	Mod_OnlineMode2 = STR_ToInt(MEM_GetGothOpt("L4G", "online"));

	if (Mod_OnlineMode2 == 0)
	&& (Mod_OnlineMode == 1)
	{
		// wurde umgeschalten von Offline auf Online

		ValidateUserPasswort = 1;

		Mod_OnlineMode = 0;

		Offline_Modus = 0;
	};

	if (Mod_OnlineMode2 == 1)
	&& (Mod_OnlineMode == 0)
	{
		// wurde umgeschalten von Online auf Offline

		B_EndGame();

		Mod_OnlineMode = 1;

		Offline_Modus = 1;
	};

	if (GetInput == 0)
	&& (ValidateUserPasswort < 3)
	&& (Mod_OnlineMode == 0)
	{
		if (STR_Len(username) == 0)
		&& (STR_Len(eingabe) == 0)
		&& (Offline_Modus == 0)
		{
			B_StartEingabe();

			PrintScreen	("Bitte Username eingeben", -1, 45, FONT_SCREEN, 5);
		}
		else if (STR_Len(passwort) == 0)
		&& (STR_Len(eingabe) == 0)
		&& (Offline_Modus == 0)
		{
			B_StartEingabe();

			PrintScreen	("Bitte Passwort eingeben", -1, 45, FONT_SCREEN, 5);
		}
		else
		{
			eingabe = "";
		};

		if (STR_Len(passwort) > 1)
		&& (STR_Len(username) > 1)
		&& (ValidateUserPasswort == 0)
		&& (Offline_Modus == 0)
		{
			ValidateUserPasswort = TRUE;
		};

		if (STR_Len(username) > 1)
		&& (STR_Len(eingabe) > 0)
		&& (STR_Len(passwort) <= 1)
		{
			eingabe = "";
		};

		if (validateUserPasswort == 2)
		{
			validateUserPasswort = 3;
		};

		if (validateUserPasswort == 1)
		{
			eingabe = "";
			var string testup;
			testup = ConcatStrings("http://www.teutonicteam.de/gomon/tauschen/validatePW.php?name=", username);
			testup = ConcatStrings(testup, "&passwort=");
			testup = ConcatStrings(testup, passwort);
			testup = ConcatStrings(testup, "&game=5");

			eingabe = CURL_Get(testup);

			validateUserPasswort = 2;

			if (STR_GetCharAt(eingabe, 0) == STR_GetCharAt("Y", 0))
			{
				PrintScreen	("Passwort korrekt", -1, 55, FONT_SCREEN, 2);

				var int release;
				var int beta;

				eingabe = STR_Tok(eingabe, ";");
				eingabe = STR_Tok("NULL", ";"); // für Releaseversionen

				release = STR_ToInt(eingabe);

				eingabe = STR_Tok("NULL", ";"); // für Betas

				beta = STR_ToInt(eingabe);

				if (release > 043)
				{
					PrintScreen	("Neuere Version erhältlich!", -1, 60, FONT_SCREEN, 10);
				};

				MEM_SetGothOpt("CLOCKWORK", "username", username);
				MEM_SetGothOpt("CLOCKWORK", "passwort", passwort);
			}
			else if (STR_GetCharAt(eingabe, 0) == STR_GetCharAt("N", 0))
			{
				PrintScreen	("Passwort falsch", -1, 55, FONT_SCREEN, 2);

				MEM_SetGothOpt("CLOCKWORK", "username", "0");
				MEM_SetGothOpt("CLOCKWORK", "passwort", "0");

				username = "";
				passwort = "";

				eingabe = "";

				validateUserPasswort = 0;
			}
			else if (STR_GetCharAt(eingabe, 0) == STR_GetCharAt("E", 0))
			{
				PrintScreen	("Verbindung kann zur Zeit nicht hergestellt werden!", -1, 55, FONT_SCREEN, 2);
				PrintScreen	("Spiel jetzt im Offline-Modus", -1, 60, FONT_SCREEN, 2);

				eingabe = "";

				Offline_Modus = 1;
			}
			else if (STR_GetCharAt(eingabe, 0) == STR_GetCharAt("B", 0))
			{
				PrintScreen	("Dein Account wurde gebannt!", -1, 55, FONT_SCREEN, 2);
				PrintScreen	("Spiel jetzt im Offline-Modus", -1, 60, FONT_SCREEN, 2);

				eingabe = "";

				Offline_Modus = 1;
			}
			else
			{
				PrintScreen	("Unbekannter Fehler", -1, 55, FONT_SCREEN, 2);

				eingabe = "";

				Offline_Modus = 1;
			};
		};
	};

	if (online_playtime >= 1800)
	&& (Offline_Modus == 0)
	{
		CURL_Send(ConcatStrings(ConcatStrings(ConcatStrings("http://www.teutonicteam.de/gomon/tauschen/actualizePlaytime.php?name=", username), "&game=5&time="), IntToString(online_playtime)));
		online_playtime = 0;
	};

	online_playtime += 1;
	online_playtime_s = IntToString(online_playtime);

	// Im Startraum den Konfigurationsmonolog starten

	if (CurrentLevel == STARTRAUM_ZEN)
	&& ((ValidateUserPasswort == 3)
	|| (Mod_OnlineMode == 1))
	{
		if (Mod_InMenu == FALSE)
		{
			PLAYER_MOBSI_PRODUCTION	= MOBSI_MONOLOG;

			Mod_InMenu = TRUE;

			AI_ProcessInfos (hero);
		};
	};

	if (CurrentLevel != STARTRAUM_ZEN)
	{
		// Falls die NPC's zu weit weg vom Hero sind wegen irgendeinem Fehler, dann hin teleportieren

		if (Npc_GetDistToNpc(Char_Magie, hero) > 5000)
		&& (!C_NpcIsDown(Char_Magie))
		&& (MiltenWait == FALSE)
		&& (MiltenKnast == 0)
		&& (HeroKnast == 0)
		{
			AI_Teleport	(Char_Magie, "PC_HERO");
		};
		if (Npc_GetDistToNpc(Char_Bogen, hero) > 5000)
		&& (!C_NpcIsDown(Char_Bogen))
		&& (DiegoWait == FALSE)
		&& (DiegoKnast == 0)
		&& (HeroKnast == 0)
		{
			AI_Teleport	(Char_Bogen, "PC_HERO");
		};
		if (Npc_GetDistToNpc(Char_Zweihand, hero) > 5000)
		&& (!C_NpcIsDown(Char_Zweihand))
		&& (GornWait == FALSE)
		&& (GornKnast == 0)
		&& (HeroKnast == 0)
		{
			AI_Teleport	(Char_Zweihand, "PC_HERO");
		};
		if (Npc_GetDistToNpc(Char_Einhand, hero) > 5000)
		&& (!C_NpcIsDown(Char_Einhand))
		&& (LesterWait == FALSE)
		&& (LesterKnast == 0)
		&& (HeroKnast == 0)
		{
			AI_Teleport	(Char_Einhand, "PC_HERO");
		};
		
	};

	if (CurrentLevel != STARTRAUM_ZEN)
	{
		// Special-Events, wenn der Hero ewig rumsteht und nichts tut

		if (C_BodyStateContains(hero, BS_STAND))
		{
			Mod_StillStandTime += 1;

			if (Mod_StillStandTime == 300)
			{
				Randi = Hlp_Random(4)+1;

				if (Randi == 1)
				&& (Mod_Charakter != 1)
				{
					B_Say_Overlay	(Char_Einhand, hero, "$STANDING");
				}
				else if (Randi == 2)
				&& (Mod_Charakter != 2)
				{
					B_Say_Overlay	(Char_Zweihand, hero, "$STANDING");
				}
				else if (Randi == 3)
				&& (Mod_Charakter != 3)
				{
					B_Say_Overlay	(Char_Bogen, hero, "$STANDING");
				}
				else if (Randi == 4)
				&& (Mod_Charakter != 4)
				{
					B_Say_Overlay	(Char_Magie, hero, "$STANDING");
				}
				else
				{
					B_Say_Overlay	(hero, Char_Magie, "$STANDING");
				};
			};
			if (Mod_StillStandTime == 420)
			{
				Randi = Hlp_Random(7)+1;

				if (Randi == 1)
				{
					Wld_SpawnNpcRange	(hero, Tank, 1, 1000);

					Monster_Max += 1;
				}
				else if (Randi == 2)
				{
					Wld_SpawnNpcRange	(hero, Boomer, 1, 1000);

					Monster_Max += 1;
				}
				else if (Randi == 3)
				{
					Wld_SpawnNpcRange	(hero, Witch, 1, 1000);	

					Monster_Max += 1;			
				}
				else if (Randi == 4)
				{
					Wld_SpawnNpcRange	(hero, Hunter, 1, 1000);

					Monster_Max += 1;				
				}
				else if (Randi == 5)
				{
					Wld_SpawnNpcRange	(hero, Hordenfuehrer, 1, 1000);

					Monster_Max += 1;				
				};
			};
		}
		else
		{
			Mod_StillStandTime = 0;
		};

		// Wenn Köcher und Diego, dann Pfeile einfügen

		if (Npc_HasItems(hero, ItMi_Koecher) > 0)
		{
			B_Say_Overlay	(hero, NULL, "$TOOKKOECHER");

			if (Mod_Charakter == 3)
			{
				Npc_RemoveInvItems	(hero, ItMi_Koecher, 1);
				CreateInvItems	(hero, ItRw_Arrow, 50);
			}
			else
			{
				AI_DropItem	(hero, ItMi_Koecher);

				//Print ("Köcher sind nicht für dich bestimmt!");
			};
		};

		if (Npc_HasItems(Char_Bogen, ItMi_Koecher) > 0)
		{
			B_Say_Overlay	(Char_Bogen, NULL, "$TOOKKOECHER");

			Npc_RemoveInvItems	(Char_Bogen, ItMi_Koecher, 1);
			CreateInvItems	(Char_Bogen, ItRw_Arrow, 50);
		};

		// Anzeigen für die Charaktere

		// Lester

		if ((Npc_IsDead(Char_Einhand))
		&& (Mod_Charakter != 1))
		|| ((Npc_IsDead(hero))
		&& (Mod_Charakter == 1))
		{
			ShowLester = "";
		}
		else if ((Npc_IsInState(Char_Einhand, ZS_Unconscious))
		&& (Mod_Charakter != 1))
		|| ((Npc_IsInState(hero, ZS_Unconscious))
		&& (Mod_Charakter == 1))
		{
			ShowLester = "l";
		}
		else
		{
			ShowLester = "L";
		};

		if ((Npc_HasItems(Char_Einhand, ItPo_Health) == 1)
		&& (Mod_Charakter != 1))
		|| ((Npc_HasItems(hero, ItPo_Health) == 1)
		&& (Mod_Charakter == 1))
		{
			ShowLester = ConcatStrings(ShowLester, "T");
		}
		else
		{
			//ShowLester = ConcatStrings(ShowLester, ", kein Heiltrank");
		};

		// Gorn

		if ((Npc_IsDead(Char_Zweihand))
		&& (Mod_Charakter != 2))
		|| ((Npc_IsDead(hero))
		&& (Mod_Charakter == 2))
		{
			ShowGorn = "";
		}
		else if ((Npc_IsInState(Char_Zweihand, ZS_Unconscious))
		&& (Mod_Charakter != 2))
		|| ((Npc_IsInState(hero, ZS_Unconscious))
		&& (Mod_Charakter == 2))
		{
			ShowGorn = "g";
		}
		else
		{
			ShowGorn = "G";
		};

		if ((Npc_HasItems(Char_Zweihand, ItPo_Health) == 1)
		&& (Mod_Charakter != 2))
		|| ((Npc_HasItems(hero, ItPo_Health) == 1)
		&& (Mod_Charakter == 2))
		{
			ShowGorn = ConcatStrings(ShowGorn, "T");
		}
		else
		{
			//ShowGorn = ConcatStrings(ShowGorn, ", kein Heiltrank");
		};

		// Diego

		if ((Npc_IsDead(Char_Bogen))
		&& (Mod_Charakter != 3))
		|| ((Npc_IsDead(hero))
		&& (Mod_Charakter == 3))
		{
			ShowDiego = "";
		}
		else if ((Npc_IsInState(Char_Bogen, ZS_Unconscious))
		&& (Mod_Charakter != 3))
		|| ((Npc_IsInState(hero, ZS_Unconscious))
		&& (Mod_Charakter == 3))
		{
			ShowDiego = "d";
		}
		else
		{
			ShowDiego = "D";
		};

		if ((Npc_HasItems(Char_Bogen, ItPo_Health) == 1)
		&& (Mod_Charakter != 3))
		|| ((Npc_HasItems(hero, ItPo_Health) == 1)
		&& (Mod_Charakter == 3))
		{
			ShowDiego = ConcatStrings(ShowDiego, "T");
		}
		else
		{
			//ShowDiego = ConcatStrings(ShowDiego, ", kein Heiltrank");
		};

		// Milten

		if ((Npc_IsDead(Char_Magie))
		&& (Mod_Charakter != 4))
		|| ((Npc_IsDead(hero))
		&& (Mod_Charakter == 4))
		{
			ShowMilten = "";
		}
		else if ((Npc_IsInState(Char_Magie, ZS_Unconscious))
		&& (Mod_Charakter != 4))
		|| ((Npc_IsInState(hero, ZS_Unconscious))
		&& (Mod_Charakter == 4))
		{
			ShowMilten = "m";
		}
		else
		{
			ShowMilten = "M";
		};

		if ((Npc_HasItems(Char_Magie, ItPo_Health) == 1)
		&& (Mod_Charakter != 4))
		|| ((Npc_HasItems(hero, ItPo_Health) == 1)
		&& (Mod_Charakter == 4))
		{
			ShowMilten = ConcatStrings(ShowMilten, "T");
		}
		else
		{
			//ShowMilten = ConcatStrings(ShowMilten, ", kein Heiltrank");
		};

		// Dynamische Rangliste

		if (Mod_Punkte == 1)
		|| (Mod_Punkte == 2)
		{
			if (DiegoPoints >= GornPoints)			// Diego Platz 1
			&& (DiegoPoints >= LesterPoints)
			&& (DiegoPoints >= MiltenPoints)
			{
				DiegoPos = Pos1;

				if (GornPoints >= LesterPoints)
				&& (GornPoints >= MiltenPoints)
				{
					GornPos = Pos2;

					if (LesterPoints >= MiltenPoints)
					{
						LesterPos = Pos3;
						MiltenPos = Pos4;
					}
					else
					{
						MiltenPos = Pos3;
						LesterPos = Pos4;
					};
				}
				else if (GornPoints >= LesterPoints)
				&& (GornPoints < MiltenPoints)
				{
					MiltenPos = Pos2;
					GornPos = Pos3;
					LesterPos = Pos4;
				}
				else if (GornPoints >= MiltenPoints)
				&& (GornPoints < MiltenPoints)
				{
					LesterPos = Pos2;
					GornPos = Pos3;
					MiltenPos = Pos4;
				}
				else
				{
					GornPos = Pos4;

					if (LesterPoints >= MiltenPoints)
					{
						LesterPos = Pos2;
						MiltenPos = Pos3;
					}
					else
					{
						MiltenPos = Pos2;
						LesterPos = Pos3;
					};
				};
			}
			else if (GornPoints >= DiegoPoints)		// Gorn Platz 1
			&& (GornPoints >= LesterPoints)
			&& (GornPoints >= MiltenPoints)
			{
				GornPos = Pos1;

				if (DiegoPoints >= LesterPoints)
				&& (DiegoPoints >= MiltenPoints)
				{
					DiegoPos = Pos2;

					if (LesterPoints >= MiltenPoints)
					{
						LesterPos = Pos3;
						MiltenPos = Pos4;
					}
					else
					{
						MiltenPos = Pos3;
						LesterPos = Pos4;
					};
				}
				else if (DiegoPoints >= LesterPoints)
				&& (DiegoPoints < MiltenPoints)
				{
					MiltenPos = Pos2;
					DiegoPos = Pos3;
					LesterPos = Pos4;
				}
				else if (DiegoPoints >= MiltenPoints)
				&& (DiegoPoints < LesterPoints)
				{
					LesterPos = Pos2;
					DiegoPos = Pos3;
					MiltenPos = Pos4;
				}
				else
				{
					DiegoPos = Pos4;

					if (LesterPoints >= MiltenPoints)
					{
						LesterPos = Pos2;
						MiltenPos = Pos3;
					}
					else
					{
						MiltenPos = Pos2;
						LesterPos = Pos3;
					};
				};
			}
			else if (LesterPoints >= GornPoints)		// Lester Platz 1
			&& (LesterPoints >= DiegoPoints)
			&& (LesterPoints >= MiltenPoints)
			{
				LesterPos = Pos1;

				if (DiegoPoints >= GornPoints)
				&& (DiegoPoints >= MiltenPoints)
				{
					DiegoPos = Pos2;

					if (GornPoints >= MiltenPoints)
					{
						GornPos = Pos3;
						MiltenPos = Pos4;
					}
					else
					{
						MiltenPos = Pos3;
						GornPos = Pos4;
					};
				}
				else if (DiegoPoints >= GornPoints)
				&& (DiegoPoints < MiltenPoints)
				{
					MiltenPos = Pos2;
					DiegoPos = Pos3;
					GornPos = Pos4;
				}
				else if (DiegoPoints >= MiltenPoints)
				&& (DiegoPoints < GornPoints)
				{
					GornPos = Pos2;
					DiegoPos = Pos3;
					MiltenPos = Pos4;
				}
				else
				{
					DiegoPos = Pos4;

					if (GornPoints >= MiltenPoints)
					{
						GornPos = Pos2;
						MiltenPos = Pos3;
					}
					else
					{
						MiltenPos = Pos2;
						GornPos = Pos3;
					};
				};
			}
			else if (MiltenPoints >= GornPoints)		// Milten Platz 1
			&& (MiltenPoints >= LesterPoints)
			&& (MiltenPoints >= DiegoPoints)
			{
				MiltenPos = Pos1;

				if (DiegoPoints >= LesterPoints)
				&& (DiegoPoints >= GornPoints)
				{
					DiegoPos = Pos2;

					if (LesterPoints >= GornPoints)
					{
						LesterPos = Pos3;
						GornPos = Pos4;
					}
					else
					{
						GornPos = Pos3;
						LesterPos = Pos4;
					};
				}
				else if (DiegoPoints >= LesterPoints)
				&& (DiegoPoints < GornPoints)
				{
					GornPos = Pos2;
					DiegoPos = Pos3;
					LesterPos = Pos4;
				}
				else if (DiegoPoints >= GornPoints)
				&& (DiegoPoints < LesterPoints)
				{
					LesterPos = Pos2;
					DiegoPos = Pos3;
					GornPos = Pos4;
				}
				else
				{
					DiegoPos = Pos4;

					if (LesterPoints >= GornPoints)
					{
						LesterPos = Pos2;
						GornPos = Pos3;
					}
					else
					{
						GornPos = Pos2;
						LesterPos = Pos3;
					};
				};
			};

			/*ShowLester = ConcatStrings(ShowLester, ", Punkte: ");
			ShowLester = ConcatStrings(ShowLester, IntToString(LesterPoints));
			ShowGorn = ConcatStrings(ShowGorn, ", Punkte: ");
			ShowGorn = ConcatStrings(ShowGorn, IntToString(GornPoints));
			ShowDiego = ConcatStrings(ShowDiego, ", Punkte: ");
			ShowDiego = ConcatStrings(ShowDiego, IntToString(DiegoPoints));
			ShowMilten = ConcatStrings(ShowMilten, ", Punkte: ");
			ShowMilten = ConcatStrings(ShowMilten, IntToString(MiltenPoints));*/
		}
		else
		{
			DiegoPos = Pos1;
			GornPos = Pos2;
			LesterPos = Pos3;
			MiltenPos = Pos4;
		};

		PrintScreen	(ShowLester, 2, LesterPos, Font_Icon, 2);
		PrintScreen	(ShowGorn, 2, GornPos, Font_Icon, 2);
		PrintScreen	(ShowDiego, 2, DiegoPos, Font_Icon, 2);
		PrintScreen	(ShowMilten, 2, MiltenPos, Font_Icon, 2);

		if (Mod_Punkte == 1)
		|| (Mod_Punkte == 3)
		{
			ShowLester = ConcatStrings("Punkte: ", IntToString(LesterPoints));
			ShowGorn = ConcatStrings("Punkte: ", IntToString(GornPoints));
			ShowDiego = ConcatStrings("Punkte: ", IntToString(DiegoPoints));
			ShowMilten = ConcatStrings("Punkte: ", IntToString(MiltenPoints));

			PrintScreen	(ShowLester, 9, LesterPos+4, Font_ScreenSmall, 2);
			PrintScreen	(ShowGorn, 9, GornPos+4, Font_ScreenSmall, 2);
			PrintScreen	(ShowDiego, 9, DiegoPos+4, Font_ScreenSmall, 2);
			PrintScreen	(ShowMilten, 9, MiltenPos+4, Font_ScreenSmall, 2);
		};

		// Anzeige für Monster einblenden

		ShowMonsterCounter = ConcatStrings(IntToString(Monster_Counter), " von ");
		ShowMonsterCounter = ConcatStrings(ShowMonsterCounter, IntToString(Monster_Max));
		ShowMonsterCounter = ConcatStrings(ShowMonsterCounter, " Infizierten getötet");

		PrintScreen	(ShowMonsterCounter, 2, 38, Font_ScreenSmall, 2);

		// Sieg!-Meldung printen, wenn alle Gegner tot -- buggy oder wenn am ZIEL-WP -- nicht buggy

		if ((Monster_Counter == Monster_Max)
		|| (Npc_GetDistToWP(hero, "ZIEL") < 500))
		{
			EndCounter += 1;

			if (EndCounter == 1)
			{
				PrintScreen ("Sieg!", -1, YPOS_LevelUp, FONT_Screen, 4);

				AI_Wait	(hero, 2);
			};

			if (EndCounter == 2)
			{
				if (Offline_Modus == 0)
				{
					var int HeroPoints;

					if (Mod_Charakter == 1)
					{
						HeroPoints = LesterPoints;
					}
					else if (Mod_Charakter == 2)
					{
						HeroPoints = GornPoints;
					}
					else if (Mod_Charakter == 3)
					{
						HeroPoints = DiegoPoints;
					}
					else if (Mod_Charakter == 4)
					{
						HeroPoints = MiltenPoints;
					};

					HeroPoints = HeroPoints*Mod_Schwierigkeitsgrad;

					CURL_Send(ConcatStrings(ConcatStrings(ConcatStrings("http://www.teutonicteam.de/gomon/tauschen/addL4GChar.php?name=", username), "&char="), IntToString(Mod_Charakter)));

					if (CurrentLevel == TESTLEVEL_ZEN)
					{
						CURL_Send(ConcatStrings(ConcatStrings(ConcatStrings(ConcatStrings("http://www.teutonicteam.de/highscores/insert.php?name=", username), "&points="), IntToString(HeroPoints)), "&id=18&version=040"));
					}
					else if (CurrentLevel == KAMPAGNEONE_ZEN)
					{
						CURL_Send(ConcatStrings(ConcatStrings(ConcatStrings(ConcatStrings("http://www.teutonicteam.de/highscores/insert.php?name=", username), "&points="), IntToString(HeroPoints)), "&id=19&version=040"));
					};
				};
			};

			if (EndCounter == 3)
			{
				B_EndGame();

				ExitSession ();
			};
		};

		// Niederlage!-Meldung printen, wenn alle gefangen wurden

		if ((HeroKnast == 1)
		|| (C_NpcIsDown(hero)))
		&& ((hero.voice == 3)
		|| (MiltenKnast == 1)
		|| (C_NpcIsDown(Char_Magie)))
		&& ((hero.voice == 11)
		|| (DiegoKnast == 1)
		|| (C_NpcIsDown(Char_Bogen)))
		&& ((hero.voice == 12)
		|| (GornKnast == 1)
		|| (C_NpcIsDown(Char_Zweihand)))
		&& ((hero.voice == 13)
		|| (LesterKnast == 1)
		|| (C_NpcIsDown(Char_Einhand)))
		{
			EndCounter += 1;

			if (EndCounter == 1)
			{
				PrintScreen ("Niederlage!", -1, YPOS_LevelUp, FONT_Screen, 4);

				AI_Wait	(hero, 2);
			};

			if (EndCounter == 2)
			{
				if (Offline_Modus == 0)
				{
					CURL_Send(ConcatStrings(ConcatStrings(ConcatStrings("http://www.teutonicteam.de/gomon/tauschen/addL4GChar.php?name=", username), "&char="), IntToString(Mod_Charakter)));
				};
			};

			if (EndCounter == 3)
			{
				B_EndGame();

				ExitSession ();
			};
		};

		// Meldung, dass fremde Waffe gefunden, resetten

		if (Mod_Lester_FirstWeapon > 0)
		{
			Mod_Lester_FirstWeapon -= 1;
		};

		if (Mod_Gorn_FirstWeapon > 0)
		{
			Mod_Gorn_FirstWeapon -= 1;
		};

		if (Mod_Diego_FirstWeapon > 0)
		{
			Mod_Diego_FirstWeapon -= 1;
		};

		if (Mod_Milten_FirstWeapon > 0)
		{
			Mod_Milten_FirstWeapon -= 1;
		};

		if (Mod_Diego_SecondWeapon > 0)
		{
			Mod_Diego_SecondWeapon -= 1;
		};

		if (Mod_Milten_SecondWeapon > 0)
		{
			Mod_Milten_SecondWeapon -= 1;
		};

		// Ambient-Sätze nach einiger Zeit des Nichtspassierens

		if ((!Npc_IsInState(Char_Einhand, ZS_Attack))
		|| (Mod_Charakter == 1))
		&& ((!Npc_IsInState(Char_Zweihand, ZS_Attack))
		|| (Mod_Charakter == 2))
		&& ((!Npc_IsInState(Char_Bogen, ZS_Attack))
		|| (Mod_Charakter == 3))
		&& ((!Npc_IsInState(Char_Magie, ZS_Attack))
		|| (Mod_Charakter == 4))
		&& (((!C_NpcIsDown(Char_Einhand))
		&& (Mod_Charakter != 1))
		|| (!C_NpcIsDown(hero)))
		&& (((!C_NpcIsDown(Char_Zweihand))
		&& (Mod_Charakter != 2))
		|| (!C_NpcIsDown(hero)))
		&& (((!C_NpcIsDown(Char_Bogen))
		&& (Mod_Charakter != 3))
		|| (!C_NpcIsDown(hero)))
		&& (((!C_NpcIsDown(Char_Magie))
		&& (Mod_Charakter != 4))
		|| (!C_NpcIsDown(hero)))
		{
			Mod_NothingHappened_Counter += 1;

			if (Mod_NothingHappened_Counter == 30)
			{
				Mod_NothingHappened_Counter = 0;

				Randi = Hlp_Random(10);

				if (Randi == 0)
				{
					Randi = Hlp_Random(4)+1;

					if (Randi == 1)
					&& (Mod_Charakter != 1)
					{
						B_Say_Overlay	(Char_Einhand, NULL, "$AMBIENTTALK01");
					}
					else if (Randi == 2)
					&& (Mod_Charakter != 2)
					{
						B_Say_Overlay	(Char_Zweihand, NULL, "$AMBIENTTALK01");
					}
					else if (Randi == 3)
					&& (Mod_Charakter != 3)
					{
						B_Say_Overlay	(Char_Bogen, NULL, "$AMBIENTTALK01");
					}
					else if (Randi == 4)
					&& (Mod_Charakter != 4)
					{
						B_Say_Overlay	(Char_Magie, NULL, "$AMBIENTTALK01");
					}
					else
					{
						B_Say_Overlay	(hero, NULL, "$AMBIENTTALK01");
					};
				}
				else if (Randi == 1)
				{
					Randi = Hlp_Random(4)+1;

					if (Randi == 1)
					&& (Mod_Charakter != 1)
					{
						B_Say_Overlay	(Char_Einhand, NULL, "$AMBIENTTALK02");
					}
					else if (Randi == 2)
					&& (Mod_Charakter != 2)
					{
						B_Say_Overlay	(Char_Zweihand, NULL, "$AMBIENTTALK02");
					}
					else if (Randi == 3)
					&& (Mod_Charakter != 3)
					{
						B_Say_Overlay	(Char_Bogen, NULL, "$AMBIENTTALK02");
					}
					else if (Randi == 4)
					&& (Mod_Charakter != 4)
					{
						B_Say_Overlay	(Char_Magie, NULL, "$AMBIENTTALK02");
					}
					else
					{
						B_Say_Overlay	(hero, NULL, "$AMBIENTTALK02");
					};
				}
				else if (Randi == 2)
				{
					Randi = Hlp_Random(4)+1;

					if (Randi == 1)
					&& (Mod_Charakter != 1)
					{
						B_Say_Overlay	(Char_Einhand, NULL, "$AMBIENTTALK03");
					}
					else if (Randi == 2)
					&& (Mod_Charakter != 2)
					{
						B_Say_Overlay	(Char_Zweihand, NULL, "$AMBIENTTALK03");
					}
					else if (Randi == 3)
					&& (Mod_Charakter != 3)
					{
						B_Say_Overlay	(Char_Bogen, NULL, "$AMBIENTTALK03");
					}
					else if (Randi == 4)
					&& (Mod_Charakter != 4)
					{
						B_Say_Overlay	(Char_Magie, NULL, "$AMBIENTTALK03");
					}
					else
					{
						B_Say_Overlay	(hero, NULL, "$AMBIENTTALK03");
					};
				}
				else if (Randi == 3)
				{
					Randi = Hlp_Random(4)+1;

					if (Randi == 1)
					&& (Mod_Charakter != 1)
					{
						B_Say_Overlay	(Char_Einhand, NULL, "$AMBIENTTALK04");
					}
					else if (Randi == 2)
					&& (Mod_Charakter != 2)
					{
						B_Say_Overlay	(Char_Zweihand, NULL, "$AMBIENTTALK04");
					}
					else if (Randi == 3)
					&& (Mod_Charakter != 3)
					{
						B_Say_Overlay	(Char_Bogen, NULL, "$AMBIENTTALK04");
					}
					else if (Randi == 4)
					&& (Mod_Charakter != 4)
					{
						B_Say_Overlay	(Char_Magie, NULL, "$AMBIENTTALK04");
					}
					else
					{
						B_Say_Overlay	(hero, NULL, "$AMBIENTTALK04");
					};
				}
				else if (Randi == 4)
				{
					Randi = Hlp_Random(4)+1;

					if (Randi == 1)
					&& (Mod_Charakter != 1)
					{
						B_Say_Overlay	(Char_Einhand, NULL, "$AMBIENTTALK05");
					}
					else if (Randi == 2)
					&& (Mod_Charakter != 2)
					{
						B_Say_Overlay	(Char_Zweihand, NULL, "$AMBIENTTALK05");
					}
					else if (Randi == 3)
					&& (Mod_Charakter != 3)
					{
						B_Say_Overlay	(Char_Bogen, NULL, "$AMBIENTTALK05");
					}
					else if (Randi == 4)
					&& (Mod_Charakter != 4)
					{
						B_Say_Overlay	(Char_Magie, NULL, "$AMBIENTTALK05");
					}
					else
					{
						B_Say_Overlay	(hero, NULL, "$AMBIENTTALK05");
					};
				};
			};

			if (Npc_GetDistToWP(Witch, Witch.Spawnpoint) > 5000)
			&& (!Npc_IsDead(Witch))
			{
				AI_Teleport	(Witch, Witch.Spawnpoint);
			};
		}
		else
		{
			Mod_NothingHappened_Counter = 0;
		};

		// Wenn der Held eine falsche Waffe einsammelt

		if ((Npc_HasItems(hero, ItMw_Lester_01) > 0)
		|| (Npc_HasItems(hero, ItMw_Lester_02) > 0)
		|| (Npc_HasItems(hero, ItMw_Lester_03) > 0)
		|| (Npc_HasItems(hero, ItMw_Lester_04) > 0)
		|| (Npc_HasItems(hero, ItMw_Lester_05) > 0)
		|| (Npc_HasItems(hero, ItMw_Lester_06) > 0))
		&& (Mod_Charakter != 1)
		{
			B_Say_Overlay	(hero, NULL, "$NOTMYWEAPON");

			if (Npc_HasItems(hero, ItMw_Lester_01) > 0)
			{
				AI_DropItem	(hero, ItMw_Lester_01);
			}
			else if (Npc_HasItems(hero, ItMw_Lester_02) > 0)
			{
				AI_DropItem	(hero, ItMw_Lester_02);
			}
			else if (Npc_HasItems(hero, ItMw_Lester_03) > 0)
			{
				AI_DropItem	(hero, ItMw_Lester_03);
			}
			else if (Npc_HasItems(hero, ItMw_Lester_04) > 0)
			{
				AI_DropItem	(hero, ItMw_Lester_04);
			}
			else if (Npc_HasItems(hero, ItMw_Lester_05) > 0)
			{
				AI_DropItem	(hero, ItMw_Lester_05);
			}
			else if (Npc_HasItems(hero, ItMw_Lester_06) > 0)
			{
				AI_DropItem	(hero, ItMw_Lester_06);
			};
		};

		if ((Npc_HasItems(hero, ItMw_Gorn_01) > 0)
		|| (Npc_HasItems(hero, ItMw_Gorn_02) > 0)
		|| (Npc_HasItems(hero, ItMw_Gorn_03) > 0)
		|| (Npc_HasItems(hero, ItMw_Gorn_04) > 0)
		|| (Npc_HasItems(hero, ItMw_Gorn_05) > 0)
		|| (Npc_HasItems(hero, ItMw_Gorn_06) > 0))
		&& (Mod_Charakter != 2)
		{
			B_Say_Overlay	(hero, NULL, "$NOTMYWEAPON");

			if (Npc_HasItems(hero, ItMw_Gorn_01) > 0)
			{
				AI_DropItem	(hero, ItMw_Gorn_01);
			}
			else if (Npc_HasItems(hero, ItMw_Gorn_02) > 0)
			{
				AI_DropItem	(hero, ItMw_Gorn_02);
			}
			else if (Npc_HasItems(hero, ItMw_Gorn_03) > 0)
			{
				AI_DropItem	(hero, ItMw_Gorn_03);
			}
			else if (Npc_HasItems(hero, ItMw_Gorn_04) > 0)
			{
				AI_DropItem	(hero, ItMw_Gorn_04);
			}
			else if (Npc_HasItems(hero, ItMw_Gorn_05) > 0)
			{
				AI_DropItem	(hero, ItMw_Gorn_05);
			}
			else if (Npc_HasItems(hero, ItMw_Gorn_06) > 0)
			{
				AI_DropItem	(hero, ItMw_Gorn_06);
			};
		};

		if ((Npc_HasItems(hero, ItRw_Diego_01) > 0)
		|| (Npc_HasItems(hero, ItRw_Diego_02) > 0)
		|| (Npc_HasItems(hero, ItRw_Diego_03) > 0)
		|| (Npc_HasItems(hero, ItRw_Diego_04) > 0)
		|| (Npc_HasItems(hero, ItRw_Diego_05) > 0)
		|| (Npc_HasItems(hero, ItRw_Diego_06) > 0)
		|| (Npc_HasItems(hero, ItMw_Diego_01) > 0)
		|| (Npc_HasItems(hero, ItMw_Diego_02) > 0)
		|| (Npc_HasItems(hero, ItMw_Diego_03) > 0))
		&& (Mod_Charakter != 3)
		{
			B_Say_Overlay	(hero, NULL, "$NOTMYWEAPON");

			if (Npc_HasItems(hero, ItRw_Diego_01) > 0)
			{
				AI_DropItem	(hero, ItRw_Diego_01);
			}
			else if (Npc_HasItems(hero, ItRw_Diego_02) > 0)
			{
				AI_DropItem	(hero, ItRw_Diego_02);
			}
			else if (Npc_HasItems(hero, ItRw_Diego_03) > 0)
			{
				AI_DropItem	(hero, ItRw_Diego_03);
			}
			else if (Npc_HasItems(hero, ItRw_Diego_04) > 0)
			{
				AI_DropItem	(hero, ItRw_Diego_04);
			}
			else if (Npc_HasItems(hero, ItRw_Diego_05) > 0)
			{
				AI_DropItem	(hero, ItRw_Diego_05);
			}
			else if (Npc_HasItems(hero, ItRw_Diego_06) > 0)
			{
				AI_DropItem	(hero, ItRw_Diego_06);
			}
			else if (Npc_HasItems(hero, ItMw_Diego_01) > 0)
			{
				AI_DropItem	(hero, ItMw_Diego_01);
			}
			else if (Npc_HasItems(hero, ItMw_Diego_02) > 0)
			{
				AI_DropItem	(hero, ItMw_Diego_02);
			}
			else if (Npc_HasItems(hero, ItMw_Diego_03) > 0)
			{
				AI_DropItem	(hero, ItMw_Diego_03);
			};
		};

		if ((Npc_HasItems(hero, ItRu_Milten_01) > 0)
		|| (Npc_HasItems(hero, ItRu_Milten_02) > 0)
		|| (Npc_HasItems(hero, ItRu_Milten_03) > 0)
		|| (Npc_HasItems(hero, ItRu_Milten_04) > 0)
		|| (Npc_HasItems(hero, ItRu_Milten_05) > 0)
		|| (Npc_HasItems(hero, ItRu_Milten_06) > 0)
		|| (Npc_HasItems(hero, ItMw_Milten_01) > 0)
		|| (Npc_HasItems(hero, ItMw_Milten_02) > 0)
		|| (Npc_HasItems(hero, ItMw_Milten_03) > 0))
		&& (Mod_Charakter != 4)
		{
			B_Say_Overlay	(hero, NULL, "$NOTMYWEAPON");

			if (Npc_HasItems(hero, ItRu_Milten_01) > 0)
			{
				AI_DropItem	(hero, ItRu_Milten_01);
			}
			else if (Npc_HasItems(hero, ItRu_Milten_02) > 0)
			{
				AI_DropItem	(hero, ItRu_Milten_02);
			}
			else if (Npc_HasItems(hero, ItRu_Milten_03) > 0)
			{
				AI_DropItem	(hero, ItRu_Milten_03);
			}
			else if (Npc_HasItems(hero, ItRu_Milten_04) > 0)
			{
				AI_DropItem	(hero, ItRu_Milten_04);
			}
			else if (Npc_HasItems(hero, ItRu_Milten_05) > 0)
			{
				AI_DropItem	(hero, ItRu_Milten_05);
			}
			else if (Npc_HasItems(hero, ItRu_Milten_06) > 0)
			{
				AI_DropItem	(hero, ItRu_Milten_06);
			}
			else if (Npc_HasItems(hero, ItMw_Milten_01) > 0)
			{
				AI_DropItem	(hero, ItMw_Milten_01);
			}
			else if (Npc_HasItems(hero, ItMw_Milten_02) > 0)
			{
				AI_DropItem	(hero, ItMw_Milten_02);
			}
			else if (Npc_HasItems(hero, ItMw_Milten_03) > 0)
			{
				AI_DropItem	(hero, ItMw_Milten_03);
			};
		};

		// Wenn der Held gefangen ist, dann müssen die freien KI-Begleiter zurück kehren und ihn retten

		if (HeroKnast == 1)
		{
			if (DiegoKnast == 0)
			&& (DiegoRettung == 0)
			&& (!C_NpcIsDown(Char_Bogen))
			{
				B_StartOtherRoutine	(Char_Bogen, "RETTUNG");

				DiegoRettung = 1;
			};

			if (LesterKnast == 0)
			&& (LesterRettung == 0)
			&& (!C_NpcIsDown(Char_Einhand))
			{
				B_StartOtherRoutine	(Char_Einhand, "RETTUNG");

				LesterRettung = 1;
			};

			if (GornKnast == 0)
			&& (GornRettung == 0)
			&& (!C_NpcIsDown(Char_Zweihand))
			{
				B_StartOtherRoutine	(Char_Zweihand, "RETTUNG");

				GornRettung = 1;
			};

			if (MiltenKnast == 0)
			&& (MiltenRettung == 0)
			&& (!C_NpcIsDown(Char_Magie))
			{
				B_StartOtherRoutine	(Char_Magie, "RETTUNG");

				MiltenRettung = 1;
			};

			if (Npc_GetDistToNpc(Char_Einhand, hero) < 500)
			&& (LesterRettung == 1)
			{
				AI_TurnToNpc	(Char_Einhand, hero);

				B_Say_Overlay (Char_Einhand, NULL, "$RETTUNG");

				LesterRettung = 0;

				HeroKnast = 0;

				B_StartOtherRoutine	(Char_Einhand, "START");

				LesterPoints += 3;

				PrintDebug ("Punkte: Lester + 3 für Rettung");
			}
			else if (Npc_GetDistToNpc(Char_Zweihand, hero) < 500)
			&& (GornRettung == 1)
			{
				AI_TurnToNpc	(Char_Zweihand, hero);

				B_Say_Overlay (Char_Zweihand, NULL, "$RETTUNG");

				GornRettung = 0;

				HeroKnast = 0;

				B_StartOtherRoutine	(Char_Zweihand, "START");

				GornPoints += 3;

				PrintDebug ("Punkte: Gorn + 3 für Rettung");
			}
			else if (Npc_GetDistToNpc(Char_Bogen, hero) < 500)
			&& (DiegoRettung == 1)
			{
				AI_TurnToNpc	(Char_Bogen, hero);

				B_Say_Overlay (Char_Bogen, NULL, "$RETTUNG");

				DiegoRettung = 0;

				HeroKnast = 0;

				B_StartOtherRoutine	(Char_Bogen, "START");

				DiegoPoints += 3;

				PrintDebug ("Punkte: Diego + 3 für Rettung");
			}
			else if (Npc_GetDistToNpc(Char_Magie, hero) < 500)
			&& (MiltenRettung == 1)
			{
				AI_TurnToNpc	(Char_Magie, hero);

				B_Say_Overlay (Char_Magie, NULL, "$RETTUNG");

				MiltenRettung = 0;

				HeroKnast = 0;

				B_StartOtherRoutine	(Char_Magie, "START");

				MiltenPoints += 3;

				PrintDebug ("Punkte: Milten + 3 für Rettung");
			};

			if (LesterRettung == 1)
			&& (HeroKnast == 0)
			{
				B_StartOtherRoutine	(Char_Einhand, "START");

				LesterRettung = 0;
			};

			if (GornRettung == 1)
			&& (HeroKnast == 0)
			{
				B_StartOtherRoutine	(Char_Zweihand, "START");

				GornRettung = 0;
			};

			if (MiltenRettung == 1)
			&& (HeroKnast == 0)
			{
				B_StartOtherRoutine	(Char_Magie, "START");

				MiltenRettung = 0;
			};

			if (DiegoRettung == 1)
			&& (HeroKnast == 0)
			{
				B_StartOtherRoutine	(Char_Bogen, "START");

				DiegoRettung = 0;
			};
		};

		// Waffen austauschen und richtige equippen

		if (Mod_LesterBetter_Weapon > 0)
		{
			if (Mod_LesterBetter_Weapon == 2)
			{
				if (Npc_HasItems(Char_Einhand, ItMw_Lester_01_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Einhand, ItMw_Lester_01_World, 1);
					CreateInvItems	(Char_Einhand, ItMw_Lester_01, 1);
				};

				if (Npc_HasItems(Char_Einhand, ItMw_Lester_02_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Einhand, ItMw_Lester_02_World, 1);
					CreateInvItems	(Char_Einhand, ItMw_Lester_02, 1);
				};

				if (Npc_HasItems(Char_Einhand, ItMw_Lester_03_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Einhand, ItMw_Lester_03_World, 1);
					CreateInvItems	(Char_Einhand, ItMw_Lester_03, 1);
				};

				if (Npc_HasItems(Char_Einhand, ItMw_Lester_04_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Einhand, ItMw_Lester_04_World, 1);
					CreateInvItems	(Char_Einhand, ItMw_Lester_04, 1);
				};

				if (Npc_HasItems(Char_Einhand, ItMw_Lester_05_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Einhand, ItMw_Lester_05_World, 1);
					CreateInvItems	(Char_Einhand, ItMw_Lester_05, 1);
				};

				if (Npc_HasItems(Char_Einhand, ItMw_Lester_06_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Einhand, ItMw_Lester_06_World, 1);
					CreateInvItems	(Char_Einhand, ItMw_Lester_06, 1);
				};
			};

			if (Mod_LesterBetter_Weapon == 1)
			{
				AI_UnequipWeapons	(Char_Einhand);

				AI_EquipBestMeleeWeapon	(Char_Einhand);
			};

			Mod_LesterBetter_Weapon -= 1;
		};

		if (Mod_GornBetter_Weapon > 0)
		{
			if (Mod_GornBetter_Weapon == 2)
			{
				if (Npc_HasItems(Char_Zweihand, ItMw_Gorn_01_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Zweihand, ItMw_Gorn_01_World, 1);
					CreateInvItems	(Char_Zweihand, ItMw_Gorn_01, 1);
				};

				if (Npc_HasItems(Char_Zweihand, ItMw_Gorn_02_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Zweihand, ItMw_Gorn_02_World, 1);
					CreateInvItems	(Char_Zweihand, ItMw_Gorn_02, 1);
				};

				if (Npc_HasItems(Char_Zweihand, ItMw_Gorn_03_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Zweihand, ItMw_Gorn_03_World, 1);
					CreateInvItems	(Char_Zweihand, ItMw_Gorn_03, 1);
				};

				if (Npc_HasItems(Char_Zweihand, ItMw_Gorn_04_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Zweihand, ItMw_Gorn_04_World, 1);
					CreateInvItems	(Char_Zweihand, ItMw_Gorn_04, 1);
				};

				if (Npc_HasItems(Char_Zweihand, ItMw_Gorn_05_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Zweihand, ItMw_Gorn_05_World, 1);
					CreateInvItems	(Char_Zweihand, ItMw_Gorn_05, 1);
				};

				if (Npc_HasItems(Char_Zweihand, ItMw_Gorn_06_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Zweihand, ItMw_Gorn_06_World, 1);
					CreateInvItems	(Char_Zweihand, ItMw_Gorn_06, 1);
				};
			};

			if (Mod_GornBetter_Weapon == 1)
			{
				AI_UnequipWeapons	(Char_Zweihand);

				AI_EquipBestMeleeWeapon	(Char_Zweihand);
			};

			Mod_GornBetter_Weapon -= 1;
		};

		if (Mod_MiltenBetter_Weapon > 0)
		{
			if (Mod_MiltenBetter_Weapon == 2)
			{
				if (Npc_HasItems(Char_Magie, ItMw_Milten_01_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Magie, ItMw_Milten_01_World, 1);
					CreateInvItems	(Char_Magie, ItMw_Milten_01, 1);
				};

				if (Npc_HasItems(Char_Magie, ItMw_Milten_02_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Magie, ItMw_Milten_02_World, 1);
					CreateInvItems	(Char_Magie, ItMw_Milten_02, 1);
				};

				if (Npc_HasItems(Char_Magie, ItMw_Milten_03_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Magie, ItMw_Milten_03_World, 1);
					CreateInvItems	(Char_Magie, ItMw_Milten_03, 1);
				};
			};

			if (Mod_MiltenBetter_Weapon == 1)
			{
				AI_UnequipWeapons	(Char_Magie);

				AI_EquipBestMeleeWeapon	(Char_Magie);
			};

			Mod_MiltenBetter_Weapon -= 1;
		};

		if (Mod_DiegoBetter_Weapon > 0)
		{
			if (Mod_DiegoBetter_Weapon == 2)
			{
				if (Npc_HasItems(Char_Bogen, ItMw_Diego_01_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Bogen, ItMw_Diego_01_World, 1);
					CreateInvItems	(Char_Bogen, ItMw_Diego_01, 1);
				};

				if (Npc_HasItems(Char_Bogen, ItMw_Diego_02_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Bogen, ItMw_Diego_02_World, 1);
					CreateInvItems	(Char_Bogen, ItMw_Diego_02, 1);
				};

				if (Npc_HasItems(Char_Bogen, ItMw_Diego_03_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Bogen, ItMw_Diego_03_World, 1);
					CreateInvItems	(Char_Bogen, ItMw_Diego_03, 1);
				};

				if (Npc_HasItems(Char_Bogen, ItRw_Diego_01_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Bogen, ItRw_Diego_01_World, 1);
					CreateInvItems	(Char_Bogen, ItRw_Diego_01, 1);
				};

				if (Npc_HasItems(Char_Bogen, ItRw_Diego_02_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Bogen, ItRw_Diego_02_World, 1);
					CreateInvItems	(Char_Bogen, ItRw_Diego_02, 1);
				};

				if (Npc_HasItems(Char_Bogen, ItRw_Diego_03_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Bogen, ItRw_Diego_03_World, 1);
					CreateInvItems	(Char_Bogen, ItRw_Diego_03, 1);
				};

				if (Npc_HasItems(Char_Bogen, ItRw_Diego_04_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Bogen, ItRw_Diego_04_World, 1);
					CreateInvItems	(Char_Bogen, ItRw_Diego_04, 1);
				};

				if (Npc_HasItems(Char_Bogen, ItRw_Diego_05_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Bogen, ItRw_Diego_05_World, 1);
					CreateInvItems	(Char_Bogen, ItRw_Diego_05, 1);
				};

				if (Npc_HasItems(Char_Bogen, ItRw_Diego_06_World) > 0)
				{
					Npc_RemoveInvItems	(Char_Bogen, ItRw_Diego_06_World, 1);
					CreateInvItems	(Char_Bogen, ItRw_Diego_06, 1);
				};
			};

			if (Mod_DiegoBetter_Weapon == 1)
			{
				AI_UnequipWeapons	(Char_Bogen);

				AI_EquipBestMeleeWeapon	(Char_Bogen);
				AI_EquipBestRangedWeapon	(Char_Bogen);
			};

			Mod_DiegoBetter_Weapon -= 1;
		};

		// Held Waffe austauschen

		if (Npc_HasItems(hero, ItMw_Lester_01_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Lester_01_World, 1);
			CreateInvItems	(hero, ItMw_Lester_01, 1);
		};

		if (Npc_HasItems(hero, ItMw_Lester_02_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Lester_02_World, 1);
			CreateInvItems	(hero, ItMw_Lester_02, 1);
		};

		if (Npc_HasItems(hero, ItMw_Lester_03_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Lester_03_World, 1);
			CreateInvItems	(hero, ItMw_Lester_03, 1);
		};

		if (Npc_HasItems(hero, ItMw_Lester_04_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Lester_04_World, 1);
			CreateInvItems	(hero, ItMw_Lester_04, 1);
		};

		if (Npc_HasItems(hero, ItMw_Lester_05_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Lester_05_World, 1);
			CreateInvItems	(hero, ItMw_Lester_05, 1);
		};

		if (Npc_HasItems(hero, ItMw_Lester_06_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Lester_06_World, 1);
			CreateInvItems	(hero, ItMw_Lester_06, 1);
		};

		if (Npc_HasItems(hero, ItMw_Gorn_01_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Gorn_01_World, 1);
			CreateInvItems	(hero, ItMw_Gorn_01, 1);
		};

		if (Npc_HasItems(hero, ItMw_Gorn_02_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Gorn_02_World, 1);
			CreateInvItems	(hero, ItMw_Gorn_02, 1);
		};

		if (Npc_HasItems(hero, ItMw_Gorn_03_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Gorn_03_World, 1);
			CreateInvItems	(hero, ItMw_Gorn_03, 1);
		};

		if (Npc_HasItems(hero, ItMw_Gorn_04_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Gorn_04_World, 1);
			CreateInvItems	(hero, ItMw_Gorn_04, 1);
		};

		if (Npc_HasItems(hero, ItMw_Gorn_05_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Gorn_05_World, 1);
			CreateInvItems	(hero, ItMw_Gorn_05, 1);
		};

		if (Npc_HasItems(hero, ItMw_Gorn_06_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Gorn_06_World, 1);
			CreateInvItems	(hero, ItMw_Gorn_06, 1);
		};

		if (Npc_HasItems(hero, ItMw_Milten_01_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Milten_01_World, 1);
			CreateInvItems	(hero, ItMw_Milten_01, 1);
		};

		if (Npc_HasItems(hero, ItMw_Milten_02_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Milten_02_World, 1);
			CreateInvItems	(hero, ItMw_Milten_02, 1);
		};

		if (Npc_HasItems(hero, ItMw_Milten_03_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Milten_03_World, 1);
			CreateInvItems	(hero, ItMw_Milten_03, 1);
		};

		if (Npc_HasItems(hero, ItMw_Diego_01_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Diego_01_World, 1);
			CreateInvItems	(hero, ItMw_Diego_01, 1);
		};

		if (Npc_HasItems(hero, ItMw_Diego_02_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Diego_02_World, 1);
			CreateInvItems	(hero, ItMw_Diego_02, 1);
		};

		if (Npc_HasItems(hero, ItMw_Diego_03_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItMw_Diego_03_World, 1);
			CreateInvItems	(hero, ItMw_Diego_03, 1);
		};

		if (Npc_HasItems(hero, ItRw_Diego_01_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItRw_Diego_01_World, 1);
			CreateInvItems	(hero, ItRw_Diego_01, 1);
		};

		if (Npc_HasItems(hero, ItRw_Diego_02_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItRw_Diego_02_World, 1);
			CreateInvItems	(hero, ItRw_Diego_02, 1);
		};

		if (Npc_HasItems(hero, ItRw_Diego_03_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItRw_Diego_03_World, 1);
			CreateInvItems	(hero, ItRw_Diego_03, 1);
		};

		if (Npc_HasItems(hero, ItRw_Diego_04_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItRw_Diego_04_World, 1);
			CreateInvItems	(hero, ItRw_Diego_04, 1);
		};

		if (Npc_HasItems(hero, ItRw_Diego_05_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItRw_Diego_05_World, 1);
			CreateInvItems	(hero, ItRw_Diego_05, 1);
		};

		if (Npc_HasItems(hero, ItRw_Diego_06_World) > 0)
		{
			Npc_RemoveInvItems	(hero, ItRw_Diego_06_World, 1);
			CreateInvItems	(hero, ItRw_Diego_06, 1);
		};

		// Hordenführer wieder spawnen lassen

		if (Mod_Hordenfuehrer_Summon > 0)
		{
			Mod_Hordenfuehrer_Summon -= 1;
		};

		// Vergiftungen

		if (Mod_LesterVergiftet > 0)
		{
			Mod_LesterVergiftet -= 1;

			if (Char_Einhand.attribute[ATR_HITPOINTS] > 5)
			{
				Char_Einhand.attribute[ATR_HITPOINTS] -= 5;
			}
			else
			{
				Char_Einhand.attribute[ATR_HITPOINTS] = 1;
			};
		};

		if (Mod_GornVergiftet > 0)
		{
			Mod_GornVergiftet -= 1;

			if (Char_Zweihand.attribute[ATR_HITPOINTS] > 5)
			{
				Char_Zweihand.attribute[ATR_HITPOINTS] -= 5;
			}
			else
			{
				Char_Zweihand.attribute[ATR_HITPOINTS] = 1;
			};
		};

		if (Mod_DiegoVergiftet > 0)
		{
			Mod_DiegoVergiftet -= 1;

			if (Char_Bogen.attribute[ATR_HITPOINTS] > 5)
			{
				Char_Bogen.attribute[ATR_HITPOINTS] -= 5;
			}
			else
			{
				Char_Bogen.attribute[ATR_HITPOINTS] = 1;
			};
		};

		if (Mod_MiltenVergiftet > 0)
		{
			Mod_MiltenVergiftet -= 1;

			if (Char_Magie.attribute[ATR_HITPOINTS] > 5)
			{
				Char_Magie.attribute[ATR_HITPOINTS] -= 5;
			}
			else
			{
				Char_Magie.attribute[ATR_HITPOINTS] = 1;
			};
		};

		if (Mod_HeroVergiftet > 0)
		{
			Mod_HeroVergiftet -= 1;

			if (hero.attribute[ATR_HITPOINTS] > 5)
			{
				hero.attribute[ATR_HITPOINTS] -= 5;
			}
			else
			{
				hero.attribute[ATR_HITPOINTS] = 1;
			};
		};
	};

	var C_NPC strafingTarget;

	if (Diego_Strafing > 0)
	{
		if (Diego_Strafing == 2)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(Char_Magie));

			if ((C_NpcIsDown(Char_Magie))
			|| (MiltenKnast)
			|| (!Npc_IsInFightMode(Char_Magie, FMODE_MAGIC))
			|| (B_GetDist(Char_Magie, strafingTarget, Char_Bogen) > 300))
			{
				Npc_ClearAIQueue (Char_Bogen);

				AI_StandUP (Char_Bogen);

				Diego_Strafing = FALSE;
			};
		}
		else if (Diego_Strafing == 3)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(hero));

			if ((C_NpcIsDown(hero))
			|| (HeroKnast)
			|| ((!Npc_IsInFightMode(hero, FMODE_MAGIC))
			&& (!Npc_IsInFightMode(hero, FMODE_FAR)))
			|| (B_GetDist(hero, strafingTarget, Char_Bogen) > 300))
			{
				Npc_ClearAIQueue (Char_Bogen);

				AI_StandUP (Char_Bogen);

				Diego_Strafing = FALSE;
			};
		};
	};
	if (Gorn_Strafing > 0)
	{
		if (Gorn_Strafing == 1)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(Char_Bogen));

			if ((C_NpcIsDown(Char_Bogen))
			|| (DiegoKnast)
			|| (!Npc_IsInFightMode(Char_Bogen, FMODE_FAR))
			|| (B_GetDist(Char_Bogen, strafingTarget, Char_Zweihand) > 300))
			{
				Npc_ClearAIQueue (Char_Zweihand);

				AI_StandUP (Char_Zweihand);

				Gorn_Strafing = FALSE;
			};
		}
		else if (Gorn_Strafing == 2)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(Char_Magie));

			if ((C_NpcIsDown(Char_Magie))
			|| (MiltenKnast)
			|| (!Npc_IsInFightMode(Char_Magie, FMODE_MAGIC))
			|| (B_GetDist(Char_Magie, strafingTarget, Char_Zweihand) > 300))
			{
				Npc_ClearAIQueue (Char_Zweihand);

				AI_StandUP (Char_Zweihand);

				Gorn_Strafing = FALSE;
			};
		}
		else if (Gorn_Strafing == 3)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(hero));

			if ((C_NpcIsDown(hero))
			|| (HeroKnast)
			|| ((!Npc_IsInFightMode(hero, FMODE_MAGIC))
			&& (!Npc_IsInFightMode(hero, FMODE_FAR)))
			|| (B_GetDist(hero, strafingTarget, Char_Zweihand) > 300))
			{
				Npc_ClearAIQueue (Char_Zweihand);

				AI_StandUP (Char_Zweihand);

				Gorn_Strafing = FALSE;
			};
		};
	};
	if (Lester_Strafing > 0)
	{
		if (Lester_Strafing == 1)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(Char_Bogen));

			if ((C_NpcIsDown(Char_Bogen))
			|| (DiegoKnast)
			|| (!Npc_IsInFightMode(Char_Bogen, FMODE_FAR))
			|| (B_GetDist(Char_Bogen, strafingTarget, Char_Einhand) > 300))
			{
				Npc_ClearAIQueue (Char_Einhand);

				AI_StandUP (Char_Einhand);

				Lester_Strafing = FALSE;
			};
		}
		else if (Lester_Strafing == 2)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(Char_Magie));

			if ((C_NpcIsDown(Char_Magie))
			|| (MiltenKnast)
			|| (!Npc_IsInFightMode(Char_Magie, FMODE_MAGIC))
			|| (B_GetDist(Char_Magie, strafingTarget, Char_Einhand) > 300))
			{
				Npc_ClearAIQueue (Char_Einhand);

				AI_StandUP (Char_Einhand);

				Lester_Strafing = FALSE;
			};
		}
		else if (Lester_Strafing == 3)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(hero));

			if ((C_NpcIsDown(hero))
			|| (HeroKnast)
			|| ((!Npc_IsInFightMode(hero, FMODE_MAGIC))
			&& (!Npc_IsInFightMode(hero, FMODE_FAR)))
			|| (B_GetDist(hero, strafingTarget, Char_Einhand) > 300))
			{
				Npc_ClearAIQueue (Char_Einhand);

				AI_StandUP (Char_Einhand);

				Lester_Strafing = FALSE;
			};
		};
	};
	if (Milten_Strafing > 0)
	{
		if (Milten_Strafing == 1)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(Char_Bogen));

			if ((C_NpcIsDown(Char_Bogen))
			|| (DiegoKnast)
			|| (!Npc_IsInFightMode(Char_Bogen, FMODE_FAR))
			|| (B_GetDist(Char_Bogen, strafingTarget, Char_Magie) > 300))
			{
				Npc_ClearAIQueue (Char_Magie);

				AI_StandUP (Char_Magie);

				Milten_Strafing = FALSE;
			};
		}
		else if (Milten_Strafing == 3)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(hero));

			if ((C_NpcIsDown(hero))
			|| (HeroKnast)
			|| ((!Npc_IsInFightMode(hero, FMODE_MAGIC))
			&& (!Npc_IsInFightMode(hero, FMODE_FAR)))
			|| (B_GetDist(hero, strafingTarget, Char_Magie) > 300))
			{
				Npc_ClearAIQueue (Char_Magie);

				AI_StandUP (Char_Magie);

				Milten_Strafing = FALSE;
			};
		};
	};
	if (MiltenSkelett_Strafing > 0)
	{
		if (MiltenSkelett_Strafing == 1)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(Char_Bogen));

			if ((C_NpcIsDown(Char_Bogen))
			|| (DiegoKnast)
			|| (!Npc_IsInFightMode(Char_Bogen, FMODE_FAR))
			|| (B_GetDist(Char_Bogen, strafingTarget, MiltenSkelett) > 300))
			{
				Npc_ClearAIQueue (MiltenSkelett);

				AI_StandUP (MiltenSkelett);

				MiltenSkelett_Strafing = FALSE;
			};
		}
		else if (MiltenSkelett_Strafing == 2)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(Char_Magie));

			if ((C_NpcIsDown(Char_Magie))
			|| (MiltenKnast)
			|| (!Npc_IsInFightMode(Char_Magie, FMODE_MAGIC))
			|| (B_GetDist(Char_Magie, strafingTarget, MiltenSkelett) > 300))
			{
				Npc_ClearAIQueue (MiltenSkelett);

				AI_StandUP (MiltenSkelett);

				MiltenSkelett_Strafing = FALSE;
			};
		}
		else if (MiltenSkelett_Strafing == 3)
		{
			strafingTarget = Hlp_GetNpc(Npc_GetTarget(hero));

			if ((C_NpcIsDown(hero))
			|| (HeroKnast)
			|| ((!Npc_IsInFightMode(hero, FMODE_MAGIC))
			&& (!Npc_IsInFightMode(hero, FMODE_FAR)))
			|| (B_GetDist(hero, strafingTarget, MiltenSkelett) > 300))
			{
				Npc_ClearAIQueue (MiltenSkelett);

				AI_StandUP (MiltenSkelett);

				MiltenSkelett_Strafing = FALSE;
			};
		};
	};

	if (Npc_IsInFightMode(hero, FMODE_FAR))
	|| (Npc_IsInFightMode(hero, FMODE_MAGIC))
	{
		// Gucken, ob einer in Schussbahn steht
		var ocNpc temp;
		temp = Hlp_GetNpc(hero);

		if (Hlp_Is_ocNpc(temp.focus_vob))
		{
			strafingTarget = Hlp_GetNpc(temp.focus_vob);
		}
		else
		{
			strafingTarget = Hlp_GetNpc(hero);
		};

		if (B_GetDist(hero, strafingTarget, Char_Einhand) < 300)
		&& (!Lester_Strafing)
		{
			// Strafen lassen

			Npc_ClearAIQueue (Char_Einhand);

			AI_StandUP (Char_Einhand);

			if (Hlp_Random(2) == 0)
			{
				AI_PlayAni	(Char_Einhand, "T_1HRUNSTRAFER");
			}
			else
			{
				AI_PlayAni	(Char_Einhand, "T_1HRUNSTRAFEL");
			};

			Lester_Strafing = 3;
		};

		if (B_GetDist(hero, strafingTarget, Char_Zweihand) < 300)
		&& (!Gorn_Strafing)
		{
			// Strafen lassen

			Npc_ClearAIQueue (Char_Zweihand);

			AI_StandUP (Char_Zweihand);

			if (Hlp_Random(2) == 0)
			{
				AI_PlayAni	(Char_Zweihand, "T_2HRUNSTRAFER");
			}
			else
			{
				AI_PlayAni	(Char_Zweihand, "T_2HRUNSTRAFEL");
			};

			Gorn_Strafing = 3;
		};

		if (B_GetDist(hero, strafingTarget, Char_Bogen) < 300)
		&& (!Diego_Strafing)
		{
			// Strafen lassen

			Npc_ClearAIQueue (Char_Bogen);

			AI_StandUP (Char_Bogen);

			if (Hlp_Random(2) == 0)
			{
				AI_PlayAni	(Char_Bogen, "T_1HRUNSTRAFER");
			}
			else
			{
				AI_PlayAni	(Char_Bogen, "T_1HRUNSTRAFEL");
			};

			Diego_Strafing = 3;
		};

		if (B_GetDist(hero, strafingTarget, Char_Magie) < 300)
		&& (!Milten_Strafing)
		{
			// Strafen lassen

			Npc_ClearAIQueue (Char_Magie);

			AI_StandUP (Char_Magie);

			if (Hlp_Random(2) == 0)
			{
				AI_PlayAni	(Char_Magie, "T_2HRUNSTRAFER");
			}
			else
			{
				AI_PlayAni	(Char_Magie, "T_2HRUNSTRAFEL");
			};

			Milten_Strafing = 3;
		};

		if (B_GetDist(hero, strafingTarget, MiltenSkelett) < 300)
		&& (!MiltenSkelett_Strafing)
		{
			// Strafen lassen

			Npc_ClearAIQueue (MiltenSkelett);

			AI_StandUP (MiltenSkelett);

			if (Hlp_Random(2) == 0)
			{
				AI_PlayAni	(MiltenSkelett, "T_2HRUNSTRAFER");
			}
			else
			{
				AI_PlayAni	(MiltenSkelett, "T_2HRUNSTRAFEL");
			};

			MiltenSkelett_Strafing = 3;
		};
	};

	// Vergangene Sekunden zählen

	CurrentTime += 1;

	Wld_SendTrigger	("DAUERTRIGGER");
};