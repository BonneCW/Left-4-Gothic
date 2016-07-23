// ******************************************************************
// B_AssessMagic
// -------------
// Wahrnehmung ist für ALLE NSCs IMMER aktiv
// auch für den Spieler (s.u.)
// wir aufgerufen, sobald irgendein Spruch auf einen NSC wirkt
// setzt den NSC dan in den entsprechenden ZS
// die meisten Spells führen allerdings zu keinem ZS
// (sind unten nicht berücksichtigt)
// ------------------------------------------------------------------
// Beachtem: if (Npc_GetLastHitSpellID(self) == SPL_Sleep) funzt nicht,
// weil Sleep INSTANT wirkt (d.h. sofort SENDCAST zurückliefert)
// und beim Aufruf von B_AssessMagic NICHT mehr "Active" ist!
// ******************************************************************


func void B_AssessMagic ()
{
	// ------ Whirlwind ------
	if (Npc_GetLastHitSpellID(self) == SPL_Waterfist)
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

		Print	("Vergiftung klappt!");

		return;
	};		
};


// ***************************************************
// Anmeldung der AssessMagic-Wahrnehmung beim Spieler
// (auch wenn der Spieler NICHT zustandsgesteuert ist)
// Spieler hat also IMMER PERC_ASSESSMAGIC aktiv
// ***************************************************

const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic; 	


	


