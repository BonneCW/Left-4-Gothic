// ****************************************************
// B_MM_AssessOthersDamage
// -----------------------
// wird auch von beschworenen Monstern benutzt,
// die die Atit�de zum SC auf FRIENDLY gesetzt bekommen
// ****************************************************

func void B_MM_AssessOthersDamage ()
{
	//EXIT IF...
	
	// ------ wenn ich zu weit weg bin ------	//wichtig f�r Aufruf �ber FIGHTSOUND aus ZS_MM_Rtn_Summoned
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Zombie))
	{
		//if (Hlp_Random(100) <= 25)
		//{
			return;
		//};
	};
	
	// ------ wenn Opfer hinter Wand ------
	if (!Npc_CanSeeNpcFreeLOS(self, victim)) //Sichtckeck i.d.R. nur einmal pro Kampf, da in den Folge-ZS (z.B. ZS_Attack) keine OthersDamage-Wahrnehmung angemeldet ist 
	{
		//return;
	};
	
	// ------ Party-Monster -----
	if (self.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		// ------ Player wird angegriffen ------
		if (Npc_IsPlayer (victim))
		{
			Npc_ClearAIQueue	(self);
			B_ClearPerceptions	(self);
			Npc_SetTarget		(self, other);
			AI_StartState		(self, ZS_MM_Attack, 0, "");
			return;
		};
		
		// ------ Player greift an ------
		if (Npc_IsPlayer (other))
		&& (!Npc_IsDead (victim)) //Funktion wird auch �ber AssessMurder angesprungen
		{
			Npc_ClearAIQueue	(self);
			B_ClearPerceptions	(self);
			Npc_SetTarget		(self, victim);
			AI_StartState		(self, ZS_MM_Attack, 0, "");
			return;
		};
	};
	
	// ------ Sonderfall: Wolf ------
	if (self.guild == GIL_WOLF)
	{
		if (victim.guild == GIL_WOLF)
		&& (other.guild == GIL_WOLF)
		&& (Npc_IsPlayer(other))
		&& (Npc_IsDead (victim)) 
		{
			Npc_ClearAIQueue	(self);
			B_ClearPerceptions	(self);
			self.start_aistate = ZS_MM_Rtn_Summoned;
			AI_StartState (self, ZS_MM_Rtn_Summoned, 0, "");
			return;
		};
	};
	
	//FUNC	

	// ------ Freund wird angegriffen ------
	if (Wld_GetGuildAttitude(self.guild, victim.guild) == ATT_FRIENDLY)
	&& (Wld_GetGuildAttitude(self.guild, other.guild) != ATT_FRIENDLY) //kein Kampf zwischen Freunden
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget		(self, other);
		AI_StartState		(self, ZS_MM_Attack, 0, "");
		return;
	};
	
	// ------ Freund greift an ------
	if (Wld_GetGuildAttitude(self.guild, other.guild) == ATT_FRIENDLY)
	&& (Wld_GetGuildAttitude(self.guild, victim.guild) != ATT_FRIENDLY)  //kein Kampf zwischen Freunden
	&& (!Npc_IsDead (victim)) //Funktion wird auch �ber AssessMurder angesprungen
	{
		Npc_ClearAIQueue	(self);
		B_ClearPerceptions	(self);
		Npc_SetTarget		(self, victim);
		AI_StartState		(self, ZS_MM_Attack, 0, "");
		return;
	};
};
