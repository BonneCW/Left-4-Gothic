// ********************************
// ZS_Unconscious
// --------------
// wird auch vom Spieler ausgeführt
// ********************************

func void ZS_Unconscious ()
{	
	Npc_PercEnable  	(self,	PERC_ASSESSMAGIC		,	B_AssessMagic				);
		
	// EXIT IF...
	
	if (C_BodyStateContains(self, BS_SWIM))
	|| (C_BodyStateContains(self, BS_DIVE))
	{
		Npc_ClearAIQueue 	(self);
		B_ClearPerceptions	(self);
		AI_StartState 		(self, ZS_Dead, 0, "");
		return;
	};

	
	// FUNC
	
	// ------ Guardpassage resetten ------
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;
	self.aivar[AIV_Wiederbelebt] = FALSE;
	self.aivar[AIV_WirdVersorgt] = FALSE;
	
	// ------ RefuseTalk Counter resetten -----
	Npc_SetRefuseTalk(self,0);
	
	// ------ Immer wenn unconscious: Temp_Att (upset) zum Hero "resetten" ------
	Npc_SetTempAttitude(self, Npc_GetPermAttitude(self,hero));
	
	// ------ Bewegungs-Overlays resetten ------	
	B_StopLookAt	(self);
	AI_StopPointAt	(self);
	
	// ------ NSC hat gegen Spieler verloren ------
	if (self.guild < GIL_SEPERATOR_HUM)
	&& (Npc_IsPlayer(other))								
	{
		self.aivar[AIV_DefeatedByPlayer] = TRUE; //wird nur hier gesetzt, nie verändert!
		self.aivar[AIV_LastFightAgainstPlayer] = FIGHT_LOST;
		
		if (self.aivar[AIV_LastPlayerAR] == AR_NONE)
		&& (self.aivar[AIV_DuelLost] == FALSE) //also nur EINMAL
		&& (self.guild == GIL_SLD)
		{
			self.aivar[AIV_DuelLost] = TRUE;
		};
	
		if (self.aivar[AIV_ArenaFight] == AF_RUNNING)
		{
			self.aivar[AIV_ArenaFight] = AF_AFTER;
		};
	};
	
	// ------ NSC hat gegen Spieler gewonnen ------
	if (Npc_IsPlayer (self))
	{
		other.aivar[AIV_LastFightAgainstPlayer] = FIGHT_WON;
		
		if (other.aivar[AIV_ArenaFight] == AF_RUNNING)
		{
			other.aivar[AIV_ArenaFight] = AF_AFTER;
		};
	};
	
	// ------ XP ------
	if ( Npc_IsPlayer(other) || (other.aivar[AIV_PARTYMEMBER]==TRUE) )
	&& (self.aivar[AIV_VictoryXPGiven] == FALSE)
	{
		B_GivePlayerXP (self.level * XP_PER_VICTORY);
		
		self.aivar[AIV_VictoryXPGiven] = TRUE;
	};
			
	// ------ Equippte Waffen können nicht genommen werden! ------
	AI_UnequipWeapons (self);
	
};
	
func int ZS_Unconscious_Loop ()
{
	if (Npc_GetStateTime (self) < HAI_TIME_UNCONSCIOUS)
	&& (self.aivar[AIV_Wiederbelebt] == FALSE)
	{
		if (Npc_GetStateTime(self) == 20)
		{
			var int Randi;
			Randi = Hlp_Random(2);

			if (Randi == 0)
			{
				B_Say_Overlay	(self, NULL, "$HELFTENDLICH01");
			}
			else if (Randi == 1)
			{
				B_Say_Overlay	(self, NULL, "$HELFTENDLICH02");
			};
		};

		return LOOP_CONTINUE;
	}
	else if (self.aivar[AIV_Wiederbelebt] == TRUE)
	{
		return LOOP_END;
	}
	else
	{
		AI_StandUp	(self);
		Npc_ClearAIQueue	(self);

		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];

		AI_Teleport	(self, "KNAST");

		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Einhand))
		{
			LesterKnast = 1;

			B_StartOtherRoutine	(self, "KNAST");
			AI_Teleport	(self, "KNAST");
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Zweihand))
		{
			GornKnast = 1;

			B_StartOtherRoutine	(self, "KNAST");
			AI_Teleport	(self, "KNAST");
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
		{
			DiegoKnast = 1;

			B_StartOtherRoutine	(self, "KNAST");
			AI_Teleport	(self, "KNAST");
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
		{
			MiltenKnast = 1;

			B_StartOtherRoutine	(self, "KNAST");
			AI_Teleport	(self, "KNAST");
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
		{
			HeroKnast = 1;

			AI_Teleport	(self, "KNAST");
		};

		Npc_ClearAIQueue	(self);

		return LOOP_END;
	};
};

func void ZS_Unconscious_End ()
{	
	// ------ AIV nochmal resetten ------
	self.aivar[AIV_RANSACKED] = FALSE;
	
	// ------ aufstehen (auch Spieler) ------
	AI_StandUp(self);
	
	self.aivar[AIV_Wiederbelebt] = FALSE;
	self.aivar[AIV_WirdVersorgt] = FALSE;

	if ((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Einhand))
	&& (LesterKnast == 0))
	|| ((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Zweihand))
	&& (GornKnast == 0))
	|| ((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
	&& (DiegoKnast == 0))
	|| ((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
	&& (MiltenKnast == 0))
	|| ((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	&& (HeroKnast == 0))
	{
		B_Say_Overlay	(self, other, "$WIEDERBELEBT");
	};

	// EXIT IF...
	
	// ------ self == Spieler ------
	if (Npc_IsPlayer(self))
	{
		return;		//Spieler bekommt Kontrolle wieder
	};
	
	// FUNC 
	

	// ------ Waffe wiederholen ------
	Npc_PerceiveAll (self);
	
	if (Wld_DetectItem (self, ITEM_KAT_NF))
	|| (Wld_DetectItem (self, ITEM_KAT_FF))
	{
		if (Hlp_IsValidItem (item))
		{
			if (Npc_GetDistToItem (self, item) <= 500)
			{
				if (Hlp_IsItem(item, ItMW_Addon_Stab01) == TRUE)
				&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
				{
					AI_TakeItem (self, item);
				}
				else if (Hlp_IsItem(item, ItRw_Bow_L_04) == TRUE)
				&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
				{
					AI_TakeItem (self, item);
				}
				else if (Hlp_IsItem(item, ItMw_2h_Sld_Axe) == TRUE)
				&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Zweihand))
				{
					AI_TakeItem (self, item);
				}
				else if (Hlp_IsItem(item, ItMw_ShortSword5) == TRUE)
				&& (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Einhand))
				{
					AI_TakeItem (self, item);
				};
			};
		};
	};
	
	// ------ die besten Waffen anlegen ------
	AI_EquipBestMeleeWeapon(self);
	AI_EquipBestRangedWeapon(self);
	
	// ------ NSC heilt sich ------
	//AI_StartState (self, ZS_HealSelf, 0, "");
	return;
};


