FUNC INT C_IsBossMonster (var C_NPC Boss)
{
	if (Hlp_GetInstanceID(Boss) == Hlp_GetInstanceID(Tank))
	|| (Hlp_GetInstanceID(Boss) == Hlp_GetInstanceID(Boomer))
	|| (Hlp_GetInstanceID(Boss) == Hlp_GetInstanceID(Witch))
	|| (Hlp_GetInstanceID(Boss) == Hlp_GetInstanceID(Hunter))
	|| (Hlp_GetInstanceID(Boss) == Hlp_GetInstanceID(Overlord))
	|| (Hlp_GetInstanceID(Boss) == Hlp_GetInstanceID(Hordenfuehrer))
	|| (Hlp_GetInstanceID(Boss) == Hlp_GetInstanceID(Smoker))
	|| (Hlp_GetInstanceID(Boss) == Hlp_GetInstanceID(Spitter))
	{
		return TRUE;
	};

	return FALSE;
};