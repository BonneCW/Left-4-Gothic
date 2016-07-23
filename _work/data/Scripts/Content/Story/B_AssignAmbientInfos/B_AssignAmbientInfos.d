// *****************************************************
// B_AssignAmbientInfos
// --------------------
// Verteiler. Aufruf aller B_AssignAmbientInfos-Befehle,
// abhängig von Gilde und Geschlecht
// *****************************************************

INSTANCE Info_Mod_Hero_TrinkTrank (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_Hero_TrinkTrank_Condition;
	information	= Info_Mod_Hero_TrinkTrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "Trink deinen Trank.";
};

FUNC INT Info_Mod_Hero_TrinkTrank_Condition ()
{
	if (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX]*3/4)
	&& (Npc_HasItems(self, ItPo_Health) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_TrinkTrank_Info ()
{
	B_Say	(hero, self, "$TRINKTRANK01");
	B_Say	(self, hero, "$TRINKTRANK02");

	B_UseItem	(self, ItPo_Health);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Hero_Zelle (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_Hero_Zelle_Condition;
	information	= Info_Mod_Hero_Zelle_Info;
	permanent	= 1;
	important	= 0;
	description	= "Du bist frei.";
};

FUNC INT Info_Mod_Hero_Zelle_Condition ()
{
	if ((self.voice == 3)
	&& (MiltenKnast == 1))
	|| ((self.voice == 11)
	&& (DiegoKnast == 1))
	|| ((self.voice == 12)
	&& (GornKnast == 1))
	|| ((self.voice == 13)
	&& (LesterKnast == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Zelle_Info ()
{
	B_Say	(hero, self, "$ZELLE01");

	if (hero.voice == 3)
	{
		MiltenPoints += 3;
	}
	else if (hero.voice == 11)
	{
		DiegoPoints += 3;
	}
	else if (hero.voice == 12)
	{
		GornPoints += 3;
	}
	else if (hero.voice == 13)
	{
		LesterPoints += 3;
	};

	B_Say	(self, hero, "$ZELLE02");

	if (self.voice == 3)
	{
		MiltenWait = FALSE;
		MiltenKnast = 0;
	}
	else if (self.voice == 11)
	{
		DiegoWait = FALSE;
		DiegoKnast = 0;
	}
	else if (self.voice == 12)
	{
		GornWait = FALSE;
		GornKnast = 0;
	}
	else if (self.voice == 13)
	{
		LesterWait = FALSE;
		LesterKnast = 0;
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Hero_Folge (C_INFO)
{
	nr		= 3;
	condition	= Info_Mod_Hero_Folge_Condition;
	information	= Info_Mod_Hero_Folge_Info;
	permanent	= 1;
	important	= 0;
	description	= "Folge mir.";
};

FUNC INT Info_Mod_Hero_Folge_Condition ()
{
	if ((self.voice == 3)
	&& (MiltenWait == TRUE)
	&& (MiltenKnast == 0))
	|| ((self.voice == 11)
	&& (DiegoWait == TRUE)
	&& (DiegoKnast == 0))
	|| ((self.voice == 12)
	&& (GornWait == TRUE)
	&& (GornKnast == 0))
	|| ((self.voice == 13)
	&& (LesterWait == TRUE)
	&& (LesterKnast == 0))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Folge_Info ()
{
	B_Say	(hero, self, "$FOLLOWME01");
	B_Say	(self, hero, "$FOLLOWME02");

	if (self.voice == 3)
	{
		MiltenWait = FALSE;
	}
	else if (self.voice == 11)
	{
		DiegoWait = FALSE;
	}
	else if (self.voice == 12)
	{
		GornWait = FALSE;
	}
	else if (self.voice == 13)
	{
		LesterWait = FALSE;
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Hero_Wait (C_INFO)
{
	nr		= 3;
	condition	= Info_Mod_Hero_Wait_Condition;
	information	= Info_Mod_Hero_Wait_Info;
	permanent	= 1;
	important	= 0;
	description	= "Warte hier.";
};

FUNC INT Info_Mod_Hero_Wait_Condition ()
{
	if ((self.voice == 3)
	&& (MiltenWait == FALSE)
	&& (MiltenKnast == 0))
	|| ((self.voice == 11)
	&& (DiegoWait == FALSE)
	&& (DiegoKnast == 0))
	|| ((self.voice == 12)
	&& (GornWait == FALSE)
	&& (GornKnast == 0))
	|| ((self.voice == 13)
	&& (LesterWait == FALSE)
	&& (LesterKnast == 0))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_Wait_Info ()
{
	B_Say	(hero, self, "$WAITHERE01");
	B_Say	(self, hero, "$WAITHERE02");

	if (self.voice == 3)
	{
		MiltenWait = TRUE;
		MiltenWaypoint = Npc_GetNearestWP(self);
	}
	else if (self.voice == 11)
	{
		DiegoWait = TRUE;
		DiegoWaypoint = Npc_GetNearestWP(self);
	}
	else if (self.voice == 12)
	{
		GornWait = TRUE;
		GornWaypoint = Npc_GetNearestWP(self);
	}
	else if (self.voice == 13)
	{
		LesterWait = TRUE;
		LesterWaypoint = Npc_GetNearestWP(self);
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAIT");
};

INSTANCE Info_Mod_Hero_MiltenKeinSkelett (C_INFO)
{
	nr		= 4;
	condition	= Info_Mod_Hero_MiltenKeinSkelett_Condition;
	information	= Info_Mod_Hero_MiltenKeinSkelett_Info;
	permanent	= 1;
	important	= 0;
	description	= "Kein Skelett mehr beschwören.";
};

FUNC INT Info_Mod_Hero_MiltenKeinSkelett_Condition ()
{
	if (self.voice == 3)
	&& (Mod_MiltenSkelettSpawn == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_MiltenKeinSkelett_Info ()
{
	if (hero.voice != 3)
	{
		B_Say	(hero, self, "$MILTENSKELETT01");
	};

	B_Say	(self, hero, "$MILTENSKELETT01");

	Mod_MiltenSkelettSpawn = 1;
};

INSTANCE Info_Mod_Hero_MiltenDochSkelett (C_INFO)
{
	nr		= 4;
	condition	= Info_Mod_Hero_MiltenDochSkelett_Condition;
	information	= Info_Mod_Hero_MiltenDochSkelett_Info;
	permanent	= 1;
	important	= 0;
	description	= "Skelett beschwören.";
};

FUNC INT Info_Mod_Hero_MiltenDochSkelett_Condition ()
{
	if (self.voice == 3)
	&& (Mod_MiltenSkelettSpawn == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hero_MiltenDochSkelett_Info ()
{
	if (hero.voice != 3)
	{
		B_Say	(hero, self, "$MILTENSKELETT02");
	};

	B_Say	(self, hero, "$MILTENSKELETT02");

	Mod_MiltenSkelettSpawn = 0;
};

INSTANCE Info_Mod_Hero_EXIT (C_INFO)
{
	nr		= 999;
	condition	= Info_Mod_Hero_EXIT_Condition;
	information	= Info_Mod_Hero_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hero_EXIT_Condition ()
{
	return 1;
};

FUNC VOID Info_Mod_Hero_EXIT_Info ()
{
	AI_StopProcessInfos	(self);
};

FUNC VOID B_AssignAmbientInfos (var C_NPC slf)
{
	Info_Mod_Hero_TrinkTrank.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_Hero_Zelle.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_Hero_Wait.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_Hero_Folge.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_Hero_MiltenKeinSkelett.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_Hero_MiltenDochSkelett.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_Hero_EXIT.npc		= Hlp_GetInstanceID(slf);
};