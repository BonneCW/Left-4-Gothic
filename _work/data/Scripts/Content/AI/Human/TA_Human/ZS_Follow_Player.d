// ****************
// ZS_Follow_Player
// ****************

FUNC void B_AssessFollowPlayer ()
{
	// ------ Sonderfall: Diego ------
	
		
	//FUNC
	
	if (Npc_GetDistToNpc(self, hero) < self.aivar[AIV_FollowDist])
	&& (self.aivar[AIV_TAPOSITION] == FALSE)
	{
		Npc_ClearAIQueue (self);
		AI_StandUp (self);
		self.aivar[AIV_TAPOSITION] = TRUE;
	}
	else
	{	
		B_AssessPlayer ();
	};
};

// ---------------------------------
func void B_AssessFollowFightSound()
{
	if (Npc_IsPlayer(other))
	|| (Npc_IsPlayer(victim))
	|| (other.aivar[AIV_PARTYMEMBER] == TRUE)
	|| (victim.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		B_AssessFightSound ();
	};
};

// ---------------------------------
func void B_MoveFollowNpc()
{
	//zuckelt nur
};

FUNC VOID ValidateAndCollectItem(VAR C_NPC slf, var C_ITEM itm) {
	if (Hlp_IsValidItem (itm))
	&& (Npc_GetDistToItem (slf, itm) < 1000)
	&& (Npc_GetHeightToItem (slf, itm) < 230)
	{
		if ((Hlp_IsItem(itm, ItMw_Lester_01_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Lester_02_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Lester_03_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Lester_04_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Lester_05_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Lester_06_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Lester_01) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Lester_02) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Lester_03) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Lester_04) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Lester_05) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Lester_06) == TRUE))
		{
			if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Einhand))
			{
				slf.aivar[AIV_ItemSammler] = FALSE;

				if (Npc_GetDistToItem (slf, itm) > 200)
				{
					AI_GotoItem (slf, itm);
				};
				if (Hlp_IsValidItem(itm))
				{
					AI_TakeItem (slf, itm);
				};

				if (Npc_HasItems(slf, ItMw_Lester_01_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Lester_01_World, 1);
					CreateInvItems	(slf, ItMw_Lester_01, 1);
				};

				if (Npc_HasItems(slf, ItMw_Lester_02_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Lester_02_World, 1);
					CreateInvItems	(slf, ItMw_Lester_02, 1);
				};

				if (Npc_HasItems(slf, ItMw_Lester_03_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Lester_03_World, 1);
					CreateInvItems	(slf, ItMw_Lester_03, 1);
				};

				if (Npc_HasItems(slf, ItMw_Lester_04_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Lester_04_World, 1);
					CreateInvItems	(slf, ItMw_Lester_04, 1);
				};

				if (Npc_HasItems(slf, ItMw_Lester_05_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Lester_05_World, 1);
					CreateInvItems	(slf, ItMw_Lester_05, 1);
				};

				if (Npc_HasItems(slf, ItMw_Lester_06_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Lester_06_World, 1);
					CreateInvItems	(slf, ItMw_Lester_06, 1);
				};

				Mod_LesterBetter_Weapon = 3;

				Npc_SetStateTime (slf, 0);

				B_Say_Overlay	(slf, NULL, "$TOOKFIRSTWEAPON");

				Mod_Lester_FirstWeapon = 60;
			}
			else
			{
				if (Mod_Lester_FirstWeapon == 0)
				{
					Mod_Lester_FirstWeapon = 60;

					B_Say_Overlay	(slf, NULL, "$FIRSTWEAPONFORLESTER");
				};
			};
		};
		if ((Hlp_IsItem(itm, ItMw_Gorn_01_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Gorn_02_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Gorn_03_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Gorn_04_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Gorn_05_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Gorn_06_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Gorn_01) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Gorn_02) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Gorn_03) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Gorn_04) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Gorn_05) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Gorn_06) == TRUE))
		{
			if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Zweihand))
			{
				slf.aivar[AIV_ItemSammler] = FALSE;

				if (Npc_GetDistToItem (slf, itm) > 200)
				{
					AI_GotoItem (slf, itm);
				};
				if (Hlp_IsValidItem(itm))
				{
					AI_TakeItem (slf, itm);
				};

				if (Npc_HasItems(slf, ItMw_Gorn_01_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Gorn_01_World, 1);
					CreateInvItems	(slf, ItMw_Gorn_01, 1);
				};

				if (Npc_HasItems(slf, ItMw_Gorn_02_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Gorn_02_World, 1);
					CreateInvItems	(slf, ItMw_Gorn_02, 1);
				};

				if (Npc_HasItems(slf, ItMw_Gorn_03_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Gorn_03_World, 1);
					CreateInvItems	(slf, ItMw_Gorn_03, 1);
				};

				if (Npc_HasItems(slf, ItMw_Gorn_04_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Gorn_04_World, 1);
					CreateInvItems	(slf, ItMw_Gorn_04, 1);
				};

				if (Npc_HasItems(slf, ItMw_Gorn_05_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Gorn_05_World, 1);
					CreateInvItems	(slf, ItMw_Gorn_05, 1);
				};

				if (Npc_HasItems(slf, ItMw_Gorn_06_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Gorn_06_World, 1);
					CreateInvItems	(slf, ItMw_Gorn_06, 1);
				};

				Mod_GornBetter_Weapon = 3;

				Npc_SetStateTime (slf, 0);

				B_Say_Overlay	(slf, NULL, "$TOOKFIRSTWEAPON");

				Mod_Gorn_FirstWeapon = 60;
			}
			else
			{
				if (Mod_Gorn_FirstWeapon == 0)
				{
					Mod_Gorn_FirstWeapon = 60;

					B_Say_Overlay	(slf, NULL, "$FIRSTWEAPONFORGORN");
				};
			};
		};
		if ((Hlp_IsItem(itm, ItMw_Diego_01_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Diego_02_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Diego_03_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Diego_01) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Diego_02) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Diego_03) == TRUE))
		{
			if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Bogen))
			{
				slf.aivar[AIV_ItemSammler] = FALSE;

				if (Npc_GetDistToItem (slf, itm) > 200)
				{
					AI_GotoItem (slf, itm);
				};
				if (Hlp_IsValidItem(itm))
				{
					AI_TakeItem (slf, itm);
				};

				if (Npc_HasItems(slf, ItMw_Diego_01_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Diego_01_World, 1);
					CreateInvItems	(slf, ItMw_Diego_01, 1);
				};

				if (Npc_HasItems(slf, ItMw_Diego_02_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Diego_02_World, 1);
					CreateInvItems	(slf, ItMw_Diego_02, 1);
				};

				if (Npc_HasItems(slf, ItMw_Diego_03_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Diego_03_World, 1);
					CreateInvItems	(slf, ItMw_Diego_03, 1);
				};

				Mod_DiegoBetter_Weapon = 3;

				Npc_SetStateTime (slf, 0);

				B_Say_Overlay	(slf, NULL, "$TOOKSECONDWEAPON");

				Mod_Diego_SecondWeapon = 60;
			}
			else
			{
				if (Mod_Diego_SecondWeapon == 0)
				{
					Mod_Diego_SecondWeapon = 60;

					B_Say_Overlay	(slf, NULL, "$SECONDWEAPONFORDIEGO");
				};
			};
		};
		if ((Hlp_IsItem(itm, ItMw_Milten_01_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Milten_02_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Milten_03_World) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Milten_01) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Milten_02) == TRUE)
		|| (Hlp_IsItem(itm, ItMw_Milten_03) == TRUE))
		{
			if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Magie))
			{
				slf.aivar[AIV_ItemSammler] = FALSE;

				if (Npc_GetDistToItem (slf, itm) > 200)
				{
					AI_GotoItem (slf, itm);
				};
				if (Hlp_IsValidItem(itm))
				{
					AI_TakeItem (slf, itm);
				};

				if (Npc_HasItems(slf, ItMw_Milten_01_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Milten_01_World, 1);
					CreateInvItems	(slf, ItMw_Milten_01, 1);
				};

				if (Npc_HasItems(slf, ItMw_Milten_02_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Milten_02_World, 1);
					CreateInvItems	(slf, ItMw_Milten_02, 1);
				};

				if (Npc_HasItems(slf, ItMw_Milten_03_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItMw_Milten_03_World, 1);
					CreateInvItems	(slf, ItMw_Milten_03, 1);
				};

				Mod_MiltenBetter_Weapon = 3;

				Npc_SetStateTime (slf, 0);

				B_Say_Overlay	(slf, NULL, "$TOOKSECONDWEAPON");

				Mod_Milten_SecondWeapon = 60;
			}
			else
			{
				if (Mod_Milten_SecondWeapon == 0)
				{
					Mod_Milten_SecondWeapon = 60;

					B_Say_Overlay	(slf, NULL, "$SECONDWEAPONFORMILTEN");
				};
			};
		};
		if ((Hlp_IsItem(itm, ItRw_Diego_01_World) == TRUE)
		|| (Hlp_IsItem(itm, ItRw_Diego_02_World) == TRUE)
		|| (Hlp_IsItem(itm, ItRw_Diego_03_World) == TRUE)
		|| (Hlp_IsItem(itm, ItRw_Diego_04_World) == TRUE)
		|| (Hlp_IsItem(itm, ItRw_Diego_05_World) == TRUE)
		|| (Hlp_IsItem(itm, ItRw_Diego_06_World) == TRUE)
		|| (Hlp_IsItem(itm, ItRw_Diego_01) == TRUE)
		|| (Hlp_IsItem(itm, ItRw_Diego_02) == TRUE)
		|| (Hlp_IsItem(itm, ItRw_Diego_03) == TRUE)
		|| (Hlp_IsItem(itm, ItRw_Diego_04) == TRUE)
		|| (Hlp_IsItem(itm, ItRw_Diego_05) == TRUE)
		|| (Hlp_IsItem(itm, ItRw_Diego_06) == TRUE))
		{
			if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Bogen))
			{
				slf.aivar[AIV_ItemSammler] = FALSE;

				if (Npc_GetDistToItem (slf, itm) > 200)
				{
					AI_GotoItem (slf, itm);
				};
				if (Hlp_IsValidItem(itm))
				{
					AI_TakeItem (slf, itm);
				};

				if (Npc_HasItems(slf, ItRw_Diego_01_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItRw_Diego_01_World, 1);
					CreateInvItems	(slf, ItRw_Diego_01, 1);
				};

				if (Npc_HasItems(slf, ItRw_Diego_02_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItRw_Diego_02_World, 1);
					CreateInvItems	(slf, ItRw_Diego_02, 1);
				};

				if (Npc_HasItems(slf, ItRw_Diego_03_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItRw_Diego_03_World, 1);
					CreateInvItems	(slf, ItRw_Diego_03, 1);
				};

				if (Npc_HasItems(slf, ItRw_Diego_04_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItRw_Diego_04_World, 1);
					CreateInvItems	(slf, ItRw_Diego_04, 1);
				};

				if (Npc_HasItems(slf, ItRw_Diego_05_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItRw_Diego_05_World, 1);
					CreateInvItems	(slf, ItRw_Diego_05, 1);
				};

				if (Npc_HasItems(slf, ItRw_Diego_06_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItRw_Diego_06_World, 1);
					CreateInvItems	(slf, ItRw_Diego_06, 1);
				};

				Mod_DiegoBetter_Weapon = 3;

				Npc_SetStateTime (slf, 0);

				B_Say_Overlay	(slf, NULL, "$TOOKFIRSTWEAPON");

				Mod_Diego_FirstWeapon = 60;
			}
			else
			{
				if (Mod_Diego_FirstWeapon == 0)
				{
					Mod_Diego_FirstWeapon = 60;

					B_Say_Overlay	(slf, NULL, "$FIRSTWEAPONFORDIEGO");
				};
			};
		};
		if ((Hlp_IsItem(itm, ItRu_Milten_01_World) == TRUE)
		|| (Hlp_IsItem(itm, ItRu_Milten_02_World) == TRUE)
		|| (Hlp_IsItem(itm, ItRu_Milten_03_World) == TRUE)
		|| (Hlp_IsItem(itm, ItRu_Milten_04_World) == TRUE)
		|| (Hlp_IsItem(itm, ItRu_Milten_05_World) == TRUE))
		{
			if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Magie))
			{
				slf.aivar[AIV_ItemSammler] = FALSE;

				if (Npc_GetDistToItem (slf, itm) > 200)
				{
					AI_GotoItem (slf, itm);
				};
				if (Hlp_IsValidItem(itm))
				{
					AI_TakeItem (slf, itm);
				};

				if (Npc_HasItems(slf, ItRu_Milten_01_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItRu_Milten_01_World, 1);
					CreateInvItems	(slf, ItRu_Milten_01, 1);
				};

				if (Npc_HasItems(slf, ItRu_Milten_02_World) > 0)
				{
					Print ("Collected fireball");
					Npc_RemoveInvItems	(slf, ItRu_Milten_02_World, 1);
					CreateInvItems	(slf, ItRu_Milten_02, 1);
				};

				if (Npc_HasItems(slf, ItRu_Milten_03_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItRu_Milten_03_World, 1);
					CreateInvItems	(slf, ItRu_Milten_03, 1);
				};

				if (Npc_HasItems(slf, ItRu_Milten_04_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItRu_Milten_04_World, 1);
					CreateInvItems	(slf, ItRu_Milten_04, 1);
				};

				if (Npc_HasItems(slf, ItRu_Milten_05_World) > 0)
				{
					Npc_RemoveInvItems	(slf, ItRu_Milten_05_World, 1);
					CreateInvItems	(slf, ItRu_Milten_05, 1);
				};

				Npc_SetStateTime (slf, 0);

				B_Say_Overlay	(slf, NULL, "$TOOKFIRSTWEAPON");

				Mod_Milten_FirstWeapon = 60;
			}
			else
			{
				if (Mod_Milten_FirstWeapon == 0)
				{
					Mod_Milten_FirstWeapon = 60;

					B_Say_Overlay	(slf, NULL, "$FIRSTWEAPONFORMILTEN");
				};
			};
		};
		if (Hlp_IsItem(itm, ItMi_Koecher) == TRUE)
		&& (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Char_Bogen))
		{
			slf.aivar[AIV_ItemSammler] = FALSE;

			if (Npc_GetDistToItem (slf, itm) > 200)
			{
				AI_GotoItem (slf, itm);
			};
			if (Hlp_IsValidItem(itm))
			{
				AI_TakeItem (slf, itm);
			};

			Npc_SetStateTime (slf, 0);
		};
	}
	else
	{
		slf.aivar[AIV_ItemSammler] = TRUE;
		Npc_SetStateTime (slf, 0);
	};
};

// --------------------------
func void ZS_Follow_Player ()
{
	self.senses			= SENSE_SEE|SENSE_HEAR|SENSE_SMELL;
	self.senses_range	= 2000;		
	
	Npc_SetPercTime	(self, 0.3);
	
	Perception_Set_Minimal();
	
	Npc_PercEnable (self, PERC_ASSESSPLAYER	, B_AssessFollowPlayer); 
	Npc_PercEnable (self, PERC_ASSESSENEMY	, B_AssessEnemy); 
	Npc_PercEnable (self, PERC_ASSESSTALK	, B_AssessTalk); 
	Npc_PercEnable (self, PERC_MOVEMOB	, B_MoveMob); 
	
	//lokale Wahrnehmungen
	Npc_PercEnable (self, PERC_ASSESSFIGHTSOUND , B_AssessFollowFightSound);
	//Npc_PercEnable (self, PERC_MOVENPC, B_MoveFollowNpc);

	B_ResetAll (self);
	
	AI_StandUp (self);
	AI_SetWalkmode	(self,	NPC_RUN);
	
	self.aivar[AIV_FollowDist] = 200;
};

func int ZS_Follow_Player_Loop ()
{
	self.aivar[AIV_ItemSammler] = TRUE;

	Npc_PerceiveAll (self);

	if (Wld_DetectItem (self, ITEM_KAT_NONE))
	{
		ValidateAndCollectItem(self, item);
	};
	if (Wld_DetectItem (self, ITEM_KAT_NF))
	{
		ValidateAndCollectItem(self, item);
	};
	if (Wld_DetectItem (self, ITEM_KAT_FF))
	{
		ValidateAndCollectItem(self, item);
	};
	if (Wld_DetectItem (self, ITEM_KAT_POTIONS))
	{
		if (Hlp_IsValidItem (item))
		&& (Npc_GetDistToItem (self, item) < 1000)
		&& (Npc_GetHeightToItem (self, item) < 230)
		{
			if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Char_Magie))
			&& (Hlp_IsItem(item, ItPo_Mana) == TRUE)
			{
				self.aivar[AIV_ItemSammler] = FALSE;

				if (Npc_GetDistToItem (self, item) > 200)
				{
					AI_GotoItem (self, item);
				};
				if (Hlp_IsValidItem(item))
				{
					AI_TakeItem (self, item);
				};

				Npc_SetStateTime (self, 0);
			};
			if (Npc_HasItems(self, ItPo_Health) == 0)
			&& (Hlp_IsItem(item, ItPo_Health) == TRUE)
			{
				self.aivar[AIV_ItemSammler] = FALSE;

				if (Npc_GetDistToItem (self, item) > 200)
				{
					AI_GotoItem (self, item);
				};
				if (Hlp_IsValidItem(item))
				{
					AI_TakeItem (self, item);
				};

				Npc_SetStateTime (self, 0);
			};
		}
		else
		{
			self.aivar[AIV_ItemSammler] = TRUE;
			Npc_SetStateTime (self, 0);
		};
	};

	if (Npc_GetDistToNpc (self, hero) > self.aivar[AIV_FollowDist])
	&& (self.aivar[AIV_ItemSammler] == TRUE)
	{		
		// ------ normale Behandlung ------
		if (!C_BodyStateContains(self, BS_SWIM))
		{	
			AI_SetWalkmode	(self,	NPC_RUN);
		};
		
		AI_GotoNpc (self, hero);
		self.aivar[AIV_TAPOSITION] = FALSE;
	}
	else
	{
		if (Npc_GetStateTime(self) > 1)
		{
			B_TurnToNpc (self, hero);
						
			Npc_SetStateTime (self, 0);
		};
	};
	
	return LOOP_CONTINUE;
};

func void ZS_Follow_Player_End ()
{

};



