FUNC VOID CheckWiederbelebung()
{
	if (Mod_Charakter != 4)
	{
		if (Npc_IsInState(Char_Magie, ZS_Unconscious))
		&& (Char_Magie.aivar[AIV_WirdVersorgt] > 0)
		{
			if (Char_Magie.aivar[AIV_WirdVersorgt] == 3)
			{
				if (Npc_IsInState(Char_Bogen, ZS_Attack))
				|| (C_NpcIsDown(Char_Bogen))
				{
					Char_Magie.aivar[AIV_WirdVersorgt] = 0;
					Char_Magie.aivar[AIV_Versorgungszeit] = 0;

					Char_Bogen.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Bogen, Char_Magie) < 400)
					&& (CurrentTime > Char_Magie.aivar[AIV_LastVersorgt])
					{
						Char_Magie.aivar[AIV_Versorgungszeit] += 1;

						Char_Magie.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Magie.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Magie.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Bogen.aivar[AIV_Belebt] = 0;
							Char_Magie.aivar[AIV_WirdVersorgt] = 0;

							DiegoPoints += 2;

							PrintDebug ("Punkte: Diego + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Magie.aivar[AIV_WirdVersorgt] == 2)
			{
				if (Npc_IsInState(Char_Zweihand, ZS_Attack))
				|| (C_NpcIsDown(Char_Zweihand))
				{
					Char_Magie.aivar[AIV_WirdVersorgt] = 0;
					Char_Magie.aivar[AIV_Versorgungszeit] = 0;

					Char_Zweihand.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Zweihand, Char_Magie) < 400)
					&& (CurrentTime > Char_Magie.aivar[AIV_LastVersorgt])
					{
						Char_Magie.aivar[AIV_Versorgungszeit] += 1;

						Char_Magie.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Magie.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Magie.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Zweihand.aivar[AIV_Belebt] = 0;
							Char_Magie.aivar[AIV_WirdVersorgt] = 0;

							GornPoints += 2;

							PrintDebug ("Punkte: Gorn + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Magie.aivar[AIV_WirdVersorgt] == 1)
			{
				if (Npc_IsInState(Char_Einhand, ZS_Attack))
				|| (C_NpcIsDown(Char_Einhand))
				{
					Char_Magie.aivar[AIV_WirdVersorgt] = 0;
					Char_Magie.aivar[AIV_Versorgungszeit] = 0;

					Char_Einhand.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Einhand, Char_Magie) < 400)
					&& (CurrentTime > Char_Magie.aivar[AIV_LastVersorgt])
					{
						Char_Magie.aivar[AIV_Versorgungszeit] += 1;

						Char_Magie.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Magie.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Magie.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Einhand.aivar[AIV_Belebt] = 0;
							Char_Magie.aivar[AIV_WirdVersorgt] = 0;

							LesterPoints += 2;

							PrintDebug ("Punkte: Lester + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Magie.aivar[AIV_WirdVersorgt] == 5)
			{
				if (C_NpcIsDown(hero))
				{
					Char_Magie.aivar[AIV_WirdVersorgt] = 0;
					Char_Magie.aivar[AIV_Versorgungszeit] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(hero, Char_Magie) < 400)
					&& (CurrentTime > Char_Magie.aivar[AIV_LastVersorgt])
					{
						Char_Magie.aivar[AIV_Versorgungszeit] += 1;

						Char_Magie.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Magie.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Magie.aivar[AIV_Wiederbelebt] = TRUE;
							Char_Magie.aivar[AIV_WirdVersorgt] = 0;

							if (Mod_Charakter == 1)
							{
								LesterPoints += 2;
							}
							else if (Mod_Charakter == 2)
							{
								GornPoints += 2;
							}
							else if (Mod_Charakter == 3)
							{
								DiegoPoints += 2;
							}
							else if (Mod_Charakter == 4)
							{
								MiltenPoints += 2;
							};
						};
					};
				};
			};
		};
	};

	if (Mod_Charakter != 3)
	{
		if (Npc_IsInState(Char_Bogen, ZS_Unconscious))
		&& (Char_Bogen.aivar[AIV_WirdVersorgt] > 0)
		{
			if (Char_Bogen.aivar[AIV_WirdVersorgt] == 4)
			{
				if (Npc_IsInState(Char_Magie, ZS_Attack))
				|| (C_NpcIsDown(Char_Magie))
				{
					Char_Bogen.aivar[AIV_WirdVersorgt] = 0;
					Char_Bogen.aivar[AIV_Versorgungszeit] = 0;

					Char_Magie.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Magie, Char_Bogen) < 400)
					&& (CurrentTime > Char_Bogen.aivar[AIV_LastVersorgt])
					{
						Char_Bogen.aivar[AIV_Versorgungszeit] += 1;

						Char_Bogen.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Bogen.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Bogen.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Magie.aivar[AIV_Belebt] = 0;
							Char_Bogen.aivar[AIV_WirdVersorgt] = 0;

							MiltenPoints += 2;

							PrintDebug ("Punkte: Milten + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Bogen.aivar[AIV_WirdVersorgt] == 2)
			{
				if (Npc_IsInState(Char_Zweihand, ZS_Attack))
				|| (C_NpcIsDown(Char_Zweihand))
				{
					Char_Bogen.aivar[AIV_WirdVersorgt] = 0;
					Char_Bogen.aivar[AIV_Versorgungszeit] = 0;

					Char_Zweihand.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Zweihand, Char_Bogen) < 400)
					&& (CurrentTime > Char_Bogen.aivar[AIV_LastVersorgt])
					{
						Char_Bogen.aivar[AIV_Versorgungszeit] += 1;

						Char_Bogen.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Bogen.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Bogen.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Zweihand.aivar[AIV_Belebt] = 0;
							Char_Bogen.aivar[AIV_WirdVersorgt] = 0;

							GornPoints += 2;

							PrintDebug ("Punkte: Gorn + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Bogen.aivar[AIV_WirdVersorgt] == 1)
			{
				if (Npc_IsInState(Char_Einhand, ZS_Attack))
				|| (C_NpcIsDown(Char_Einhand))
				{
					Char_Bogen.aivar[AIV_WirdVersorgt] = 0;
					Char_Bogen.aivar[AIV_Versorgungszeit] = 0;

					Char_Einhand.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Einhand, Char_Bogen) < 400)
					&& (CurrentTime > Char_Bogen.aivar[AIV_LastVersorgt])
					{
						Char_Bogen.aivar[AIV_Versorgungszeit] += 1;

						Char_Bogen.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Bogen.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Bogen.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Einhand.aivar[AIV_Belebt] = 0;
							Char_Bogen.aivar[AIV_WirdVersorgt] = 0;

							LesterPoints += 2;

							PrintDebug ("Punkte: Lester + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Bogen.aivar[AIV_WirdVersorgt] == 5)
			{
				if (C_NpcIsDown(hero))
				{
					Char_Bogen.aivar[AIV_WirdVersorgt] = 0;
					Char_Bogen.aivar[AIV_Versorgungszeit] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(hero, Char_Bogen) < 400)
					&& (CurrentTime > Char_Bogen.aivar[AIV_LastVersorgt])
					{
						Char_Bogen.aivar[AIV_Versorgungszeit] += 1;

						Char_Bogen.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Bogen.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Bogen.aivar[AIV_Wiederbelebt] = TRUE;
							Char_Bogen.aivar[AIV_WirdVersorgt] = 0;

							if (Mod_Charakter == 1)
							{
								LesterPoints += 2;
							}
							else if (Mod_Charakter == 2)
							{
								GornPoints += 2;
							}
							else if (Mod_Charakter == 3)
							{
								DiegoPoints += 2;
							}
							else if (Mod_Charakter == 4)
							{
								MiltenPoints += 2;
							};
						};
					};
				};
			};
		};
	};


	if (Mod_Charakter != 2)
	{
		if (Npc_IsInState(Char_Zweihand, ZS_Unconscious))
		&& (Char_Zweihand.aivar[AIV_WirdVersorgt] > 0)
		{
			if (Char_Zweihand.aivar[AIV_WirdVersorgt] == 3)
			{
				if (Npc_IsInState(Char_Bogen, ZS_Attack))
				|| (C_NpcIsDown(Char_Bogen))
				{
					Char_Zweihand.aivar[AIV_WirdVersorgt] = 0;
					Char_Zweihand.aivar[AIV_Versorgungszeit] = 0;

					Char_Bogen.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Bogen, Char_Zweihand) < 400)
					&& (CurrentTime > Char_Zweihand.aivar[AIV_LastVersorgt])
					{
						Char_Zweihand.aivar[AIV_Versorgungszeit] += 1;

						Char_Zweihand.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Zweihand.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Zweihand.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Bogen.aivar[AIV_Belebt] = 0;
							Char_Zweihand.aivar[AIV_WirdVersorgt] = 0;

							DiegoPoints += 2;

							PrintDebug ("Punkte: Diego + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Zweihand.aivar[AIV_WirdVersorgt] == 4)
			{
				if (Npc_IsInState(Char_Magie, ZS_Attack))
				|| (C_NpcIsDown(Char_Magie))
				{
					Char_Zweihand.aivar[AIV_WirdVersorgt] = 0;
					Char_Zweihand.aivar[AIV_Versorgungszeit] = 0;

					Char_Magie.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Magie, Char_Zweihand) < 400)
					&& (CurrentTime > Char_Zweihand.aivar[AIV_LastVersorgt])
					{
						Char_Zweihand.aivar[AIV_Versorgungszeit] += 1;

						Char_Zweihand.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Zweihand.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Zweihand.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Magie.aivar[AIV_Belebt] = 0;
							Char_Zweihand.aivar[AIV_WirdVersorgt] = 0;

							MiltenPoints += 2;

							PrintDebug ("Punkte: Milten + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Zweihand.aivar[AIV_WirdVersorgt] == 1)
			{
				if (Npc_IsInState(Char_Einhand, ZS_Attack))
				|| (C_NpcIsDown(Char_Einhand))
				{
					Char_Zweihand.aivar[AIV_WirdVersorgt] = 0;
					Char_Zweihand.aivar[AIV_Versorgungszeit] = 0;

					Char_Einhand.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Einhand, Char_Zweihand) < 400)
					&& (CurrentTime > Char_Zweihand.aivar[AIV_LastVersorgt])
					{
						Char_Zweihand.aivar[AIV_Versorgungszeit] += 1;

						Char_Zweihand.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Zweihand.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Zweihand.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Einhand.aivar[AIV_Belebt] = 0;
							Char_Zweihand.aivar[AIV_WirdVersorgt] = 0;

							LesterPoints += 2;

							PrintDebug ("Punkte: Lester + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Zweihand.aivar[AIV_WirdVersorgt] == 5)
			{
				if (C_NpcIsDown(hero))
				{
					Char_Zweihand.aivar[AIV_WirdVersorgt] = 0;
					Char_Zweihand.aivar[AIV_Versorgungszeit] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(hero, Char_Zweihand) < 400)
					&& (CurrentTime > Char_Zweihand.aivar[AIV_LastVersorgt])
					{
						Char_Zweihand.aivar[AIV_Versorgungszeit] += 1;

						Char_Zweihand.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Zweihand.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Zweihand.aivar[AIV_Wiederbelebt] = TRUE;
							Char_Zweihand.aivar[AIV_WirdVersorgt] = 0;

							if (Mod_Charakter == 1)
							{
								LesterPoints += 2;
							}
							else if (Mod_Charakter == 2)
							{
								GornPoints += 2;
							}
							else if (Mod_Charakter == 3)
							{
								DiegoPoints += 2;
							}
							else if (Mod_Charakter == 4)
							{
								MiltenPoints += 2;
							};
						};
					};
				};
			};
		};
	};


	if (Mod_Charakter != 1)
	{
		if (Npc_IsInState(Char_Einhand, ZS_Unconscious))
		&& (Char_Einhand.aivar[AIV_WirdVersorgt] > 0)
		{
			if (Char_Einhand.aivar[AIV_WirdVersorgt] == 3)
			{
				if (Npc_IsInState(Char_Bogen, ZS_Attack))
				|| (C_NpcIsDown(Char_Bogen))
				{
					Char_Einhand.aivar[AIV_WirdVersorgt] = 0;
					Char_Einhand.aivar[AIV_Versorgungszeit] = 0;

					Char_Bogen.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Bogen, Char_Einhand) < 400)
					&& (CurrentTime > Char_Einhand.aivar[AIV_LastVersorgt])
					{
						Char_Einhand.aivar[AIV_Versorgungszeit] += 1;

						Char_Einhand.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Einhand.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Einhand.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Bogen.aivar[AIV_Belebt] = 0;
							Char_Einhand.aivar[AIV_WirdVersorgt] = 0;

							DiegoPoints += 2;

							PrintDebug ("Punkte: Diego + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Einhand.aivar[AIV_WirdVersorgt] == 2)
			{
				if (Npc_IsInState(Char_Zweihand, ZS_Attack))
				|| (C_NpcIsDown(Char_Zweihand))
				{
					Char_Einhand.aivar[AIV_WirdVersorgt] = 0;
					Char_Einhand.aivar[AIV_Versorgungszeit] = 0;

					Char_Zweihand.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Zweihand, Char_Einhand) < 400)
					&& (CurrentTime > Char_Einhand.aivar[AIV_LastVersorgt])
					{
						Char_Einhand.aivar[AIV_Versorgungszeit] += 1;

						Char_Einhand.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Einhand.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Einhand.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Zweihand.aivar[AIV_Belebt] = 0;
							Char_Einhand.aivar[AIV_WirdVersorgt] = 0;

							GornPoints += 2;

							PrintDebug ("Punkte: Gorn + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Einhand.aivar[AIV_WirdVersorgt] == 4)
			{
				if (Npc_IsInState(Char_Magie, ZS_Attack))
				|| (C_NpcIsDown(Char_Magie))
				{
					Char_Einhand.aivar[AIV_WirdVersorgt] = 0;
					Char_Einhand.aivar[AIV_Versorgungszeit] = 0;

					Char_Magie.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Magie, Char_Einhand) < 400)
					&& (CurrentTime > Char_Einhand.aivar[AIV_LastVersorgt])
					{
						Char_Einhand.aivar[AIV_Versorgungszeit] += 1;

						Char_Einhand.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Einhand.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Einhand.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Magie.aivar[AIV_Belebt] = 0;
							Char_Einhand.aivar[AIV_WirdVersorgt] = 0;

							MiltenPoints += 2;

							PrintDebug ("Punkte: Milten + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (Char_Einhand.aivar[AIV_WirdVersorgt] == 5)
			{
				if (C_NpcIsDown(hero))
				{
					Char_Einhand.aivar[AIV_WirdVersorgt] = 0;
					Char_Einhand.aivar[AIV_Versorgungszeit] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(hero, Char_Einhand) < 400)
					&& (CurrentTime > Char_Einhand.aivar[AIV_LastVersorgt])
					{
						Char_Einhand.aivar[AIV_Versorgungszeit] += 1;

						Char_Einhand.aivar[AIV_LastVersorgt] = CurrentTime;

						if (Char_Einhand.aivar[AIV_Versorgungszeit] == 5)
						{
							Char_Einhand.aivar[AIV_Wiederbelebt] = TRUE;
							Char_Einhand.aivar[AIV_WirdVersorgt] = 0;

							if (Mod_Charakter == 1)
							{
								LesterPoints += 2;
							}
							else if (Mod_Charakter == 2)
							{
								GornPoints += 2;
							}
							else if (Mod_Charakter == 3)
							{
								DiegoPoints += 2;
							}
							else if (Mod_Charakter == 4)
							{
								MiltenPoints += 2;
							};
						};
					};
				};
			};
		};
	};


	if (Mod_Charakter != 0)
	{
		if (Npc_IsInState(hero, ZS_Unconscious))
		&& (hero.aivar[AIV_WirdVersorgt] > 0)
		{
			if (hero.aivar[AIV_WirdVersorgt] == 3)
			{
				if (Npc_IsInState(Char_Bogen, ZS_Attack))
				|| (C_NpcIsDown(Char_Bogen))
				{
					hero.aivar[AIV_WirdVersorgt] = 0;
					hero.aivar[AIV_Versorgungszeit] = 0;

					Char_Bogen.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Bogen, hero) < 400)
					&& (CurrentTime > hero.aivar[AIV_LastVersorgt])
					{
						hero.aivar[AIV_Versorgungszeit] += 1;

						hero.aivar[AIV_LastVersorgt] = CurrentTime;

						if (hero.aivar[AIV_Versorgungszeit] == 5)
						{
							hero.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Bogen.aivar[AIV_Belebt] = 0;
							hero.aivar[AIV_WirdVersorgt] = 0;

							DiegoPoints += 2;

							PrintDebug ("Punkte: Diego + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (hero.aivar[AIV_WirdVersorgt] == 2)
			{
				if (Npc_IsInState(Char_Zweihand, ZS_Attack))
				|| (C_NpcIsDown(Char_Zweihand))
				{
					hero.aivar[AIV_WirdVersorgt] = 0;
					hero.aivar[AIV_Versorgungszeit] = 0;

					Char_Zweihand.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Zweihand, hero) < 400)
					&& (CurrentTime > hero.aivar[AIV_LastVersorgt])
					{
						hero.aivar[AIV_Versorgungszeit] += 1;

						hero.aivar[AIV_LastVersorgt] = CurrentTime;

						if (hero.aivar[AIV_Versorgungszeit] == 5)
						{
							hero.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Zweihand.aivar[AIV_Belebt] = 0;
							hero.aivar[AIV_WirdVersorgt] = 0;

							GornPoints += 2;

							PrintDebug ("Punkte: Gorn + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (hero.aivar[AIV_WirdVersorgt] == 1)
			{
				if (Npc_IsInState(Char_Einhand, ZS_Attack))
				|| (C_NpcIsDown(Char_Einhand))
				{
					hero.aivar[AIV_WirdVersorgt] = 0;
					hero.aivar[AIV_Versorgungszeit] = 0;

					Char_Einhand.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Einhand, hero) < 400)
					&& (CurrentTime > hero.aivar[AIV_LastVersorgt])
					{
						hero.aivar[AIV_Versorgungszeit] += 1;

						hero.aivar[AIV_LastVersorgt] = CurrentTime;

						if (hero.aivar[AIV_Versorgungszeit] == 5)
						{
							hero.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Einhand.aivar[AIV_Belebt] = 0;
							hero.aivar[AIV_WirdVersorgt] = 0;

							LesterPoints += 2;

							PrintDebug ("Punkte: Lester + 2 für Wiederbelebung");
						};
					};
				};
			}
			else if (hero.aivar[AIV_WirdVersorgt] == 4)
			{
				if (Npc_IsInState(Char_Magie, ZS_Attack))
				|| (C_NpcIsDown(Char_Magie))
				{
					hero.aivar[AIV_WirdVersorgt] = 0;
					hero.aivar[AIV_Versorgungszeit] = 0;

					Char_Magie.aivar[AIV_Belebt] = 0;
				}
				else
				{
					if (Npc_GetDistToNpc(Char_Magie, hero) < 400)
					&& (CurrentTime > hero.aivar[AIV_LastVersorgt])
					{
						hero.aivar[AIV_Versorgungszeit] += 1;

						hero.aivar[AIV_LastVersorgt] = CurrentTime;

						if (hero.aivar[AIV_Versorgungszeit] == 5)
						{
							hero.aivar[AIV_Wiederbelebt] = TRUE;

							Char_Magie.aivar[AIV_Belebt] = 0;
							hero.aivar[AIV_WirdVersorgt] = 0;

							MiltenPoints += 2;

							PrintDebug ("Punkte: Milten + 2 für Wiederbelebung");
						};
					};
				};
			};
		};
	};
};