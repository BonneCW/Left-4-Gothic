FUNC VOID ManaTrankManager ()
{
	// Trankmanagement

	// Held ist nicht Magier

	if (Mod_Charakter != 4)
	{
		// Selber versorgen wenn geschwächt und Trank dabei

		if (Char_Magie.attribute[ATR_MANA] < Char_Magie.attribute[ATR_MANA_MAX]/2)
		&& (Npc_HasItems(Char_Magie, ItPo_Mana) >= 1)
		&& (!Npc_IsInState(Char_Magie, ZS_Attack))
		&& (!C_NpcIsDown(Char_Magie))
		&& (!C_BodyStateContains(Char_Magie, BS_ITEMINTERACT))
		{
			B_UseItem	(Char_Magie, ItPo_Mana);
		};
	};
};