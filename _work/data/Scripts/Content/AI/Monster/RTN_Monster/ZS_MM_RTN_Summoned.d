// ******************
// ZS_MM_Rtn_Summoned
// ******************

func void B_SummonedAssessTalk()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]);
};

func void ZS_MM_Rtn_Summoned ()
{
	Npc_SetPercTime	(self,	1);
	Npc_PercEnable	(self,	PERC_ASSESSPLAYER,		B_MM_AssessPlayer);
	Npc_PercEnable	(self,	PERC_ASSESSENEMY,		B_MM_AssessEnemy);
	
	Npc_PercEnable	(self,	PERC_ASSESSMAGIC,  		B_AssessMagic);
	Npc_PercEnable	(self,	PERC_ASSESSDAMAGE,		B_MM_AssessDamage);
	Npc_PercEnable	(self,  PERC_ASSESSFIGHTSOUND, 	B_MM_AssessOthersDamage);
	
	

	// FUNC
	
	B_SetAttitude (self, ATT_FRIENDLY);
	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StandUp (self);
	AI_SetWalkmode	(self, NPC_RUN);
};

func int ZS_MM_Rtn_Summoned_Loop()
{
	// ------ beim Spieler bleiben ------
	if (Npc_GetDistToNpc (self, hero) > 500)
	&& (Mod_Charakter == 4)
	{
		AI_GotoNpc (self, hero);
	}
	else if (Npc_GetDistToNpc (self, Char_Magie) > 500)
	&& (Mod_Charakter != 4)
	{
		AI_GotoNpc (self, Char_Magie);
	}
	else //<= 500
	{
		if (Npc_GetStateTime(self) >= 1)
		{
			// ------ zum Spieler drehen ------
			if (!Npc_CanSeeNpc(self, hero))
			&& (Mod_Charakter == 4)
			{
				AI_TurnToNpc (self, hero);
			}
			else if (!Npc_CanSeeNpc(self, Char_Magie))
			&& (Mod_Charakter != 4)
			{
				AI_TurnToNpc (self, Char_Magie);
			};
			
			// ------ Summon Time -------
			self.aivar[AIV_SummonTime] = (self.aivar[AIV_SummonTime] + Npc_GetStateTime(self)); //weil AI_Goto länger dauern kann

			Npc_SetStateTime (self, 0);
		};
	};
	
	self.wp = Npc_GetNearestWP (self);
	return LOOP_CONTINUE;
};

func void ZS_MM_Rtn_Summoned_End()
{

};

			
