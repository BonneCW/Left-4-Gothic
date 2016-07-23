FUNC VOID WitchSpawner ()
{
	// Witchs spawnen

	// Variable initialisieren

	var int Randi;

	// Jeder Levelbereich mit eigenen Spawnpoint und eigenem Limit (prinzipiell wahrscheinlich gleich, aber falls die Levelarchitektur doch mehr oder weniger Spawnpoints hergibt, lieber variabel halten

	// Levelpart #1 - Bisher nur das Demolevel

	if (Witch_Limit_Levelpart_One_Current < Witch_Limit_Levelpart_One_Max)
	{
		Randi = r_max(Witch_Spawnpoints_Levelpart_One_Max-1)+1;

		if (Randi == 1)
		&& (Witch_Spawnpoints_Levelpart_One_01 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_01_01");

			Witch_Spawnpoints_Levelpart_One_01 = TRUE;

			Witch_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 2)
		&& (Witch_Spawnpoints_Levelpart_One_02 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_01_02");

			Witch_Spawnpoints_Levelpart_One_02 = TRUE;

			Witch_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 3)
		&& (Witch_Spawnpoints_Levelpart_One_03 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_01_03");

			Witch_Spawnpoints_Levelpart_One_03 = TRUE;

			Witch_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 4)
		&& (Witch_Spawnpoints_Levelpart_One_04 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_01_04");

			Witch_Spawnpoints_Levelpart_One_04 = TRUE;

			Witch_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 5)
		&& (Witch_Spawnpoints_Levelpart_One_05 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_01_05");
	
			Witch_Spawnpoints_Levelpart_One_05 = TRUE;

			Witch_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 6)
		&& (Witch_Spawnpoints_Levelpart_One_06 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_01_06");

			Witch_Spawnpoints_Levelpart_One_06 = TRUE;

			Witch_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 7)
		&& (Witch_Spawnpoints_Levelpart_One_07 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_01_07");

			Witch_Spawnpoints_Levelpart_One_07 = TRUE;

			Witch_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 8)
		&& (Witch_Spawnpoints_Levelpart_One_08 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_01_08");

			Witch_Spawnpoints_Levelpart_One_08 = TRUE;

			Witch_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 9)
		&& (Witch_Spawnpoints_Levelpart_One_09 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_01_09");

			Witch_Spawnpoints_Levelpart_One_09 = TRUE;

			Witch_Limit_Levelpart_One_Current += 1;
		}
		else if (Randi == 10)
		&& (Witch_Spawnpoints_Levelpart_One_10 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_01_10");

			Witch_Spawnpoints_Levelpart_One_10 = TRUE;

			Witch_Limit_Levelpart_One_Current += 1;
		};

		WitchSpawner();
	}
	else if (Witch_Limit_Levelpart_Two_Current < Witch_Spawnpoints_Levelpart_Two_Max)
	{
		Randi = r_max(Witch_Spawnpoints_Levelpart_Two_Max-1)+1;

		if (Randi == 1)
		&& (Witch_Spawnpoints_Levelpart_Two_01 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_02_01");

			Witch_Spawnpoints_Levelpart_Two_01 = TRUE;

			Witch_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 2)
		&& (Witch_Spawnpoints_Levelpart_Two_02 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_02_02");

			Witch_Spawnpoints_Levelpart_Two_02 = TRUE;

			Witch_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 3)
		&& (Witch_Spawnpoints_Levelpart_Two_03 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_02_03");

			Witch_Spawnpoints_Levelpart_Two_03 = TRUE;

			Witch_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 4)
		&& (Witch_Spawnpoints_Levelpart_Two_04 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_02_04");

			Witch_Spawnpoints_Levelpart_Two_04 = TRUE;

			Witch_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 5)
		&& (Witch_Spawnpoints_Levelpart_Two_05 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_02_05");
	
			Witch_Spawnpoints_Levelpart_Two_05 = TRUE;

			Witch_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 6)
		&& (Witch_Spawnpoints_Levelpart_Two_06 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_02_06");

			Witch_Spawnpoints_Levelpart_Two_06 = TRUE;

			Witch_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 7)
		&& (Witch_Spawnpoints_Levelpart_Two_07 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_02_07");

			Witch_Spawnpoints_Levelpart_Two_07 = TRUE;

			Witch_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 8)
		&& (Witch_Spawnpoints_Levelpart_Two_08 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_02_08");

			Witch_Spawnpoints_Levelpart_Two_08 = TRUE;

			Witch_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 9)
		&& (Witch_Spawnpoints_Levelpart_Two_09 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_02_09");

			Witch_Spawnpoints_Levelpart_Two_09 = TRUE;

			Witch_Limit_Levelpart_Two_Current += 1;
		}
		else if (Randi == 10)
		&& (Witch_Spawnpoints_Levelpart_Two_10 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_02_10");

			Witch_Spawnpoints_Levelpart_Two_10 = TRUE;

			Witch_Limit_Levelpart_Two_Current += 1;
		};

		WitchSpawner();
	}
	else if (Witch_Limit_Levelpart_Three_Current < Witch_Spawnpoints_Levelpart_Three_Max)
	{
		Randi = r_max(Witch_Spawnpoints_Levelpart_Three_Max-1)+1;

		if (Randi == 1)
		&& (Witch_Spawnpoints_Levelpart_Three_01 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_03_01");

			Witch_Spawnpoints_Levelpart_Three_01 = TRUE;

			Witch_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 2)
		&& (Witch_Spawnpoints_Levelpart_Three_02 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_03_02");

			Witch_Spawnpoints_Levelpart_Three_02 = TRUE;

			Witch_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 3)
		&& (Witch_Spawnpoints_Levelpart_Three_03 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_03_03");

			Witch_Spawnpoints_Levelpart_Three_03 = TRUE;

			Witch_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 4)
		&& (Witch_Spawnpoints_Levelpart_Three_04 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_03_04");

			Witch_Spawnpoints_Levelpart_Three_04 = TRUE;

			Witch_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 5)
		&& (Witch_Spawnpoints_Levelpart_Three_05 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_03_05");
	
			Witch_Spawnpoints_Levelpart_Three_05 = TRUE;

			Witch_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 6)
		&& (Witch_Spawnpoints_Levelpart_Three_06 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_03_06");

			Witch_Spawnpoints_Levelpart_Three_06 = TRUE;

			Witch_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 7)
		&& (Witch_Spawnpoints_Levelpart_Three_07 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_03_07");

			Witch_Spawnpoints_Levelpart_Three_07 = TRUE;

			Witch_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 8)
		&& (Witch_Spawnpoints_Levelpart_Three_08 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_03_08");

			Witch_Spawnpoints_Levelpart_Three_08 = TRUE;

			Witch_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 9)
		&& (Witch_Spawnpoints_Levelpart_Three_09 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_03_09");

			Witch_Spawnpoints_Levelpart_Three_09 = TRUE;

			Witch_Limit_Levelpart_Three_Current += 1;
		}
		else if (Randi == 10)
		&& (Witch_Spawnpoints_Levelpart_Three_10 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_03_10");

			Witch_Spawnpoints_Levelpart_Three_10 = TRUE;

			Witch_Limit_Levelpart_Three_Current += 1;
		};

		WitchSpawner();
	}
	else if (Witch_Limit_Levelpart_Four_Current < Witch_Limit_Levelpart_Four_Max)
	{
		Randi = r_max(Witch_Spawnpoints_Levelpart_Four_Max-1)+1;

		if (Randi == 1)
		&& (Witch_Spawnpoints_Levelpart_Four_01 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_04_01");

			Witch_Spawnpoints_Levelpart_Four_01 = TRUE;

			Witch_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 2)
		&& (Witch_Spawnpoints_Levelpart_Four_02 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_04_02");

			Witch_Spawnpoints_Levelpart_Four_02 = TRUE;

			Witch_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 3)
		&& (Witch_Spawnpoints_Levelpart_Four_03 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_04_03");

			Witch_Spawnpoints_Levelpart_Four_03 = TRUE;

			Witch_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 4)
		&& (Witch_Spawnpoints_Levelpart_Four_04 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_04_04");

			Witch_Spawnpoints_Levelpart_Four_04 = TRUE;

			Witch_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 5)
		&& (Witch_Spawnpoints_Levelpart_Four_05 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_04_05");
	
			Witch_Spawnpoints_Levelpart_Four_05 = TRUE;

			Witch_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 6)
		&& (Witch_Spawnpoints_Levelpart_Four_06 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_04_06");

			Witch_Spawnpoints_Levelpart_Four_06 = TRUE;

			Witch_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 7)
		&& (Witch_Spawnpoints_Levelpart_Four_07 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_04_07");

			Witch_Spawnpoints_Levelpart_Four_07 = TRUE;

			Witch_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 8)
		&& (Witch_Spawnpoints_Levelpart_Four_08 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_04_08");

			Witch_Spawnpoints_Levelpart_Four_08 = TRUE;

			Witch_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 9)
		&& (Witch_Spawnpoints_Levelpart_Four_09 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_04_09");

			Witch_Spawnpoints_Levelpart_Four_09 = TRUE;

			Witch_Limit_Levelpart_Four_Current += 1;
		}
		else if (Randi == 10)
		&& (Witch_Spawnpoints_Levelpart_Four_10 == FALSE)
		{
			Wld_InsertNpc	(Witch,	"WITCH_04_10");

			Witch_Spawnpoints_Levelpart_Four_10 = TRUE;

			Witch_Limit_Levelpart_Four_Current += 1;
		};

		WitchSpawner();
	}
	else
	{
		return;
	};

	
};