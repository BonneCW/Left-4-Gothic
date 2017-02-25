// *****************************************
// ZS_Dead
// -------
// wird auch nach jedem Load Game ausgeführt
// wird auch vom Spieler ausgeführt
// *****************************************

func void ZS_Dead ()
{	
	// ------ aivars resetten ------
	self.aivar[AIV_RANSACKED] = FALSE;
	self.aivar[AIV_PARTYMEMBER] = FALSE;

	var int Randi;
	
	B_StopLookAt	(self);
	AI_StopPointAt	(self);

	// ------ XP ------
	if ( Npc_IsPlayer(other) || (other.aivar[AIV_PARTYMEMBER]==TRUE) )
	&& (self.aivar[AIV_VictoryXPGiven] == FALSE)							
	{
		B_GivePlayerXP (self.level * XP_PER_VICTORY);			
		
		self.aivar[AIV_VictoryXPGiven] = TRUE;
	};
	
	
	if (Npc_IsPlayer(other))
	{
		self.aivar[AIV_KilledByPlayer] = TRUE;
	};

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(MiltenSkelett))
	{
		Mod_MiltenSkelett -= 1;
	};

	if (self.guild > GIL_SEPERATOR_HUM)
	&& (self.guild != GIL_SUMMONED_SKELETON)
	{
		Monster_Counter += 1;

		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Zombie))
		|| (!C_IsBossMonster(self))
		|| (self.level == 10)
		{
			if (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Char_Magie))
			|| ((C_NpcIsHero(other))
			&& (Mod_Charakter == 4))
			|| (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(MiltenSkelett))
			{
				MiltenPoints += 1;

				PrintDebug ("Punkte: Milten + 1 für Kill");
			}
			else if (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Char_Bogen))
			|| ((C_NpcIsHero(other))
			&& (Mod_Charakter == 3))
			{
				DiegoPoints += 1;

				PrintDebug ("Punkte: Diego + 1 für Kill");
			}
			else if (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Char_Zweihand))
			|| ((C_NpcIsHero(other))
			&& (Mod_Charakter == 2))
			{
				GornPoints += 1;

				PrintDebug ("Punkte: Gorn + 1 für Kill");
			}
			else if (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Char_Einhand))
			|| ((C_NpcIsHero(other))
			&& (Mod_Charakter == 1))
			{
				LesterPoints += 1;

				PrintDebug ("Punkte: Lester + 1 für Kill");
			};
		}
		else if (C_IsBossMonster(self))
		|| (self.level == 500)
		{
			if (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Char_Magie))
			|| ((C_NpcIsHero(other))
			&& (Mod_Charakter == 4))
			|| (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(MiltenSkelett))
			{
				if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Boomer))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Hunter))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Hordenfuehrer))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Smoker))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Spitter))
				{
					MiltenPoints += 3;
				}
				else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Witch))
				{
					MiltenPoints += 4;
				}
				else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Tank))
				{
					MiltenPoints += 5;
				};
			}
			else if (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Char_Bogen))
			|| ((C_NpcIsHero(other))
			&& (Mod_Charakter == 3))
			{
				if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Boomer))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Hunter))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Hordenfuehrer))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Smoker))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Spitter))
				{
					DiegoPoints += 3;
				}
				else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Witch))
				{
					DiegoPoints += 4;
				}
				else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Tank))
				{
					DiegoPoints += 5;
				};
			}
			else if (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Char_Zweihand))
			|| ((C_NpcIsHero(other))
			&& (Mod_Charakter == 2))
			{
				if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Boomer))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Hunter))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Hordenfuehrer))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Smoker))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Spitter))
				{
					GornPoints += 3;
				}
				else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Witch))
				{
					GornPoints += 4;
				}
				else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Tank))
				{
					GornPoints += 5;
				};
			}
			else if (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Char_Einhand))
			|| ((C_NpcIsHero(other))
			&& (Mod_Charakter == 1))
			{
				if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Boomer))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Hunter))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Hordenfuehrer))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Smoker))
				|| (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Spitter))
				{
					LesterPoints += 3;
				}
				else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Witch))
				{
					LesterPoints += 4;
				}
				else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Tank))
				{
					LesterPoints += 5;
				};
			};
			
			if (C_NpcIsHero(other)) {
				Spine_UnlockAchievement(L4G_ERFOLG_BOSSKILLER);
			};

			if (Hlp_GetInstanceID(other) != Hlp_GetInstanceID(MiltenSkelett))
			{
				Randi = Hlp_Random(2);

				if (Randi == 0)
				{
					B_Say_Overlay	(other, NULL, "$KILLEDBOSS01");
				}
				else if (Randi == 1)
				{
					B_Say_Overlay	(other, NULL, "$KILLEDBOSS02");
				};
			};
		};
	};

	// ------ Monster-Inventory abhängig vom Spieler-Talent ------
	B_GiveDeathInv(self);
	
	// ------ PetzCounter meiner Home-Location runtersetzen ------
	B_DeletePetzCrime (self); //hat bei CRIME_NONE (oder keiner Home-Location) keine Auswirkungen
	self.aivar[AIV_NpcSawPlayerCommit] = CRIME_NONE;
	
	// ------ Equippte Waffen können nicht genommen werden! ------
	AI_UnequipWeapons (self);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Boomer))
	{
		if (Npc_GetDistToNpc(Char_Magie, self) < 500)
		{
			if (Char_Magie.attribute[ATR_HITPOINTS] > 75)
			{
				Char_Magie.attribute[ATR_HITPOINTS] -= 75;
			}
			else
			{
				Char_Magie.attribute[ATR_HITPOINTS] = 1;
			};

			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);

			Monster_Max += 10;
		};
		if (Npc_GetDistToNpc(Char_Bogen, self) < 500)
		{
			if (Char_Bogen.attribute[ATR_HITPOINTS] > 75)
			{
				Char_Bogen.attribute[ATR_HITPOINTS] -= 75;
			}
			else
			{
				Char_Bogen.attribute[ATR_HITPOINTS] = 1;
			};

			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);

			Monster_Max += 10;
		};
		if (Npc_GetDistToNpc(Char_Zweihand, self) < 500)
		{
			if (Char_Zweihand.attribute[ATR_HITPOINTS] > 75)
			{
				Char_Zweihand.attribute[ATR_HITPOINTS] -= 75;
			}
			else
			{
				Char_Zweihand.attribute[ATR_HITPOINTS] = 1;
			};

			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);

			Monster_Max += 10;
		};
		if (Npc_GetDistToNpc(Char_Einhand, self) < 500)
		{
			if (Char_Einhand.attribute[ATR_HITPOINTS] > 75)
			{
				Char_Einhand.attribute[ATR_HITPOINTS] -= 75;
			}
			else
			{
				Char_Einhand.attribute[ATR_HITPOINTS] = 1;
			};

			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);

			Monster_Max += 10;
		};
		if (Npc_GetDistToNpc(hero, self) < 500)
		{
			if (hero.attribute[ATR_HITPOINTS] > 75)
			{
				hero.attribute[ATR_HITPOINTS] -= 75;
			}
			else
			{
				hero.attribute[ATR_HITPOINTS] = 1;
			};

			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);
			Wld_InsertNpc	(Zombie, self.wp);

			Monster_Max += 10;
		};
	};

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Einhand))
	{
		AI_StandUp	(self);
		Npc_ClearAIQueue	(self);

		LesterKnast = 1;

		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		AI_Teleport	(self, "KNAST");
		B_StartOtherRoutine	(self, "KNAST");
		AI_Teleport	(self, "KNAST");

		Npc_ClearAIQueue	(self);
	};

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Zweihand))
	{
		AI_StandUp	(self);
		Npc_ClearAIQueue	(self);

		GornKnast = 1;

		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		AI_Teleport	(self, "KNAST");
		B_StartOtherRoutine	(self, "KNAST");
		AI_Teleport	(self, "KNAST");

		Npc_ClearAIQueue	(self);
	};

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
	{
		AI_StandUp	(self);
		Npc_ClearAIQueue	(self);

		DiegoKnast = 1;

		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		AI_Teleport	(self, "KNAST");
		B_StartOtherRoutine	(self, "KNAST");
		AI_Teleport	(self, "KNAST");

		Npc_ClearAIQueue	(self);
	};

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
	{
		AI_StandUp	(self);
		Npc_ClearAIQueue	(self);

		MiltenKnast = 1;

		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		AI_Teleport	(self, "KNAST");
		B_StartOtherRoutine	(self, "KNAST");
		AI_Teleport	(self, "KNAST");

		Npc_ClearAIQueue	(self);
	};

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		AI_StandUp	(self);
		Npc_ClearAIQueue	(self);

		HeroKnast = 1;

		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		AI_Teleport	(self, "KNAST");
		B_StartOtherRoutine	(self, "KNAST");
		AI_Teleport	(self, "KNAST");

		Npc_ClearAIQueue	(self);
	};
	
	self.aivar[AIV_TAPOSITION] = FALSE;
};

func int ZS_Dead_loop ()
{
	// Drachen 
	if (self.aivar[AIV_TAPOSITION] == FALSE)
	{
		self.aivar[AIV_TAPOSITION] = TRUE;
	};

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Einhand))
	{
		AI_StandUp	(self);
		Npc_ClearAIQueue	(self);

		LesterKnast = 1;

		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		AI_Teleport	(self, "KNAST");
		B_StartOtherRoutine	(self, "KNAST");
		AI_Teleport	(self, "KNAST");

		Npc_ClearAIQueue	(self);

		Npc_SetStateTime(self, 0);
	
		return LOOP_END;
	}
	else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Zweihand))
	{
		AI_StandUp	(self);
		Npc_ClearAIQueue	(self);

		GornKnast = 1;

		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		AI_Teleport	(self, "KNAST");
		B_StartOtherRoutine	(self, "KNAST");
		AI_Teleport	(self, "KNAST");

		Npc_ClearAIQueue	(self);

		Npc_SetStateTime(self, 0);
	
		return LOOP_END;
	}
	else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
	{
		AI_StandUp	(self);
		Npc_ClearAIQueue	(self);

		DiegoKnast = 1;

		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		AI_Teleport	(self, "KNAST");
		B_StartOtherRoutine	(self, "KNAST");
		AI_Teleport	(self, "KNAST");

		Npc_ClearAIQueue	(self);

		Npc_SetStateTime(self, 0);
	
		return LOOP_END;
	}
	else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
	{
		AI_StandUp	(self);
		Npc_ClearAIQueue	(self);

		MiltenKnast = 1;

		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		AI_Teleport	(self, "KNAST");
		B_StartOtherRoutine	(self, "KNAST");
		AI_Teleport	(self, "KNAST");

		Npc_ClearAIQueue	(self);

		Npc_SetStateTime(self, 0);
	
		return LOOP_END;
	}
	else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		AI_StandUp	(self);
		Npc_ClearAIQueue	(self);

		HeroKnast = 1;

		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		AI_Teleport	(self, "KNAST");

		Npc_ClearAIQueue	(self);

		Npc_SetStateTime(self, 0);
	
		return LOOP_END;
	}
	else
	{
		return LOOP_CONTINUE;
	};
};
