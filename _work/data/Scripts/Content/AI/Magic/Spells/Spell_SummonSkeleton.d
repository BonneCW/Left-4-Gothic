// ******************
// SPL_SummonSkeleton
// ******************

const int SPL_Cost_SummonSkeleton			= 60;


INSTANCE Spell_SummonSkeleton (C_Spell_Proto)	//ehem. Spell_Skeleton
{
	time_per_mana			= 0;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
};

func int Spell_Logic_SummonSkeleton(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	&& (Mod_MiltenSkelett == 0)
	{
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_SummonSkeleton)
	&& (Mod_MiltenSkelett == 0)
	{
		return SPL_SENDCAST;
	}
	else //nicht genug Mana
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SummonSkeleton()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_SummonSkeleton;
	};

	Wld_SpawnNpcRange	(self, MiltenSkelett, 1, 500);

	Mod_MiltenSkelett = 1;
	
	self.aivar[AIV_SelectSpell] += 1;
};
