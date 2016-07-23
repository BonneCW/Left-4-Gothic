// *************************************************************
// B_SelectSpell
// -------------
// Magieauswahl für Menschen und Monster
// Wenn Auswahlkriterien erfüllt (je nach Gilde unterschiedlich)
// --> TRUE, sonst FALSE
// Humans zaubern nur als KdF, PAL oder DMT
// *************************************************************

func int B_SelectSpell (var C_NPC slf, var C_NPC oth)
{
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Magie))
	{
		if (Npc_HasItems(slf, ItRu_Milten_05) == 1)
		&& (slf.attribute[ATR_MANA] >= SPL_Cost_IceWave)
		&& (!Npc_IsInState(oth, ZS_MagicFreeze))
		&& (!C_IsBossMonster(oth))
		&& (Npc_GetDistToNpc(slf, oth) < 500)
		{
			B_ReadySpell (slf, SPL_IceWave, SPL_Cost_IceWave);
		}
		else if (Npc_HasItems(slf, ItRu_Milten_06) == 1)
		&& (slf.attribute[ATR_MANA] >= SPL_Cost_FireRain)
		&& (Npc_GetDistToNpc(slf, oth) < 500)
		{
			B_ReadySpell (slf, SPL_FireRain, SPL_Cost_FireRain);
		}
		else if (Npc_HasItems(slf, ItRu_Milten_04) == 1)
		&& (slf.attribute[ATR_MANA] >= SPL_Cost_LightningFlash)
		&& (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_RANGED_OUTER)
		&& (Hlp_GetInstanceID(oth) != Hlp_GetInstanceID(Zombie))
		&& (oth.level != 10)
		{
			B_ReadySpell (slf, SPL_LightningFlash, SPL_Cost_LightningFlash);
		}
		else if (Npc_HasItems(slf, ItRu_Milten_03) == 1)
		&& (slf.attribute[ATR_MANA] >= SPL_Cost_Geyser)
		&& (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_RANGED_OUTER)
		&& (Hlp_GetInstanceID(oth) != Hlp_GetInstanceID(Zombie))
		&& (oth.level != 10)
		{
			B_ReadySpell (slf, SPL_Geyser, SPL_Cost_Geyser);
		}
		else if (Npc_HasItems(slf, ItRu_Milten_02) == 1)
		&& (slf.attribute[ATR_MANA] >= SPL_Cost_InstantFireball)
		&& (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_RANGED_OUTER)
		&& (Hlp_GetInstanceID(oth) != Hlp_GetInstanceID(Zombie))
		&& (oth.level != 10)
		{
			B_ReadySpell (slf, SPL_InstantFireball, SPL_Cost_InstantFireball);
		}
		else if (Npc_HasItems(slf, ItRu_Milten_01) == 1)
		&& (slf.attribute[ATR_MANA] >= SPL_Cost_Firebolt)
		&& (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_RANGED_OUTER)
		{
			B_ReadySpell (slf, SPL_Firebolt, SPL_Cost_Firebolt);
		}
		else if (Npc_HasItems(slf, ItRu_Milten_Summoner) == 1)
		&& (slf.attribute[ATR_MANA] >= SPL_Cost_SummonSkeleton)
		&& (Mod_MiltenSkelett == 0)
		&& (Mod_MiltenSkelettSpawn == 0)
		{
			B_ReadySpell (slf, SPL_SummonSkeleton, SPL_Cost_SummonSkeleton);
		}
		else
		{
			return FALSE;
		};

		return TRUE;
	};

	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Hordenfuehrer))
	&& (Mod_Hordenfuehrer_Summon == 0)
	{
		if (Npc_HasItems (slf, ItRu_SummonZombie) == 0)
		{
			CreateInvItems (slf, ItRu_SummonZombie, 1);
		};

		B_ReadySpell (slf, SPL_SummonZombie, SPL_Cost_SummonZombie);

		return TRUE;
	};

	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Spitter))
	{
		if (Npc_HasItems (slf, ItRu_Waterfist) == 0)
		{
			CreateInvItems (slf, ItRu_Waterfist, 1);
		};

		B_ReadySpell (slf, SPL_Waterfist, SPL_Cost_Waterfist);

		return TRUE;
	};	
	
	return FALSE; //alle anderen Gilden		
};