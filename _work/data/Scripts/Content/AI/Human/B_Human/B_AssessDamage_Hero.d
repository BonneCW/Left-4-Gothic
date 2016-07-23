// ****************************************************************
// B_AssessDamage
// --------------
// wird durchWahrnehmung PERC_AssessDamage ÜBERALL her aufgerufen
// (also auch aus ZS_Attack, AR kann sich allerdings NICHT ändern!)
// ****************************************************************

func void B_AssessDamage_Hero ()
{
	if (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Spitter))
	{
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Einhand))
		{
			Mod_LesterVergiftet += 5;
		};
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Zweihand))
		{
			Mod_GornVergiftet += 5;
		};
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Bogen))
		{
			Mod_DiegoVergiftet += 5;
		};
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
		{
			Mod_MiltenVergiftet += 5;
		};
		if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
		{
			Mod_HeroVergiftet += 5;
		};
	};

	return;
};