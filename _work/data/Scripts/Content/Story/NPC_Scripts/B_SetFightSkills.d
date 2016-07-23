// ************************************************************
// B_SetFightSkills
// ----------------
// B_AddFightSkill setzt Talent-Ani abhängig von TrefferChance%
// ************************************************************

func void B_SetFightSkills (var C_NPC slf, var int percent)
{
	// Es wird auf alle FightSkills percent ADDIERT (Skills sind in Npc_Default auf 0 initialisiert)

/*	B_RaiseFightTalent (slf, NPC_TALENT_1H, 		percent);
	B_RaiseFightTalent (slf, NPC_TALENT_2H, 		percent);
	B_RaiseFightTalent (slf, NPC_TALENT_BOW, 		percent);
	B_RaiseFightTalent (slf, NPC_TALENT_CROSSBOW,	percent);

	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Zweihand))
	|| (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Einhand))
	{
		Mdl_ApplyOverlayMds	(slf, "HUMANS_2HST2.MDS");
	}
	else if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Magie))
	{
		Mdl_ApplyOverlayMds	(slf, "HUMANS_2HST1.MDS");
	}
	else if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Bogen))
	{
		Mdl_ApplyOverlayMds	(slf, "HUMANS_1HST1.MDS");
		Mdl_ApplyOverlayMds	(slf, "HUMANS_BOWT2.MDS");
	};*/
};
