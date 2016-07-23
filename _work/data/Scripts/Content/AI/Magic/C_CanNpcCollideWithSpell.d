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
// Beachtem: if (Npc_GetActiveSpell(other) == SPL_Sleep) funzt nicht,
// weil Sleep INSTANT wirkt (d.h. sofort SENDCAST zurückliefert)
// und beim Aufruf von B_AssessMagic NICHT mehr "Active" ist!
// ******************************************************************

const int COLL_DONOTHING			= 0;
const int COLL_DOEVERYTHING			= 1<<0;
const int COLL_APPLYDAMAGE			= 1<<1;
const int COLL_APPLYHALVEDAMAGE		= 1<<2;
const int COLL_APPLYDOUBLEDAMAGE	= 1<<3;
const int COLL_APPLYVICTIMSTATE		= 1<<4;
const int COLL_DONTKILL				= 1<<5;


func int C_CanNpcCollideWithSpell(var int spellType)
{
	if ((self.aivar[AIV_PARTYMEMBER] == TRUE)
	|| (C_NpcIsHero(self)))
	&& ((other.aivar[AIV_PARTYMEMBER] == TRUE)
	|| (C_NpcIsHero(other)))
	{
		return COLL_DONOTHING;
	};

	if (spellType  == SPL_IceCube)
	|| (spellTYpe  == SPL_IceWave)
	|| (spelltype  == SPL_Icebolt)		
	{
		// wenn im schwimm oder tauchmodus, bewirkt der spell nix
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self,BS_SWIM)) 	
		|| (C_BodyStateContains(self,BS_DIVE))
		|| (C_IsBossMonster(self))
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	return COLL_DOEVERYTHING;
};

