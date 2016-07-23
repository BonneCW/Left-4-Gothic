// ******************
// SPL_SummonZombie		/k4
// ******************

const int SPL_Cost_SummonZombie			= 80;


INSTANCE Spell_SummonZombie (C_Spell_Proto)	
{
	time_per_mana			= 0;
	spelltype 				= SPELL_BAD;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
};

func int Spell_Logic_SummonZombie(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_SummonZombie)
	{
		return SPL_SENDCAST;
	}
	else //nicht genug Mana
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SummonZombie()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_SummonZombie;
	};

	Wld_SpawnNpcRange	(self, Zombie, 1, 500);

	Mod_Hordenfuehrer_Summon = 2;

	Monster_Max += 1;
	
	self.aivar[AIV_SelectSpell] += 1;
};
