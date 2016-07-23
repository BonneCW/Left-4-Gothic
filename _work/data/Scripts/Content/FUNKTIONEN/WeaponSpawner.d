FUNC VOID WeaponSpawner ()
{
	var int Randi;

	// Primärwaffen

	// Levelpart One

	Randi = r_max(Weapon_Lester_Level_01-1)+1;

	Wld_InsertItem	(ItMw_Lester_02_World,	ConcatStrings("FP_ITEM_LESTER_01_0", IntToString(Randi)));

	Randi = r_max(Weapon_Gorn_Level_01-1)+1;

	Wld_InsertItem	(ItMw_Gorn_02_World,	ConcatStrings("FP_ITEM_GORN_01_0", IntToString(Randi)));

	Randi = r_max(Weapon_Diego_Level_01-1)+1;

	Wld_InsertItem	(ItRw_Diego_02_World,	ConcatStrings("FP_ITEM_DIEGO_01_0", IntToString(Randi)));

	Randi = r_max(Weapon_Milten_Level_01-1)+1;

	Wld_InsertItem	(ItRu_Milten_02_World,	ConcatStrings("FP_ITEM_MILTEN_01_0", IntToString(Randi)));

	// Levelpart Two

	if (Weapon_Lester_Level_02 > 0)
	{
		Randi = r_max(Weapon_Lester_Level_02-1)+1;

		Wld_InsertItem	(ItMw_Lester_03_World,	ConcatStrings("FP_ITEM_LESTER_02_0", IntToString(Randi)));
	};

	if (Weapon_Gorn_Level_02 > 0)
	{
		Randi = r_max(Weapon_Gorn_Level_02-1)+1;

		Wld_InsertItem	(ItMw_Gorn_03_World,	ConcatStrings("FP_ITEM_GORN_02_0", IntToString(Randi)));
	};

	if (Weapon_Diego_Level_02 > 0)
	{
		Randi = r_max(Weapon_Diego_Level_02-1)+1;

		Wld_InsertItem	(ItRw_Diego_03_World,	ConcatStrings("FP_ITEM_DIEGO_02_0", IntToString(Randi)));
	};

	if (Weapon_Milten_Level_02 > 0)
	{
		Randi = r_max(Weapon_Milten_Level_02-1)+1;

		Wld_InsertItem	(ItRu_Milten_03_World,	ConcatStrings("FP_ITEM_MILTEN_02_0", IntToString(Randi)));
	};

	// Levelpart Three

	if (Weapon_Lester_Level_03 > 0)
	{
		Randi = r_max(Weapon_Lester_Level_03-1)+1;

		Wld_InsertItem	(ItMw_Lester_04_World,	ConcatStrings("FP_ITEM_LESTER_03_0", IntToString(Randi)));
	};

	if (Weapon_Gorn_Level_03 > 0)
	{
		Randi = r_max(Weapon_Gorn_Level_03-1)+1;

		Wld_InsertItem	(ItMw_Gorn_04_World,	ConcatStrings("FP_ITEM_GORN_03_0", IntToString(Randi)));
	};

	if (Weapon_Diego_Level_03 > 0)
	{
		Randi = r_max(Weapon_Diego_Level_03-1)+1;

		Wld_InsertItem	(ItRw_Diego_04_World,	ConcatStrings("FP_ITEM_DIEGO_03_0", IntToString(Randi)));
	};

	if (Weapon_Milten_Level_03 > 0)
	{
		Randi = r_max(Weapon_Milten_Level_03-1)+1;

		Wld_InsertItem	(ItRu_Milten_04_World,	ConcatStrings("FP_ITEM_MILTEN_03_0", IntToString(Randi)));
	};

	// Levelpart Four

	if (Weapon_Lester_Level_04 > 0)
	{
		Randi = r_max(Weapon_Lester_Level_04-1)+1;

		Wld_InsertItem	(ItMw_Lester_05_World,	ConcatStrings("FP_ITEM_LESTER_04_0", IntToString(Randi)));
	};

	if (Weapon_Gorn_Level_04 > 0)
	{
		Randi = r_max(Weapon_Gorn_Level_04-1)+1;

		Wld_InsertItem	(ItMw_Gorn_05_World,	ConcatStrings("FP_ITEM_GORN_04_0", IntToString(Randi)));
	};

	if (Weapon_Diego_Level_04 > 0)
	{
		Randi = r_max(Weapon_Diego_Level_04-1)+1;

		Wld_InsertItem	(ItRw_Diego_05_World,	ConcatStrings("FP_ITEM_DIEGO_04_0", IntToString(Randi)));
	};

	if (Weapon_Milten_Level_04 > 0)
	{
		Randi = r_max(Weapon_Milten_Level_04-1)+1;

		Wld_InsertItem	(ItRu_Milten_05_World,	ConcatStrings("FP_ITEM_MILTEN_04_0", IntToString(Randi)));
	};

	// Levelpart Five

	if (Weapon_Lester_Level_05 > 0)
	{
		Randi = r_max(Weapon_Lester_Level_05-1)+1;

		Wld_InsertItem	(ItMw_Lester_06_World,	ConcatStrings("FP_ITEM_LESTER_05_0", IntToString(Randi)));
	};

	if (Weapon_Gorn_Level_05 > 0)
	{
		Randi = r_max(Weapon_Gorn_Level_05-1)+1;

		Wld_InsertItem	(ItMw_Gorn_06_World,	ConcatStrings("FP_ITEM_GORN_05_0", IntToString(Randi)));
	};

	if (Weapon_Diego_Level_05 > 0)
	{
		Randi = r_max(Weapon_Diego_Level_05-1)+1;

		Wld_InsertItem	(ItRw_Diego_06_World,	ConcatStrings("FP_ITEM_DIEGO_05_0", IntToString(Randi)));
	};

	if (Weapon_Milten_Level_05 > 0)
	{
		Randi = r_max(Weapon_Milten_Level_05-1)+1;

		Wld_InsertItem	(ItRu_Milten_06_World,	ConcatStrings("FP_ITEM_MILTEN_05_0", IntToString(Randi)));
	};


	// Sekundärwaffen - Stufe 2

	Randi = r_max(Weapon_Diego_Second_01-1)+1;

	if (Randi < 10)
	{
		Wld_InsertItem	(ItMw_Diego_02_World,	ConcatStrings("FP_ITEM_DIEGO_0", IntToString(Randi)));
	}
	else
	{
		Wld_InsertItem	(ItMw_Diego_02_World,	ConcatStrings("FP_ITEM_DIEGO_", IntToString(Randi)));
	};

	Randi = r_max(Weapon_Milten_Second_01-1)+1;

	if (Randi < 10)
	{
		Wld_InsertItem	(ItMw_Milten_02_World,	ConcatStrings("FP_ITEM_MILTEN_0", IntToString(Randi)));
	}
	else
	{
		Wld_InsertItem	(ItMw_Milten_02_World,	ConcatStrings("FP_ITEM_MILTEN_", IntToString(Randi)));
	};

	// Sekundärwaffen - Stufe 3

	if (Weapon_Diego_Second_02 > 0)
	{
		Randi = r_max(Weapon_Diego_Second_02-1)+1;

		if (Randi < 10)
		{
			Wld_InsertItem	(ItMw_Diego_03_World,	ConcatStrings("FP_ITEM_DIEGO2_0", IntToString(Randi)));
		}
		else
		{
			Wld_InsertItem	(ItMw_Diego_03_World,	ConcatStrings("FP_ITEM_DIEGO2_", IntToString(Randi)));
		};
	};

	if (Weapon_Milten_Second_02 > 0)
	{
		Randi = r_max(Weapon_Milten_Second_02-1)+1;

		if (Randi < 10)
		{
			Wld_InsertItem	(ItMw_Milten_03_World,	ConcatStrings("FP_ITEM_MILTEN2_0", IntToString(Randi)));
		}
		else
		{
			Wld_InsertItem	(ItMw_Milten_03_World,	ConcatStrings("FP_ITEM_MILTEN2_", IntToString(Randi)));
		};
	};
};