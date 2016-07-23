FUNC VOID KoecherSpawner ()
{
	// Köcher spawnen

	// Variable initialisieren

	var int Randi;

	// Jeder Levelbereich mit eigenen Spawnpoint und eigenem Limit (prinzipiell wahrscheinlich gleich, aber falls die Levelarchitektur doch mehr oder weniger Spawnpoints hergibt, lieber variabel halten

	// Levelpart #1 - Bisher nur das Demolevel

	if (Koecher_Limit_Levelpart_One_Current < Koecher_Limit_Levelpart_One_Max)
	{
		Randi = r_max(Koecher_Spawnpoints_Levelpart_One_Max-1)+1;

		if (Randi == 1)
		&& (Koecher_Spawnpoints_Levelpart_One_01 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_01");

			Koecher_Spawnpoints_Levelpart_One_01 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 2)
		&& (Koecher_Spawnpoints_Levelpart_One_02 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_02");

			Koecher_Spawnpoints_Levelpart_One_02 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 3)
		&& (Koecher_Spawnpoints_Levelpart_One_03 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_03");

			Koecher_Spawnpoints_Levelpart_One_03 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 4)
		&& (Koecher_Spawnpoints_Levelpart_One_04 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_04");

			Koecher_Spawnpoints_Levelpart_One_04 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 5)
		&& (Koecher_Spawnpoints_Levelpart_One_05 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_05");
	
			Koecher_Spawnpoints_Levelpart_One_05 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 6)
		&& (Koecher_Spawnpoints_Levelpart_One_06 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_06");

			Koecher_Spawnpoints_Levelpart_One_06 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 7)
		&& (Koecher_Spawnpoints_Levelpart_One_07 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_07");

			Koecher_Spawnpoints_Levelpart_One_07 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 8)
		&& (Koecher_Spawnpoints_Levelpart_One_08 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_08");

			Koecher_Spawnpoints_Levelpart_One_08 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 9)
		&& (Koecher_Spawnpoints_Levelpart_One_09 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_09");

			Koecher_Spawnpoints_Levelpart_One_09 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 10)
		&& (Koecher_Spawnpoints_Levelpart_One_10 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_10");

			Koecher_Spawnpoints_Levelpart_One_10 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 11)
		&& (Koecher_Spawnpoints_Levelpart_One_11 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_11");

			Koecher_Spawnpoints_Levelpart_One_11 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 12)
		&& (Koecher_Spawnpoints_Levelpart_One_12 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_12");

			Koecher_Spawnpoints_Levelpart_One_12 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 13)
		&& (Koecher_Spawnpoints_Levelpart_One_13 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_13");

			Koecher_Spawnpoints_Levelpart_One_13 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 14)
		&& (Koecher_Spawnpoints_Levelpart_One_14 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_14");

			Koecher_Spawnpoints_Levelpart_One_14 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 15)
		&& (Koecher_Spawnpoints_Levelpart_One_15 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_15");

			Koecher_Spawnpoints_Levelpart_One_15 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 16)
		&& (Koecher_Spawnpoints_Levelpart_One_16 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_16");

			Koecher_Spawnpoints_Levelpart_One_16 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 17)
		&& (Koecher_Spawnpoints_Levelpart_One_17 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_17");

			Koecher_Spawnpoints_Levelpart_One_17 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 18)
		&& (Koecher_Spawnpoints_Levelpart_One_18 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_18");

			Koecher_Spawnpoints_Levelpart_One_18 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 19)
		&& (Koecher_Spawnpoints_Levelpart_One_19 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_19");

			Koecher_Spawnpoints_Levelpart_One_19 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 20)
		&& (Koecher_Spawnpoints_Levelpart_One_20 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_20");

			Koecher_Spawnpoints_Levelpart_One_20 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 21)
		&& (Koecher_Spawnpoints_Levelpart_One_21 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_21");

			Koecher_Spawnpoints_Levelpart_One_21 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 22)
		&& (Koecher_Spawnpoints_Levelpart_One_22 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_22");

			Koecher_Spawnpoints_Levelpart_One_22 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 23)
		&& (Koecher_Spawnpoints_Levelpart_One_23 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_23");

			Koecher_Spawnpoints_Levelpart_One_23 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 24)
		&& (Koecher_Spawnpoints_Levelpart_One_24 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_24");

			Koecher_Spawnpoints_Levelpart_One_24 = TRUE;

			Koecher_Limit_Levelpart_One_Current += 1;
		};

		KoecherSpawner();
	}
	else if (Koecher_Limit_Levelpart_Two_Current < Koecher_Spawnpoints_Levelpart_Two_Max)
	{
		Randi = r_max(Koecher_Spawnpoints_Levelpart_Two_Max-1)+1;

		if (Randi == 1)
		&& (Koecher_Spawnpoints_Levelpart_Two_01 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_01");

			Koecher_Spawnpoints_Levelpart_Two_01 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 2)
		&& (Koecher_Spawnpoints_Levelpart_Two_02 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_02");

			Koecher_Spawnpoints_Levelpart_Two_02 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 3)
		&& (Koecher_Spawnpoints_Levelpart_Two_03 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_03");

			Koecher_Spawnpoints_Levelpart_Two_03 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 4)
		&& (Koecher_Spawnpoints_Levelpart_Two_04 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_04");

			Koecher_Spawnpoints_Levelpart_Two_04 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 5)
		&& (Koecher_Spawnpoints_Levelpart_Two_05 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_05");
	
			Koecher_Spawnpoints_Levelpart_Two_05 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 6)
		&& (Koecher_Spawnpoints_Levelpart_Two_06 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_06");

			Koecher_Spawnpoints_Levelpart_Two_06 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 7)
		&& (Koecher_Spawnpoints_Levelpart_Two_07 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_07");

			Koecher_Spawnpoints_Levelpart_Two_07 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 8)
		&& (Koecher_Spawnpoints_Levelpart_Two_08 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_08");

			Koecher_Spawnpoints_Levelpart_Two_08 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 9)
		&& (Koecher_Spawnpoints_Levelpart_Two_09 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_09");

			Koecher_Spawnpoints_Levelpart_Two_09 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 10)
		&& (Koecher_Spawnpoints_Levelpart_Two_10 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_10");

			Koecher_Spawnpoints_Levelpart_Two_10 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 11)
		&& (Koecher_Spawnpoints_Levelpart_Two_11 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_11");

			Koecher_Spawnpoints_Levelpart_Two_11 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 12)
		&& (Koecher_Spawnpoints_Levelpart_Two_12 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_12");

			Koecher_Spawnpoints_Levelpart_Two_12 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 13)
		&& (Koecher_Spawnpoints_Levelpart_Two_13 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_13");

			Koecher_Spawnpoints_Levelpart_Two_13 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 14)
		&& (Koecher_Spawnpoints_Levelpart_Two_14 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_14");

			Koecher_Spawnpoints_Levelpart_Two_14 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 15)
		&& (Koecher_Spawnpoints_Levelpart_Two_15 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_15");

			Koecher_Spawnpoints_Levelpart_Two_15 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 16)
		&& (Koecher_Spawnpoints_Levelpart_Two_16 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_16");

			Koecher_Spawnpoints_Levelpart_Two_16 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 17)
		&& (Koecher_Spawnpoints_Levelpart_Two_17 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_17");

			Koecher_Spawnpoints_Levelpart_Two_17 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 18)
		&& (Koecher_Spawnpoints_Levelpart_Two_18 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_18");

			Koecher_Spawnpoints_Levelpart_Two_18 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 19)
		&& (Koecher_Spawnpoints_Levelpart_Two_19 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_19");

			Koecher_Spawnpoints_Levelpart_Two_19 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 20)
		&& (Koecher_Spawnpoints_Levelpart_Two_20 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_20");

			Koecher_Spawnpoints_Levelpart_Two_20 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 21)
		&& (Koecher_Spawnpoints_Levelpart_Two_21 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_21");

			Koecher_Spawnpoints_Levelpart_Two_21 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 22)
		&& (Koecher_Spawnpoints_Levelpart_Two_22 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_22");

			Koecher_Spawnpoints_Levelpart_Two_22 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 23)
		&& (Koecher_Spawnpoints_Levelpart_Two_23 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_23");

			Koecher_Spawnpoints_Levelpart_Two_23 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 24)
		&& (Koecher_Spawnpoints_Levelpart_Two_24 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_24");

			Koecher_Spawnpoints_Levelpart_Two_24 = TRUE;

			Koecher_Limit_Levelpart_Two_Current += 1;
		};

		KoecherSpawner();
	}
	else if (Koecher_Limit_Levelpart_Three_Current < Koecher_Spawnpoints_Levelpart_Three_Max)
	{
		Randi = r_max(Koecher_Spawnpoints_Levelpart_Three_Max-1)+1;

		if (Randi == 1)
		&& (Koecher_Spawnpoints_Levelpart_Three_01 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_01");

			Koecher_Spawnpoints_Levelpart_Three_01 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 2)
		&& (Koecher_Spawnpoints_Levelpart_Three_02 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_02");

			Koecher_Spawnpoints_Levelpart_Three_02 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 3)
		&& (Koecher_Spawnpoints_Levelpart_Three_03 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_03");

			Koecher_Spawnpoints_Levelpart_Three_03 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 4)
		&& (Koecher_Spawnpoints_Levelpart_Three_04 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_04");

			Koecher_Spawnpoints_Levelpart_Three_04 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 5)
		&& (Koecher_Spawnpoints_Levelpart_Three_05 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_05");
	
			Koecher_Spawnpoints_Levelpart_Three_05 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 6)
		&& (Koecher_Spawnpoints_Levelpart_Three_06 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_06");

			Koecher_Spawnpoints_Levelpart_Three_06 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 7)
		&& (Koecher_Spawnpoints_Levelpart_Three_07 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_07");

			Koecher_Spawnpoints_Levelpart_Three_07 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 8)
		&& (Koecher_Spawnpoints_Levelpart_Three_08 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_08");

			Koecher_Spawnpoints_Levelpart_Three_08 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 9)
		&& (Koecher_Spawnpoints_Levelpart_Three_09 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_09");

			Koecher_Spawnpoints_Levelpart_Three_09 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 10)
		&& (Koecher_Spawnpoints_Levelpart_Three_10 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_10");

			Koecher_Spawnpoints_Levelpart_Three_10 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 11)
		&& (Koecher_Spawnpoints_Levelpart_Three_11 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_11");

			Koecher_Spawnpoints_Levelpart_Three_11 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 12)
		&& (Koecher_Spawnpoints_Levelpart_Three_12 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_12");

			Koecher_Spawnpoints_Levelpart_Three_12 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 13)
		&& (Koecher_Spawnpoints_Levelpart_Three_13 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_13");

			Koecher_Spawnpoints_Levelpart_Three_13 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 14)
		&& (Koecher_Spawnpoints_Levelpart_Three_14 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_14");

			Koecher_Spawnpoints_Levelpart_Three_14 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 15)
		&& (Koecher_Spawnpoints_Levelpart_Three_15 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_15");

			Koecher_Spawnpoints_Levelpart_Three_15 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 16)
		&& (Koecher_Spawnpoints_Levelpart_Three_16 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_16");

			Koecher_Spawnpoints_Levelpart_Three_16 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 17)
		&& (Koecher_Spawnpoints_Levelpart_Three_17 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_17");

			Koecher_Spawnpoints_Levelpart_Three_17 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 18)
		&& (Koecher_Spawnpoints_Levelpart_Three_18 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_18");

			Koecher_Spawnpoints_Levelpart_Three_18 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 19)
		&& (Koecher_Spawnpoints_Levelpart_Three_19 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_19");

			Koecher_Spawnpoints_Levelpart_Three_19 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 20)
		&& (Koecher_Spawnpoints_Levelpart_Three_20 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_20");

			Koecher_Spawnpoints_Levelpart_Three_20 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 21)
		&& (Koecher_Spawnpoints_Levelpart_Three_21 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_21");

			Koecher_Spawnpoints_Levelpart_Three_21 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 22)
		&& (Koecher_Spawnpoints_Levelpart_Three_22 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_22");

			Koecher_Spawnpoints_Levelpart_Three_22 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 23)
		&& (Koecher_Spawnpoints_Levelpart_Three_23 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_23");

			Koecher_Spawnpoints_Levelpart_Three_23 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 24)
		&& (Koecher_Spawnpoints_Levelpart_Three_24 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_24");

			Koecher_Spawnpoints_Levelpart_Three_24 = TRUE;

			Koecher_Limit_Levelpart_Three_Current += 1;
		};

		KoecherSpawner();
	}
	else if (Koecher_Limit_Levelpart_Four_Current < Koecher_Limit_Levelpart_Four_Max)
	{
		Randi = r_max(Koecher_Spawnpoints_Levelpart_Four_Max-1)+1;

		if (Randi == 1)
		&& (Koecher_Spawnpoints_Levelpart_Four_01 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_01");

			Koecher_Spawnpoints_Levelpart_Four_01 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 2)
		&& (Koecher_Spawnpoints_Levelpart_Four_02 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_02");

			Koecher_Spawnpoints_Levelpart_Four_02 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 3)
		&& (Koecher_Spawnpoints_Levelpart_Four_03 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_03");

			Koecher_Spawnpoints_Levelpart_Four_03 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 4)
		&& (Koecher_Spawnpoints_Levelpart_Four_04 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_04");

			Koecher_Spawnpoints_Levelpart_Four_04 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 5)
		&& (Koecher_Spawnpoints_Levelpart_Four_05 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_05");
	
			Koecher_Spawnpoints_Levelpart_Four_05 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 6)
		&& (Koecher_Spawnpoints_Levelpart_Four_06 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_06");

			Koecher_Spawnpoints_Levelpart_Four_06 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 7)
		&& (Koecher_Spawnpoints_Levelpart_Four_07 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_07");

			Koecher_Spawnpoints_Levelpart_Four_07 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 8)
		&& (Koecher_Spawnpoints_Levelpart_Four_08 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_08");

			Koecher_Spawnpoints_Levelpart_Four_08 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 9)
		&& (Koecher_Spawnpoints_Levelpart_Four_09 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_09");

			Koecher_Spawnpoints_Levelpart_Four_09 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 10)
		&& (Koecher_Spawnpoints_Levelpart_Four_10 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_10");

			Koecher_Spawnpoints_Levelpart_Four_10 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 11)
		&& (Koecher_Spawnpoints_Levelpart_Four_11 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_11");

			Koecher_Spawnpoints_Levelpart_Four_11 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 12)
		&& (Koecher_Spawnpoints_Levelpart_Four_12 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_12");

			Koecher_Spawnpoints_Levelpart_Four_12 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 13)
		&& (Koecher_Spawnpoints_Levelpart_Four_13 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_13");

			Koecher_Spawnpoints_Levelpart_Four_13 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 14)
		&& (Koecher_Spawnpoints_Levelpart_Four_14 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_14");

			Koecher_Spawnpoints_Levelpart_Four_14 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 15)
		&& (Koecher_Spawnpoints_Levelpart_Four_15 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_15");

			Koecher_Spawnpoints_Levelpart_Four_15 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 16)
		&& (Koecher_Spawnpoints_Levelpart_Four_16 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_16");

			Koecher_Spawnpoints_Levelpart_Four_16 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 17)
		&& (Koecher_Spawnpoints_Levelpart_Four_17 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_17");

			Koecher_Spawnpoints_Levelpart_Four_17 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 18)
		&& (Koecher_Spawnpoints_Levelpart_Four_18 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_18");

			Koecher_Spawnpoints_Levelpart_Four_18 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 19)
		&& (Koecher_Spawnpoints_Levelpart_Four_19 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_19");

			Koecher_Spawnpoints_Levelpart_Four_19 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 20)
		&& (Koecher_Spawnpoints_Levelpart_Four_20 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_20");

			Koecher_Spawnpoints_Levelpart_Four_20 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 21)
		&& (Koecher_Spawnpoints_Levelpart_Four_21 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_21");

			Koecher_Spawnpoints_Levelpart_Four_21 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 22)
		&& (Koecher_Spawnpoints_Levelpart_Four_22 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_22");

			Koecher_Spawnpoints_Levelpart_Four_22 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 23)
		&& (Koecher_Spawnpoints_Levelpart_Four_23 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_23");

			Koecher_Spawnpoints_Levelpart_Four_23 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 24)
		&& (Koecher_Spawnpoints_Levelpart_Four_24 == FALSE)
		{
			Wld_InsertItem	(ItMi_Koecher,	"FP_ITEM_KOECHER_01_24");

			Koecher_Spawnpoints_Levelpart_Four_24 = TRUE;

			Koecher_Limit_Levelpart_Four_Current += 1;
		};

		KoecherSpawner();
	}
	else
	{
		return;
	};

	
};