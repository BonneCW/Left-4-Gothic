FUNC VOID PotionHealthSpawner ()
{
	// Heiltränke spawnen

	// Variable initialisieren

	var int Randi;

	// Jeder Levelbereich mit eigenen Spawnpoint und eigenem Limit (prinzipiell wahrscheinlich gleich, aber falls die Levelarchitektur doch mehr oder weniger Spawnpoints hergibt, lieber variabel halten

	// Levelpart #1 - Bisher nur das Demolevel

	if (PotionHealth_Limit_Levelpart_One_Current < PotionHealth_Limit_Levelpart_One_Max)
	{
		Randi = r_max(PotionHealth_Spawnpoints_Levelpart_One_Max-1)+1;

		if (Randi == 1)
		&& (PotionHealth_Spawnpoints_Levelpart_One_01 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_01");

			PotionHealth_Spawnpoints_Levelpart_One_01 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 2)
		&& (PotionHealth_Spawnpoints_Levelpart_One_02 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_02");

			PotionHealth_Spawnpoints_Levelpart_One_02 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 3)
		&& (PotionHealth_Spawnpoints_Levelpart_One_03 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_03");

			PotionHealth_Spawnpoints_Levelpart_One_03 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 4)
		&& (PotionHealth_Spawnpoints_Levelpart_One_04 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_04");

			PotionHealth_Spawnpoints_Levelpart_One_04 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 5)
		&& (PotionHealth_Spawnpoints_Levelpart_One_05 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_05");
	
			PotionHealth_Spawnpoints_Levelpart_One_05 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 6)
		&& (PotionHealth_Spawnpoints_Levelpart_One_06 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_06");

			PotionHealth_Spawnpoints_Levelpart_One_06 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 7)
		&& (PotionHealth_Spawnpoints_Levelpart_One_07 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_07");

			PotionHealth_Spawnpoints_Levelpart_One_07 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 8)
		&& (PotionHealth_Spawnpoints_Levelpart_One_08 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_08");

			PotionHealth_Spawnpoints_Levelpart_One_08 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 9)
		&& (PotionHealth_Spawnpoints_Levelpart_One_09 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_09");

			PotionHealth_Spawnpoints_Levelpart_One_09 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 10)
		&& (PotionHealth_Spawnpoints_Levelpart_One_10 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_10");

			PotionHealth_Spawnpoints_Levelpart_One_10 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 11)
		&& (PotionHealth_Spawnpoints_Levelpart_One_11 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_11");

			PotionHealth_Spawnpoints_Levelpart_One_11 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 12)
		&& (PotionHealth_Spawnpoints_Levelpart_One_12 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_12");

			PotionHealth_Spawnpoints_Levelpart_One_12 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 13)
		&& (PotionHealth_Spawnpoints_Levelpart_One_13 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_13");

			PotionHealth_Spawnpoints_Levelpart_One_13 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 14)
		&& (PotionHealth_Spawnpoints_Levelpart_One_14 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_14");

			PotionHealth_Spawnpoints_Levelpart_One_14 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 15)
		&& (PotionHealth_Spawnpoints_Levelpart_One_15 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_15");

			PotionHealth_Spawnpoints_Levelpart_One_15 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 16)
		&& (PotionHealth_Spawnpoints_Levelpart_One_16 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_16");

			PotionHealth_Spawnpoints_Levelpart_One_16 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 17)
		&& (PotionHealth_Spawnpoints_Levelpart_One_17 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_17");

			PotionHealth_Spawnpoints_Levelpart_One_17 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 18)
		&& (PotionHealth_Spawnpoints_Levelpart_One_18 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_18");

			PotionHealth_Spawnpoints_Levelpart_One_18 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 19)
		&& (PotionHealth_Spawnpoints_Levelpart_One_19 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_19");

			PotionHealth_Spawnpoints_Levelpart_One_19 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 20)
		&& (PotionHealth_Spawnpoints_Levelpart_One_20 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_20");

			PotionHealth_Spawnpoints_Levelpart_One_20 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 21)
		&& (PotionHealth_Spawnpoints_Levelpart_One_21 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_21");

			PotionHealth_Spawnpoints_Levelpart_One_21 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 22)
		&& (PotionHealth_Spawnpoints_Levelpart_One_22 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_22");

			PotionHealth_Spawnpoints_Levelpart_One_22 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 23)
		&& (PotionHealth_Spawnpoints_Levelpart_One_23 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_23");

			PotionHealth_Spawnpoints_Levelpart_One_23 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 24)
		&& (PotionHealth_Spawnpoints_Levelpart_One_24 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_24");

			PotionHealth_Spawnpoints_Levelpart_One_24 = TRUE;

			PotionHealth_Limit_Levelpart_One_Current += 1;
		};

		PotionHealthSpawner();
	}
	else if (PotionHealth_Limit_Levelpart_Two_Current < PotionHealth_Spawnpoints_Levelpart_Two_Max)
	{
		Randi = r_max(PotionHealth_Spawnpoints_Levelpart_Two_Max-1)+1;

		if (Randi == 1)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_01 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_01");

			PotionHealth_Spawnpoints_Levelpart_Two_01 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 2)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_02 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_02");

			PotionHealth_Spawnpoints_Levelpart_Two_02 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 3)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_03 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_03");

			PotionHealth_Spawnpoints_Levelpart_Two_03 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 4)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_04 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_04");

			PotionHealth_Spawnpoints_Levelpart_Two_04 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 5)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_05 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_05");
	
			PotionHealth_Spawnpoints_Levelpart_Two_05 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 6)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_06 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_06");

			PotionHealth_Spawnpoints_Levelpart_Two_06 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 7)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_07 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_07");

			PotionHealth_Spawnpoints_Levelpart_Two_07 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 8)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_08 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_08");

			PotionHealth_Spawnpoints_Levelpart_Two_08 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 9)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_09 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_09");

			PotionHealth_Spawnpoints_Levelpart_Two_09 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 10)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_10 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_10");

			PotionHealth_Spawnpoints_Levelpart_Two_10 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 11)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_11 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_11");

			PotionHealth_Spawnpoints_Levelpart_Two_11 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 12)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_12 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_12");

			PotionHealth_Spawnpoints_Levelpart_Two_12 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 13)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_13 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_13");

			PotionHealth_Spawnpoints_Levelpart_Two_13 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 14)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_14 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_14");

			PotionHealth_Spawnpoints_Levelpart_Two_14 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 15)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_15 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_15");

			PotionHealth_Spawnpoints_Levelpart_Two_15 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 16)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_16 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_16");

			PotionHealth_Spawnpoints_Levelpart_Two_16 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 17)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_17 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_17");

			PotionHealth_Spawnpoints_Levelpart_Two_17 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 18)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_18 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_18");

			PotionHealth_Spawnpoints_Levelpart_Two_18 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 19)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_19 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_19");

			PotionHealth_Spawnpoints_Levelpart_Two_19 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 20)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_20 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_20");

			PotionHealth_Spawnpoints_Levelpart_Two_20 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 21)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_21 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_21");

			PotionHealth_Spawnpoints_Levelpart_Two_21 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 22)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_22 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_22");

			PotionHealth_Spawnpoints_Levelpart_Two_22 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 23)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_23 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_23");

			PotionHealth_Spawnpoints_Levelpart_Two_23 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 24)
		&& (PotionHealth_Spawnpoints_Levelpart_Two_24 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_24");

			PotionHealth_Spawnpoints_Levelpart_Two_24 = TRUE;

			PotionHealth_Limit_Levelpart_Two_Current += 1;
		};

		PotionHealthSpawner();
	}
	else if (PotionHealth_Limit_Levelpart_Three_Current < PotionHealth_Spawnpoints_Levelpart_Three_Max)
	{
		Randi = r_max(PotionHealth_Spawnpoints_Levelpart_Three_Max-1)+1;

		if (Randi == 1)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_01 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_01");

			PotionHealth_Spawnpoints_Levelpart_Three_01 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 2)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_02 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_02");

			PotionHealth_Spawnpoints_Levelpart_Three_02 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 3)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_03 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_03");

			PotionHealth_Spawnpoints_Levelpart_Three_03 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 4)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_04 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_04");

			PotionHealth_Spawnpoints_Levelpart_Three_04 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 5)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_05 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_05");
	
			PotionHealth_Spawnpoints_Levelpart_Three_05 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 6)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_06 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_06");

			PotionHealth_Spawnpoints_Levelpart_Three_06 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 7)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_07 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_07");

			PotionHealth_Spawnpoints_Levelpart_Three_07 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 8)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_08 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_08");

			PotionHealth_Spawnpoints_Levelpart_Three_08 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 9)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_09 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_09");

			PotionHealth_Spawnpoints_Levelpart_Three_09 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 10)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_10 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_10");

			PotionHealth_Spawnpoints_Levelpart_Three_10 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 11)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_11 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_11");

			PotionHealth_Spawnpoints_Levelpart_Three_11 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 12)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_12 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_12");

			PotionHealth_Spawnpoints_Levelpart_Three_12 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 13)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_13 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_13");

			PotionHealth_Spawnpoints_Levelpart_Three_13 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 14)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_14 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_14");

			PotionHealth_Spawnpoints_Levelpart_Three_14 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 15)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_15 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_15");

			PotionHealth_Spawnpoints_Levelpart_Three_15 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 16)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_16 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_16");

			PotionHealth_Spawnpoints_Levelpart_Three_16 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 17)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_17 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_17");

			PotionHealth_Spawnpoints_Levelpart_Three_17 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 18)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_18 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_18");

			PotionHealth_Spawnpoints_Levelpart_Three_18 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 19)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_19 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_19");

			PotionHealth_Spawnpoints_Levelpart_Three_19 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 20)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_20 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_20");

			PotionHealth_Spawnpoints_Levelpart_Three_20 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 21)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_21 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_21");

			PotionHealth_Spawnpoints_Levelpart_Three_21 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 22)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_22 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_22");

			PotionHealth_Spawnpoints_Levelpart_Three_22 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 23)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_23 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_23");

			PotionHealth_Spawnpoints_Levelpart_Three_23 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 24)
		&& (PotionHealth_Spawnpoints_Levelpart_Three_24 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_24");

			PotionHealth_Spawnpoints_Levelpart_Three_24 = TRUE;

			PotionHealth_Limit_Levelpart_Three_Current += 1;
		};

		PotionHealthSpawner();
	}
	else if (PotionHealth_Limit_Levelpart_Four_Current < PotionHealth_Limit_Levelpart_Four_Max)
	{
		Randi = r_max(PotionHealth_Spawnpoints_Levelpart_Four_Max-1)+1;

		if (Randi == 1)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_01 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_01");

			PotionHealth_Spawnpoints_Levelpart_Four_01 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 2)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_02 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_02");

			PotionHealth_Spawnpoints_Levelpart_Four_02 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 3)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_03 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_03");

			PotionHealth_Spawnpoints_Levelpart_Four_03 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 4)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_04 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_04");

			PotionHealth_Spawnpoints_Levelpart_Four_04 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 5)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_05 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_05");
	
			PotionHealth_Spawnpoints_Levelpart_Four_05 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 6)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_06 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_06");

			PotionHealth_Spawnpoints_Levelpart_Four_06 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 7)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_07 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_07");

			PotionHealth_Spawnpoints_Levelpart_Four_07 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 8)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_08 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_08");

			PotionHealth_Spawnpoints_Levelpart_Four_08 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 9)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_09 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_09");

			PotionHealth_Spawnpoints_Levelpart_Four_09 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 10)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_10 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_10");

			PotionHealth_Spawnpoints_Levelpart_Four_10 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 11)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_11 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_11");

			PotionHealth_Spawnpoints_Levelpart_Four_11 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 12)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_12 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_12");

			PotionHealth_Spawnpoints_Levelpart_Four_12 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 13)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_13 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_13");

			PotionHealth_Spawnpoints_Levelpart_Four_13 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 14)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_14 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_14");

			PotionHealth_Spawnpoints_Levelpart_Four_14 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 15)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_15 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_15");

			PotionHealth_Spawnpoints_Levelpart_Four_15 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 16)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_16 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_16");

			PotionHealth_Spawnpoints_Levelpart_Four_16 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 17)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_17 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_17");

			PotionHealth_Spawnpoints_Levelpart_Four_17 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 18)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_18 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_18");

			PotionHealth_Spawnpoints_Levelpart_Four_18 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 19)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_19 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_19");

			PotionHealth_Spawnpoints_Levelpart_Four_19 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 20)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_20 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_20");

			PotionHealth_Spawnpoints_Levelpart_Four_20 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 21)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_21 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_21");

			PotionHealth_Spawnpoints_Levelpart_Four_21 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 22)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_22 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_22");

			PotionHealth_Spawnpoints_Levelpart_Four_22 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 23)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_23 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_23");

			PotionHealth_Spawnpoints_Levelpart_Four_23 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 24)
		&& (PotionHealth_Spawnpoints_Levelpart_Four_24 == FALSE)
		{
			Wld_InsertItem	(ItPo_Health,	"FP_ITEM_POTION_HEALTH_01_24");

			PotionHealth_Spawnpoints_Levelpart_Four_24 = TRUE;

			PotionHealth_Limit_Levelpart_Four_Current += 1;
		};

		PotionHealthSpawner();
	}
	else
	{
		return;
	};

	
};