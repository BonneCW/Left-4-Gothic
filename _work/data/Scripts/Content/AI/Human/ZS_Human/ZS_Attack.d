// ******************************
// ZS_Attack
// ---------
// Angreifen oder Fliehen
// wird durch B_Attack aufgerufen
// ******************************

func void B_AssessSurprise()
{
	Npc_SetTarget (self, other); //Ziel wechseln
	
	// ------ HACK: AR ändern wegen B_Says, mögl. GateGuards, mögl. Mörder, etc. -------
	self.aivar[AIV_ATTACKREASON] = AR_GuildEnemy;
};

func void ZS_Attack ()
{
	Perception_Set_Minimal();				//alle diese Wahrnehmungen werden den ZS_Attack NICHT verlassen

	// ------ lokale Wahrnehmung für verwandelten SC ------
	Npc_PercEnable (self, PERC_ASSESSSURPRISE , B_AssessSurprise);

	B_ValidateOther();
	self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID (other);
	
	
	//EXIT IF
	
	// ------ NSC will fliehen ------
	if (C_WantToFlee (self, other))					
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget 		(self, other);
		AI_StartState 		(self, ZS_Flee, 0, "");
		return;
	};

		
	// FUNC
	
	// ------ Nicht bei LOAD GAME ------
	if (self.aivar[AIV_LOADGAME] == FALSE)
	{
		// ------ Grund des Angriffs nennen ------
		B_Say_AttackReason();
	};

	if (Npc_HasItems(self, ItMw_Lester_01_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Lester_01_World, 1);
		CreateInvItems	(self, ItMw_Lester_01, 1);
	};

	if (Npc_HasItems(self, ItMw_Lester_02_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Lester_02_World, 1);
		CreateInvItems	(self, ItMw_Lester_02, 1);
	};

	if (Npc_HasItems(self, ItMw_Lester_03_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Lester_03_World, 1);
		CreateInvItems	(self, ItMw_Lester_03, 1);
	};

	if (Npc_HasItems(self, ItMw_Lester_04_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Lester_04_World, 1);
		CreateInvItems	(self, ItMw_Lester_04, 1);
	};

	if (Npc_HasItems(self, ItMw_Lester_05_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Lester_05_World, 1);
		CreateInvItems	(self, ItMw_Lester_05, 1);
	};

	if (Npc_HasItems(self, ItMw_Lester_06_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Lester_06_World, 1);
		CreateInvItems	(self, ItMw_Lester_06, 1);
	};

	if (Npc_HasItems(self, ItMw_Gorn_01_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Gorn_01_World, 1);
		CreateInvItems	(self, ItMw_Gorn_01, 1);
	};

	if (Npc_HasItems(self, ItMw_Gorn_02_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Gorn_02_World, 1);
		CreateInvItems	(self, ItMw_Gorn_02, 1);
	};

	if (Npc_HasItems(self, ItMw_Gorn_03_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Gorn_03_World, 1);
		CreateInvItems	(self, ItMw_Gorn_03, 1);
	};

	if (Npc_HasItems(self, ItMw_Gorn_04_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Gorn_04_World, 1);
		CreateInvItems	(self, ItMw_Gorn_04, 1);
	};

	if (Npc_HasItems(self, ItMw_Gorn_05_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Gorn_05_World, 1);
		CreateInvItems	(self, ItMw_Gorn_05, 1);
	};

	if (Npc_HasItems(self, ItMw_Gorn_06_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Gorn_06_World, 1);
		CreateInvItems	(self, ItMw_Gorn_06, 1);
	};

	if (Npc_HasItems(self, ItMw_Milten_01_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Milten_01_World, 1);
		CreateInvItems	(self, ItMw_Milten_01, 1);
	};

	if (Npc_HasItems(self, ItMw_Milten_02_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Milten_02_World, 1);
		CreateInvItems	(self, ItMw_Milten_02, 1);
	};

	if (Npc_HasItems(self, ItMw_Milten_03_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Milten_03_World, 1);
		CreateInvItems	(self, ItMw_Milten_03, 1);
	};

	if (Npc_HasItems(self, ItMw_Diego_01_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Diego_01_World, 1);
		CreateInvItems	(self, ItMw_Diego_01, 1);
	};

	if (Npc_HasItems(self, ItMw_Diego_02_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Diego_02_World, 1);
		CreateInvItems	(self, ItMw_Diego_02, 1);
	};

	if (Npc_HasItems(self, ItMw_Diego_03_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItMw_Diego_03_World, 1);
		CreateInvItems	(self, ItMw_Diego_03, 1);
	};

	if (Npc_HasItems(self, ItRw_Diego_01_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItRw_Diego_01_World, 1);
		CreateInvItems	(self, ItRw_Diego_01, 1);
	};

	if (Npc_HasItems(self, ItRw_Diego_02_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItRw_Diego_02_World, 1);
		CreateInvItems	(self, ItRw_Diego_02, 1);
	};

	if (Npc_HasItems(self, ItRw_Diego_03_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItRw_Diego_03_World, 1);
		CreateInvItems	(self, ItRw_Diego_03, 1);
	};

	if (Npc_HasItems(self, ItRw_Diego_04_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItRw_Diego_04_World, 1);
		CreateInvItems	(self, ItRw_Diego_04, 1);
	};

	if (Npc_HasItems(self, ItRw_Diego_05_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItRw_Diego_05_World, 1);
		CreateInvItems	(self, ItRw_Diego_05, 1);
	};

	if (Npc_HasItems(self, ItRw_Diego_06_World) > 0)
	{
		Npc_RemoveInvItems	(self, ItRw_Diego_06_World, 1);
		CreateInvItems	(self, ItRw_Diego_06, 1);
	};
	
	// ------ Die besten Waffen equippen ------
	if (Npc_IsInFightMode(self,FMODE_NONE))			//nur wenn self keine Waffe gezogen hat
	{
		AI_EquipBestRangedWeapon 	(self);
		AI_EquipBestMeleeWeapon 	(self);	
	};
		
	AI_StandUp		(self); 
	B_StopLookAt	(self);
	B_TurnToNpc		(self, other);
	AI_SetWalkmode 	(self, NPC_RUN);

	// ------ GuardPassage_Status resetten ------
	self.aivar[AIV_Guardpassage_Status]	= GP_NONE;
	
	// ------ Absolutionslevel initialisieren (bei LOC_NONE immer 0) ------
	self.aivar[AIV_LastAbsolutionLevel]	= B_GetCurrentAbsolutionLevel(self);
	
	// ------ Verfolgugsabbruch unwahr (resetten) ------
	self.aivar[AIV_PursuitEnd] = FALSE;
	
	// ------ Verfolgungs-Zwischendistanz-Ausrichutung ------
	self.aivar[AIV_StateTime] = 0;
	
	// ------ Nur einmal Wachen rufen (resetten) ------
	self.aivar[AIV_TAPOSITION] = 0;
	
	// ------ wie oft bin ich von Nicht-Target getroffen worden ------
	self.aivar[AIV_HitByOtherNpc] = 0;
	
	// ------ Für Magier ------
	self.aivar[AIV_SelectSpell] = 0; //Für Magier;
};

func int ZS_Attack_Loop ()
{
	// ----- NICHT unten, sonst bei LOAD Game other trotz B_ValidateOther verloren! Warum??? -----
	Npc_GetTarget (self); // other = target
	
	if (self.guild == other.guild)
	|| (other.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		return LOOP_END;
	};

	if (Npc_IsInFightMode(self, FMODE_FAR))
	|| (Npc_IsInFightMode(self, FMODE_MAGIC))
	{
		// Gucken, ob einer in Schussbahn steht

		if (B_GetDist(self, other, Char_Einhand) < 300)
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

			if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
			{
				Lester_Strafing = 1;
			}
			else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
			{
				Lester_Strafing = 2;
			};
		}
		else if (B_GetDist(self, other, Char_Einhand) > 300)
		&& (Lester_Strafing)
		{
			// Strafen lassen

			if ((Lester_Strafing == 1)
			&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen)))
			|| ((Lester_Strafing == 2)
			&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie)))
			{
				Npc_ClearAIQueue (Char_Einhand);

				AI_StandUP (Char_Einhand);

				Lester_Strafing = FALSE;
			};
		};

		if (B_GetDist(self, other, Char_Zweihand) < 300)
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

			if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
			{
				Gorn_Strafing = 1;
			}
			else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
			{
				Gorn_Strafing = 2;
			};
		}
		else if (B_GetDist(self, other, Char_Zweihand) > 300)
		&& (Gorn_Strafing)
		{
			// Strafen lassen

			if ((Gorn_Strafing == 1)
			&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen)))
			|| ((Gorn_Strafing == 2)
			&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie)))
			{
				Npc_ClearAIQueue (Char_Zweihand);

				AI_StandUP (Char_Zweihand);

				Gorn_Strafing = FALSE;
			};
		};

		if (B_GetDist(self, other, Char_Bogen) < 300)
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

			if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
			{
				Diego_Strafing = 2;
			};
		}
		else if (B_GetDist(self, other, Char_Bogen) > 300)
		&& (Diego_Strafing)
		{
			// Strafen lassen

			if ((Diego_Strafing == 1)
			&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen)))
			|| ((Diego_Strafing == 2)
			&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie)))
			{
				Npc_ClearAIQueue (Char_Bogen);

				AI_StandUP (Char_Bogen);

				Diego_Strafing = FALSE;
			};
		};

		if (B_GetDist(self, other, Char_Magie) < 300)
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

			if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
			{
				Milten_Strafing = 1;
			};
		}
		else if (B_GetDist(self, other, Char_Magie) > 300)
		&& (Milten_Strafing)
		{
			// Strafen lassen

			if ((Milten_Strafing == 1)
			&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen)))
			|| ((Milten_Strafing == 2)
			&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie)))
			{
				Npc_ClearAIQueue (Char_Magie);

				AI_StandUP (Char_Magie);

				Milten_Strafing = FALSE;
			};
		};

		if (B_GetDist(self, other, MiltenSkelett) < 300)
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

			if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
			{
				MiltenSkelett_Strafing = 1;
			}
			else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
			{
				MiltenSkelett_Strafing = 2;
			};
		}
		else if (B_GetDist(self, other, MiltenSkelett) > 300)
		&& (MiltenSkelett_Strafing)
		{
			// Strafen lassen

			if ((MiltenSkelett_Strafing == 1)
			&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen)))
			|| ((MiltenSkelett_Strafing == 2)
			&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie)))
			{
				Npc_ClearAIQueue (MiltenSkelett);

				AI_StandUP (MiltenSkelett);

				MiltenSkelett_Strafing = FALSE;
			};
		};
	};

	if (other.aivar[AIV_Markiert] == 0)
	{
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Einhand))
		{
			other.aivar[AIV_Markiert] = 1;
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Zweihand))
		{
			other.aivar[AIV_Markiert] = 2;
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
		{
			other.aivar[AIV_Markiert] = 3;
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
		{
			other.aivar[AIV_Markiert] = 4;
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
		{
			other.aivar[AIV_Markiert] = 5;
		};
	};

	if (Npc_GetDistToNpc(other, self) < FIGHT_DIST_RANGED_OUTER)
	{
		self.aivar[AIV_Markiert] = 6;
	};

	if (other.aivar[AIV_Markiert] > 0)
	&& (!C_IsBossMonster(other))
	{
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Einhand))
		&& (other.aivar[AIV_Markiert] != 1)
		&& (other.aivar[AIV_Markiert] != 6)
		{
			return LOOP_END;
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Zweihand))
		&& (other.aivar[AIV_Markiert] != 2)
		&& (other.aivar[AIV_Markiert] != 6)
		{
			return LOOP_END;
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
		&& (other.aivar[AIV_Markiert] != 3)
		&& (other.aivar[AIV_Markiert] != 6)
		{
			return LOOP_END;
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
		&& (other.aivar[AIV_Markiert] != 4)
		&& (other.aivar[AIV_Markiert] != 6)
		{
			return LOOP_END;
		};
	};
	
	// EXIT LOOP IF...
	
	// ------ Kampfabbruch, wenn zu weit weg ------
	if (Npc_GetDistToNpc (self, other) > self.aivar[AIV_FightDistCancel])
	{
		Npc_ClearAIQueue(self);
		AI_StandUp		(self);
		self.aivar[AIV_PursuitEnd] = TRUE;
		return LOOP_END;
	};
	
	// ------ Gegner wird schon zu lange verfolgt ------
	if (Npc_GetStateTime (self) > self.aivar[AIV_MM_FollowTime])
	&& (self.aivar[AIV_PursuitEnd] == FALSE)
	{
		Npc_ClearAIQueue(self);
		AI_StandUp		(self);
		self.aivar[AIV_PursuitEnd] = TRUE;
		self.aivar[AIV_Dist] = Npc_GetDistToNpc(self, other);
		self.aivar[AIV_StateTime] = Npc_GetStateTime (self); 
		
		// ------ Einen Spruch aufsagen ------
		if (other.guild < GIL_SEPERATOR_HUM) //NICHT bei Monstern oder bei verwandeltem SC
		{
			B_Say (self, other,	"$RUNCOWARD");
		};
	};
	
	// ------ Warten, ob Feind auch wirklich flieht ------
	if (self.aivar[AIV_PursuitEnd] == TRUE)
	{
		// ------ weit genug weg ------
		if (Npc_GetDistToNpc (self, other) > (self.senses_range))
		{
			return LOOP_END;
		};
				
		// ------ einmal pro Sekunde ------	
		if (Npc_GetStateTime (self) > self.aivar[AIV_StateTime])
		{
			// ------ Feind kommt zurück ODER bleibt stehen ------
			if (Npc_GetDistToNpc(self, other) < self.aivar[AIV_Dist])
			|| ( (!C_BodyStateContains(other,BS_RUN)) && (!C_BodyStateContains(other, BS_JUMP)) )
			{
				self.aivar[AIV_PursuitEnd] = FALSE;
				Npc_SetStateTime (self, 0);
				self.aivar[AIV_StateTime] = 0;
				// --> und weiter im Text!	
			}
			else
			{
				B_TurnToNpc (self, other);
				self.aivar[AIV_Dist] = Npc_GetDistToNpc(self, other);
				self.aivar[AIV_StateTime] = Npc_GetStateTime (self);
			};
		};
		
		return LOOP_CONTINUE;
	};

	// ------ wenn Absolutionslevel im Kampf > als beim Kampf-start --> Abbruch ------
	if (B_GetCurrentAbsolutionLevel(self) > self.aivar[AIV_LastAbsolutionLevel])
	{
		Npc_ClearAIQueue(self);
		AI_StandUp		(self);
		return LOOP_END;
	};
	
	// ------ Gegner geht ins Wasser und ich will nicht schwimmen ------
	if (C_BodyStateContains(other,BS_SWIM) || C_BodyStateContains(other,BS_DIVE))
	&& (self.aivar[AIV_MM_FollowInWater] == FALSE)
	{
		Npc_ClearAIQueue(self);
		AI_StandUp		(self);
		self.aivar[AIV_PursuitEnd] = TRUE;
		return LOOP_END;
	};
	
	
	// LOOP FUNC
	
	// ------ Vor Attacke kurz warten (bei Angriff aus Dialog) ------
	if (self.aivar[AIV_WaitBeforeAttack] >= 1) //nur einmal
	{
		AI_Wait (self, 0.8);
		self.aivar[AIV_WaitBeforeAttack] = 0;
	};
	
	// ------ Wenn Max-Entfernung zum WP angegeben ------
	if (self.aivar[AIV_MaxDistToWp] > 0)
	{
		if (Npc_GetDistToWP(self, self.wp) > self.aivar[AIV_MaxDistToWp])
		&& (Npc_GetDistToWP(other, self.wp) > self.aivar[AIV_MaxDistToWp])
		{
			self.fight_tactic = FAI_NAILED;
		}
		else //einer von beiden nah genug am self.wp
		{
			self.fight_tactic = self.aivar[AIV_OriginalFightTactic];
		};
	};
	
	// ------ Verfolgungstimer resetten ------
	if ( (!C_BodyStateContains(other,BS_RUN)) && (!C_BodyStateContains(other, BS_JUMP)) )
	{
		Npc_SetStateTime (self, 0);
	};
	
	// ------ ggf. Wachen rufen ------
	if (Npc_GetStateTime (self) > 2)
	&& (self.aivar[AIV_TAPOSITION] == 0)
	{
		B_CallGuards();
		self.aivar[AIV_TAPOSITION] = 1;
	};
	
	// ------ Nochmal bei Verfolgung Wachen rufen ------
	if (Npc_GetStateTime (self) > 8)
	&& (self.aivar[AIV_TAPOSITION] == 1)
	{
		B_CallGuards();
		self.aivar[AIV_TAPOSITION] = 2;
	};
	
	// ------ ggf. Munition generieren ------
	B_CreateAmmo(self);							//muß VOR SelectWeapon kommen, weil sonst Bogen bei fehlender Muni nicht gezogen wird

	// ------ immer volles MANA ------
	//wird in B_ReadySpell gemacht

	// ------ Waffe ziehen oder wechseln ------
	B_SelectWeapon (self, other);				//Waffe oder Spell ziehen
	
	// ------ ATTACK ------
	if ((Hlp_IsValidNpc(other)) 							
	&& (C_NpcIsDown(other) == FALSE))
	{
		if (other.aivar[AIV_INVINCIBLE] == FALSE) // Nur NSCs angreifen, die NICHT im Talk sind
		{
												//führt Angriff mit Waffe oder Spell aus (Aktion wird durch FAI bestimmt)
			AI_Attack (self);		 			//In der Funktion, in der AI_Attack aufgerufen wird DARF KEIN AI_ Befehl VOR AI_Attack kommen, da sonst AI_Attack ignoriert wird
												//(AI-Attack funktioniert NUR, wenn die AIqueue leer ist!)
		}
		else
		{
			Npc_ClearAIQueue(self); //killt den letzten AI_Attack-Befehl, verhindert z.B. stumpfes weiterrennen.
		};
		
		self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID (other);
		
		return LOOP_CONTINUE;
	}
	else //target ungültig (tot) oder down		// falls NPC_GetTarget(self) == FALSE --> other hier automatisch gelöscht
	{
		// ------ noch in der Queue befindliche Attacks löschen ------
		Npc_ClearAIQueue(self);
		
		// ------ wenn Spieler niedergeschlagen, temp_att (upset) resetten ------
		if (Hlp_IsValidNpc(other))
		&& (Npc_IsPlayer(other))
		&& (C_NpcIsDown(other))
		{
			Npc_SetTempAttitude(self, Npc_GetPermAttitude(self,hero));
		};
		
		// ------ NUR neues Ziel wählen, wenn AR NICHT Kill ------
		if (self.aivar [AIV_ATTACKREASON] != AR_KILL)
		{
			Npc_PerceiveAll	(self);					// nötig, da Npc_GetNextTarget() auf der Liste der zuletzt Wahrgenommenen VOBs beruht, und das kann hier schon ne Weile her sein, denn ZS_Attack hat keine aktiven Wahrnehmungen
			Npc_GetNextTarget (self);
		};
		
		// ----- ist neues Ziel gefunden, in Reichweite, nicht down, nicht im Dialog, nicht FakeBandit und ich selbst Bandit? Dann neues Ziel, sonst End ------
		if (Hlp_IsValidNpc(other))
		&& (!C_NpcIsDown(other))
		&& ( (Npc_GetDistToNpc(self, other) < PERC_DIST_INTERMEDIAT) || (Npc_IsPlayer(other)) ) //Bei Nicht-Player Enemies nur auf 1000m reagieren (sonst PERC_DIST_ACTIVE_MAX)
		&& (Npc_GetHeightToNpc(self, other) < PERC_DIST_HEIGHT)
		&& (other.aivar[AIV_INVINCIBLE] == FALSE)
		&& ( ! ( C_PlayerIsFakeBandit(self, other) && (self.guild == GIL_BDT) ) )
		{																										
			if (Wld_GetGuildAttitude(self.guild, other.guild) == ATT_HOSTILE)
			{
				self.aivar[AIV_ATTACKREASON] = AR_GuildEnemy;
				
				if (Npc_IsPlayer(other))
				{
					self.aivar[AIV_LastPlayerAR] = AR_GuildEnemy;
					self.aivar[AIV_LastFightAgainstPlayer] = FIGHT_CANCEL;
					self.aivar[AIV_LastFightComment] = FALSE;
				};
			}
			else if (Npc_GetAttitude(self, other) == ATT_HOSTILE) //Temp hostile (upset) zum Spieler
			// UND Npc_IsPlayer(other), weil ich NUR zum Player Temp_Att haben kann!
			{
				self.aivar[AIV_ATTACKREASON] = self.aivar[AIV_LastPlayerAR];
			};
			
			return LOOP_CONTINUE;
		}
		else 									// wenn false, wird other gelöscht!
		{
			Npc_ClearAIQueue(self);
			
			if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_CANCEL)
			&& (self.aivar[AIV_LASTTARGET] != Hlp_GetInstanceID (hero)) //letztes Ziel NICHT Player
			{
				self.aivar[AIV_LastFightComment] = TRUE; //kein Kommentar abegeben
			};
			
			return LOOP_END;
		};
	};
};

func void ZS_Attack_End ()
{
	// ------ other wieder holen, ist hier auf jeden Fall gelöscht! ------
	other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);	
	
	// ----- Nachbereitung bei Verfolgungsabbruch ------
	if (self.aivar[AIV_PursuitEnd] == TRUE)
	{		
		// ------ TEMP_Hostile zum Player (NSC ist "upset") ------
		if (Hlp_IsValidNpc(other)) 	
		&& (Npc_IsPlayer (other))
		&& (self.npctype != NPCTYPE_FRIEND)
		{
			Npc_SetTempAttitude(self, ATT_HOSTILE);
		};
		
		// ------- Arenafight Ende -------		
		if (self.aivar[AIV_ArenaFight] == AF_RUNNING)
		{
			self.aivar[AIV_ArenaFight] = AF_AFTER;
		};
	};

	// ------ Kampf zuende ------
	if (self.aivar[AIV_PursuitEnd] == FALSE)
	{
		// ------ wenn Spieler während der Verfolgung Absolution erlangt hat ------
		if (B_GetCurrentAbsolutionLevel(self) > self.aivar[AIV_LastAbsolutionLevel])
		{
			B_Say (self, other , "$WISEMOVE");
		}
		else //Normales Kampfende
		{
			B_Say_AttackEnd();
		};
	};
	
	// ------ mein Gegner vom Spieler getötet ------
	if (other.aivar[AIV_KilledByPlayer] == TRUE)
	&& (Wld_GetGuildAttitude(self.guild, hero.guild) != ATT_HOSTILE)
	{
		B_SetAttitude(self, ATT_FRIENDLY);
	};
	
	// ------ Finishing Move ------
	if (Npc_IsInState (other, ZS_Unconscious))
	&& (C_NpcHasAttackReasonToKill (self))
	{
		B_FinishingMove (self, other);
	};
	
	// ------ Waffe weg -------
	AI_RemoveWeapon (self);


	
	// ------ Plündern ------
	if (C_NpcIsDown(other))
	&& (C_WantToRansack(self))
	&& ( (other.aivar[AIV_RANSACKED] == FALSE) || C_NpcRansacksAlways(self) )
	&& (Npc_GetDistToNpc(self, other) < PERC_DIST_INTERMEDIAT)
	{
		// ------ Opfer wird markiert, damit nur EINER plündert - abgefragt vor Aufruf von ZS_RansackBody -------
		other.aivar[AIV_RANSACKED] = TRUE;						//FALSE gesetzt in ZS_Unconcious_End und ZS_Dead
		
		if (other.guild < GIL_SEPERATOR_HUM)	
		{
			AI_StartState (self, ZS_RansackBody, 0, "");
			return;
		}
		else //(other.guild > GIL_SEPERATOR_HUM)
		{
			// ------ AlliJack nimmt Fleisch ------
			
		};
	};

	// ------ NSC heilt sich ------
	if (self.attribute[ATR_HITPOINTS] < (self.attribute[ATR_HITPOINTS_MAX]/2))
	{
		AI_StartState	(self, ZS_HealSelf, 0, "");
		return;
	};
};







